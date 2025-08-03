import 'package:intl/intl.dart';

String formatDate(DateTime date, {bool? withTime}) {
  var format = "d MMMM yyyy";

  if (withTime == true) {
    format += " HH:mm";
  }

  final formatter = DateFormat(format, 'id_ID');
  return formatter.format(date);
}
