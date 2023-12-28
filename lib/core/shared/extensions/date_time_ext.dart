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
