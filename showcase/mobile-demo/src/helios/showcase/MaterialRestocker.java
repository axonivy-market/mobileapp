package helios.showcase;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.primefaces.shaded.json.JSONArray;
import org.primefaces.shaded.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.query.TaskQuery;
import showcase.Material;


public class MaterialRestocker {
  private File restockerFile;
  private ArrayList<Material> restockMaterials;

  public MaterialRestocker() {
    // get restocker file
    try {
      String currentActivator = Ivy.session().getSessionUserName();
      String fileName = "restocker_" + currentActivator + ".json";
      String dirName = "restocks";
      File restockDir = new File(dirName);
      if (!restockDir.exists()) {
        restockDir.mkdirs();
      }

      restockerFile = new File(restockDir + "/" + fileName);
      if (!restockerFile.exists()) {
        restockerFile.createNewFile();
      }
      Ivy.log().debug("restock path: " + restockerFile.getAbsolutePath());
    } catch (Exception var3) {
      var3.printStackTrace();

    }

    // get company list
    try {
      JSONObject e2 = DataGenerator.readJsonFromUrl(restockerFile.toURI().toString());
      if (e2 != null) {
        this.restockMaterials = this.getRestockMaterialsFromResource(e2.getJSONArray("restock_materials"));
      } else {
        restockMaterials = new ArrayList<>();
      }

    } catch (Exception var4) {
      var4.printStackTrace();
      restockMaterials = new ArrayList<>();
    }
  }

  public boolean restockFormExisted() {
    String currentUser = Ivy.session().getSessionUserName();

    TaskQuery subQquery = Ivy.wf().getTaskQueryExecutor().createTaskQuery().where().state().isEqual(TaskState.CREATED)
        .or().state().isEqual(TaskState.DELAYED).or().state().isEqual(TaskState.SUSPENDED).or().state()
        .isEqual(TaskState.PARKED).or().state().isEqual(TaskState.RESUMED);

    TaskQuery taskQuery = Ivy.wf().getTaskQueryExecutor().createTaskQuery();
    taskQuery.where().name().isEqual("Restock car").and().activatorName().isEqual("#" + currentUser).and(subQquery);

    List<ITask> taskList = Ivy.wf().getTaskQueryExecutor().getResults(taskQuery);
    Ivy.log().debug("current user: " + currentUser + " taskList size: " + taskList.size());
    return (taskList != null && taskList.size() > 0);
  }

  public ArrayList<Material> getRestockMaterialFromResource() {
    return restockMaterials;
  }

  private ArrayList<Material> getRestockMaterialsFromResource(JSONArray jsonMaterialList) {
    ArrayList<Material> materials = new ArrayList<Material>();

    for (int i = 0; i < jsonMaterialList.length(); ++i) {
      JSONObject object = jsonMaterialList.getJSONObject(i);
      Material material = new Material();
      material.setName(object.getString("name"));
      material.setRestockQuantity(object.getInt("restockQuantity"));

      materials.add(material);
    }

    return materials;
  }

  public List<Material> plusRestockMaterial(ArrayList<Material> newRestockMaterials) {
    List<Material> unrecordedMaterial = new ArrayList<Material>();

    boolean updated = false;
    for (Material newMaterial : newRestockMaterials) {
      updated = false;
      for (Material recordedMaterial : restockMaterials) {
        if (newMaterial.getName().equalsIgnoreCase(recordedMaterial.getName())) {
          recordedMaterial.setRestockQuantity(recordedMaterial.getRestockQuantity() + 1);
          updated = true;
          break;
        }
      }
      if (updated == false) {
        newMaterial.setRestockQuantity(1);
        unrecordedMaterial.add(newMaterial);
      }
    }

    if (unrecordedMaterial.size() > 0) {
      restockMaterials.addAll(unrecordedMaterial);
    }

    writeRestockMaterialToFile(restockMaterials);

    return restockMaterials;
  }

  public List<Material> minusRestockMaterial(ArrayList<Material> restockedMaterials) {
    restockMaterials = new ArrayList<Material>();
    writeRestockMaterialToFile(restockMaterials);

    return restockMaterials;
  }

  private void writeRestockMaterialToFile(ArrayList<Material> materials) {
    try {
      if (!this.restockerFile.exists()) {
        this.restockerFile.createNewFile();
      }

      Gson gson = new Gson();
      JsonArray jsonArray = gson.toJsonTree(restockMaterials).getAsJsonArray();

      JsonObject jsonObj = new JsonObject();
      jsonObj.add("restock_materials", jsonArray);
      String jsonString = jsonObj.toString();

      FileWriter fw = new FileWriter(this.restockerFile);
      BufferedWriter bw = new BufferedWriter(fw);
      bw.write(jsonString);
      bw.close();
      fw.close();
    } catch (IOException var10) {
      var10.printStackTrace();
    }
  }

}
