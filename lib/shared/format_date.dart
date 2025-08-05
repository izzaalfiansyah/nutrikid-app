import 'package:intl/intl.dart';

String formatDate(
  DateTime date, {
  bool? withTime,
  bool? onlyTime,
  String format = "d MMMM yyyy",
}) {
  final now = DateTime.now();

  date = date.add(Duration(hours: now.timeZoneOffset.inHours));

  if (withTime == true) {
    format += " HH:mm";
  }

  if (onlyTime == true) {
    format = "HH:mm";
  }

  final formatter = DateFormat(format, 'id_ID');
  return formatter.format(date);
}
