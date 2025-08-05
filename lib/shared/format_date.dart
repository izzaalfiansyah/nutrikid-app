import 'package:intl/intl.dart';

String formatDate(DateTime date, {bool? withTime}) {
  final now = DateTime.now();

  date = date.add(Duration(hours: now.timeZoneOffset.inHours));

  var format = "d MMMM yyyy";

  if (withTime == true) {
    format += " HH:mm";
  }

  final formatter = DateFormat(format, 'id_ID');
  return formatter.format(date);
}
