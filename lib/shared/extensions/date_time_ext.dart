extension DateTimeExt on DateTime? {
  bool get isExpired => this?.isBefore(DateTime.now().toUtc()) ?? false;

  bool get isNow {
    DateTime now = DateTime.now();
    return this?.year == now.year &&
        this?.month == now.month &&
        this?.day == now.day;
  }
}

extension DateTimeFormatting on DateTime {
  String get formatDateYearWithFourNumber {
    return "${_twoDigits(day)}.${_twoDigits(month)}.$year";
  }

  String get formatDateYearWithTwoNumber {
    return "${_twoDigits(day)}.${_twoDigits(month)}.${_twoDigits(year % 100)}";
  }
}

String _twoDigits(int n) {
  if (n >= 10) {
    return "$n";
  }
  return "0$n";
}
