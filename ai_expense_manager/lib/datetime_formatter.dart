import 'package:intl/intl.dart';

class MyDateTimeFormatter {
  static final formatter = DateFormat('dd-MM-yyyy');

  static int getEpochTimeStamp(String date) {
    return formatter.parse(date).millisecondsSinceEpoch;
  }

  static DateTime getDateTime(String date) {
    return formatter.parse(date);
  }

  static String getFormattedDate(int timestamp) {
    return formatter.format(DateTime.fromMillisecondsSinceEpoch(timestamp));
  }

  static String getFormattedDateFromDateTime(DateTime timestamp) {
    return formatter.format(timestamp);
  }
}