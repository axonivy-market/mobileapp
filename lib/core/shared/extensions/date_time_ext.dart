extension DateTimeExt on DateTime? {
  bool get isExpired => this?.isBefore(DateTime.now().toUtc()) ?? false;
}
