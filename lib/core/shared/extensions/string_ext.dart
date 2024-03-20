extension StringExt on String? {
  bool get isEmptyOrNull => this == null || this!.isEmpty;
  bool get isNotEmptyOrNull => this != null && this!.isNotEmpty;
  bool get isContainImage {
    final String? lowerCaseName = this?.toLowerCase();

    return lowerCaseName != null &&
        (lowerCaseName.contains('jpg') ||
            lowerCaseName.contains('png') ||
            lowerCaseName.contains('heic') ||
            lowerCaseName.contains('jpeg') ||
            lowerCaseName.contains('mp4'));
  }
}
