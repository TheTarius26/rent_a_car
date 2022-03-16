String calculateStartAndEndDate(DateTime start, DateTime end) {
  // return n hours/days/months/years
  final difference = end.difference(start);
  final differenceInHours = difference.inHours;
  final differenceInDays = difference.inDays;
  final differenceInMonths = difference.inDays ~/ 30;
  final differenceInYears = difference.inDays ~/ 365;
  if (differenceInHours < 24) {
    return '$differenceInHours hours';
  } else if (differenceInDays < 30) {
    return '$differenceInDays days';
  } else if (differenceInMonths < 12) {
    return '$differenceInMonths months';
  } else {
    return '$differenceInYears years';
  }
}
