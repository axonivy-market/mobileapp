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
            lowerCaseName.contains('mp4') ||
            lowerCaseName.contains('3gp') ||
            lowerCaseName.contains('webm') ||
            lowerCaseName.contains('flv') ||
            lowerCaseName.contains('wmv') ||
            lowerCaseName.contains('mov') ||
            lowerCaseName.contains('avi') ||
            lowerCaseName.contains('svg') ||
            lowerCaseName.contains('raw') ||
            lowerCaseName.contains('webp') ||
            lowerCaseName.contains('bmp') ||
            lowerCaseName.contains('tiff') ||
            lowerCaseName.contains('gif') ||
            lowerCaseName.contains('mkv'));
  }
}
