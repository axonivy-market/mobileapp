extension ListExt on List? {
  bool get isEmptyOrNull => this == null || this!.isEmpty;
  bool get isNotEmptyOrNull => this != null && this!.isNotEmpty;
}
