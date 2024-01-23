import 'package:easy_localization/easy_localization.dart';

enum FilterType { all, expired }

mixin class SortType {}

enum SubSortType with SortType {
  mostImportant("sortType.mostImportant"),
  leastImportant("sortType.leastImportant"),
  aToZ("sortType.aToZ"),
  zToA("sortType.zToA"),
  mostUrgent("sortType.mostUrgent"),
  leastUrgent("sortType.leastUrgent"),
  newest("sortType.newest"),
  oldest("sortType.oldest");

  final String keyTypeName;
  const SubSortType(this.keyTypeName);
  @override
  String toString() {
    super.toString();
    return keyTypeName.tr();
  }
}

enum MainSortType with SortType {
  priority("sortType.priority",
      [SubSortType.mostImportant, SubSortType.leastImportant]),
  name("sortType.name", [SubSortType.aToZ, SubSortType.zToA]),
  expiryDate(
      "sortType.expiryDate", [SubSortType.mostUrgent, SubSortType.leastUrgent]),
  creationDate(
      "sortType.creationDate", [SubSortType.newest, SubSortType.oldest]);

  final String keyTypeName;
  final List<SubSortType> subTypeList;
  const MainSortType(this.keyTypeName, this.subTypeList);

  @override
  String toString() {
    super.toString();
    return keyTypeName.tr();
  }
}
