//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package helios.showcase;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.primefaces.shaded.json.JSONArray;
import org.primefaces.shaded.json.JSONException;
import org.primefaces.shaded.json.JSONObject;

import showcase.Company;
import showcase.Elevator;
import showcase.Location;
import showcase.Material;


public class DataGenerator {
  List<Company> companyList = new ArrayList<Company>();
  List<Elevator> elevatorList = new ArrayList<Elevator>();
  List<Material> materialList = new ArrayList<Material>();
  File companyIndexFile;

  public DataGenerator() {
    JSONObject e2;

    // get material list
    String url = this.getClass().getResource("materials.json").toString();
    System.out.print("materialListFromJsonArray with url: " + url);

    try {
      e2 = readJsonFromUrl(url);
      this.materialList = this.materialListFromJsonArray(e2.getJSONArray("materials"));
    } catch (Exception e) {
      e.printStackTrace();
    }

    // get elevator list
    url = this.getClass().getResource("elevator.json").toString();
    System.out.print("elevatorListFromJsonArray with url: " + url);
    try {
      e2 = readJsonFromUrl(url);
      this.elevatorList = this.elevatorListFromJsonArray(e2.getJSONArray("elevator"));
    } catch (Exception var5) {
      var5.printStackTrace();
    }

    // get company list
    url = this.getClass().getResource("company.json").toString();
    System.out.print("companyListFromJsonArray with url: " + url);
    try {
      e2 = readJsonFromUrl(url);
      this.companyList = this.companyListFromJsonArray(e2.getJSONArray("company"));
    } catch (Exception var4) {
      var4.printStackTrace();
    }

    // get index file


  }

  public Elevator elevatorFromName(String name) {
    for (Elevator ele : elevatorList) {
      if (ele.getName() == name) {
        return ele;
      }
    }
    return null;
  }

  public Company companyFromResource() {
    Random ran = new Random();
    int companyIndex = ran.nextInt(6);
    return this.companyList.get(companyIndex);
  }

  private List<Company> companyListFromJsonArray(JSONArray jsonCompanyList) {
    ArrayList<Company> companies = new ArrayList<Company>();

    for (int i = 0; i < jsonCompanyList.length(); ++i) {
      JSONObject object = jsonCompanyList.getJSONObject(i);
      Company company = new Company();
      company.setName(object.getString("name"));
      company.setPhone(object.getString("phone"));
      company.setContactName(object.getString("contactName"));
      company.setLocation(this.getLocationFromJson(object.getJSONObject("location")));
      int elevatorIndex = object.getInt("elevator");
      company.setElevator(this.elevatorList.get(elevatorIndex));
      companies.add(company);
    }

    return companies;
  }

  private List<Elevator> elevatorListFromJsonArray(JSONArray jsonElevatorList) {
    ArrayList<Elevator> elevators = new ArrayList<Elevator>();
    DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
    DateFormat tf = new SimpleDateFormat("HH:mm");

    for (int i = 0; i < jsonElevatorList.length(); ++i) {
      JSONObject object = jsonElevatorList.getJSONObject(i);
      Elevator elevator = new Elevator();
      elevator.setName(object.getString("name"));
      elevator.setYoc(object.getString("yoc"));
      elevator.setType(object.getString("type"));
      // elevator.setDate(object.getString("date"));
      // elevator.setTime(object.getString("time"));
      elevator.setDate(df.format(new Date()));
      elevator.setTime(tf.format(new Date()));
      elevator.setDuration(object.getString("duration"));
      JSONArray jsonArr = object.getJSONArray("material");
      ArrayList<Material> materialList = new ArrayList<Material>();

      for (int j = 0; j < jsonArr.length(); ++j) {
        int materialIndex = Integer.parseInt(jsonArr.getString(j));
        materialList.add(this.materialList.get(materialIndex));
      }

      elevator.setMaterials(materialList);
      elevators.add(elevator);
    }

    return elevators;
  }

  private List<Material> materialListFromJsonArray(JSONArray jsonMaterialList) {
    ArrayList<Material> materials = new ArrayList<Material>();

    for (int i = 0; i < jsonMaterialList.length(); ++i) {
      JSONObject object = jsonMaterialList.getJSONObject(i);
      Material material = new Material();
      material.setName(object.getString("name"));
      material.setPrice(object.getString("price"));
      materials.add(material);
    }

    return materials;
  }

  private Location getLocationFromJson(JSONObject object) {
    Location location = new Location();
    location.setAddress1(object.getString("address1"));
    location.setAddress2(object.getString("address2"));
    location.setAddress3(object.getString("address3"));
    location.setLatitude(object.getString("lat"));
    location.setLongitude(object.getString("lng"));
    return location;
  }

  private static String readAll(Reader rd) throws IOException {
    StringBuilder sb = new StringBuilder();

    int cp;
    while ((cp = rd.read()) != -1) {
      sb.append((char) cp);
    }

    return sb.toString();
  }

  public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
    InputStream is = (new URL(url)).openStream();

    JSONObject var6;
    try {
      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
      String jsonText = readAll(rd);
      if (jsonText == null || jsonText.isEmpty()) {
        return null;
      }
      JSONObject json = new JSONObject(jsonText);
      var6 = json;
    } finally {
      is.close();
    }

    return var6;
  }
}
