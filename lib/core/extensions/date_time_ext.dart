extension DateTimeExt on DateTime? {
  bool get isExpired => this?.isBefore(DateTime.now().toUtc()) ?? false;

  bool get isNow {
    DateTime now = DateTime.now();
    return this?.year == now.year &&
        this?.month == now.month &&
        this?.day == now.day;
  }

  String get lastUpdatedFormatted {
    if (this == null) {
      return "";
    }
    if (isNow) {
      return "${_twoDigits(this!.hour)}:${_twoDigits(this!.minute)}";
    } else {
      return "${_twoDigits(this!.day)}.${_twoDigits(this!.month)} ${_twoDigits(this!.hour)}:${_twoDigits(this!.minute)}";
    }
  }
}

extension DateTimeFormatting on DateTime {
  String get formatDateYearWithFourNumber {
    return "${_twoDigits(day)}.${_twoDigits(month)}.$year";
  }

  String formatDateYearWithTwoNumber(DateTime dateTime) {
    String formattedDate =
        "${_twoDigits(dateTime.day)}.${_twoDigits(dateTime.month)}.${_twoDigits(dateTime.year % 100)}";
    return formattedDate;
  }
}

String _twoDigits(int n) {
  if (n >= 10) {
    return "$n";
  }
  return "0$n";
}
