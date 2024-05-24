package helios.showcase;

public enum MaintananceType {
  FULL("Full Maintenance"), YEARLY("Yearly Maintenance"), INSPECTION("Inspection");

  private final String name;

  MaintananceType(String name) {
    this.name = name;
  }

  public String getName() {
    return name;
  }
}
