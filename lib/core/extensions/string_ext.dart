extension StringExt on String? {
  bool get isEmptyOrNull => this == null || this!.isEmpty;
  bool get isNotEmptyOrNull => this != null && this!.isNotEmpty;

  bool get isContainImage {
    final String? lowerCaseName = this?.toLowerCase();
    if (lowerCaseName == null) {
      return false;
    }

    const List<String> mediaExtensions = [
      'jpg',
      'png',
      'heic',
      'jpeg',
      'mp4',
      '3gp',
      'webm',
      'flv',
      'wmv',
      'mov',
      'avi',
      'svg',
      'raw',
      'webp',
      'bmp',
      'tiff',
      'gif',
      'mkv'
    ];

    return mediaExtensions.any(lowerCaseName.contains);
  }
}
