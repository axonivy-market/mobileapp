import '../util/resources/constants.dart';

extension SortTypeExt on List<SortType> {
  SubSortType? getSubTypeActive() {
    for (var type in this) {
      if (type is SubSortType) {
        return type;
      }
    }
    return null;
  }

  MainSortType? getMainSortType() {
    for (var type in this) {
      if (type is MainSortType) {
        return type;
      }
    }
    return null;
  }

  bool isSubTypeActive(int order) {
    for (var type in this) {
      if (type is SubSortType) {
        return type == getMainSortType()!.subTypeList[order];
      }
    }
    return false;
  }

  List<SubSortType> getSubTypes() {
    for (var type in this) {
      if (type is MainSortType) {
        return type.subTypeList;
      }
    }
    return [];
  }
}
