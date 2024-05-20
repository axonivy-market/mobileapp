package helios.showcase;

import java.text.DecimalFormat;
import java.util.List;

import showcase.Material;
import showcase.Result;

public class Helper {

  public static void applyMaterialResult(List<Material> materials, Result result) {
    if (result.getSelectedList() == null || "".equals(result.getSelectedList())) {
      return;
    }

    String[] selectedList = result.getSelectedList().split(",");
    int index = 0;
    for (int i = 0; i < selectedList.length; ++i) {
      index = Integer.parseInt(selectedList[i]);
      result.getUsedMaterials().add(materials.get(index));
    }
  }

  public static void calculatePrice(Result result) {
    if (result == null)
      return;
    DecimalFormat formatter = new DecimalFormat("#0.00");
    result.setTaxPrice(formatter.format(tax(result)));
    result.setTotalPrice(formatter.format(total(result)));
    result.setSubTotalPrice(formatter.format(subToTal(result)));
    result.setTotalWorkedTimePrice(formatter.format(totalWorkedTime(result.getWorkedTime())));
  }

  static public double totalWorkedTime(String time) {
    String[] tm = time.split(":");
    double minute = Double.parseDouble(tm[0]);
    double second = Double.parseDouble(tm[1]);
    return (minute / 60 + second / 3600) * 150;
  }


  static public double subToTal(Result result) {
    if (result == null) {
      return 0;
    }

    double subTotal = 0;
    subTotal += totalWorkedTime(result.getWorkedTime());
    for (Material material : result.getUsedMaterials()) {
      try {
        subTotal += Double.parseDouble(material.getPrice());
      } catch (Exception e) {
        subTotal += 0;
      }
    }
    return subTotal;
  }

  static public double total(Result result) {
    return subToTal(result) * 1.1;
  }

  static public double tax(Result result) {
    return subToTal(result) * 0.1;
  }
}
