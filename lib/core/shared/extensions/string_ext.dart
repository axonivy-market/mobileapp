extension StringExt on String? {
  bool get isEmptyOrNull => this == null || this!.isEmpty;
  bool get isNotEmptyOrNull => this != null && this!.isNotEmpty;
  bool get isContainImage =>
      this != null &&
      (this!.contains('JPG') ||
          this!.contains('png') ||
          this!.contains('HEIC') ||
          this!.contains('jpg') ||
          this!.contains('jpeg'));
}
