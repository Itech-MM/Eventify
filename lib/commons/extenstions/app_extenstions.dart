
import 'package:intl/intl.dart';

extension DateTimeExtenstion on DateTime{
  String formattedDateTime(){
    return '${hour.twoDigit()}:${minute.twoDigit()}:${second.twoDigit()}';
  }
  String formatDate(String pattern){
    return DateFormat(pattern).format(this);
  }
  int getPartOfDayStatus(){
    if (hour >= 5 && hour < 12) {
      return 1;
    } else if (hour >= 12 && hour < 17) {
      return 2;
    } else if (hour >= 17 && hour < 21) {
      return 3;
    } else {
      return 4;
    }
  }
  String getPartOfDay(){
    if (hour >= 5 && hour < 12) {
      return 'Morning';
    } else if (hour >= 12 && hour < 17) {
      return 'Afternoon';
    } else if (hour >= 17 && hour < 21) {
      return 'Evening';
    } else {
      return 'Night';
    }
  }
}

extension StringExtenstions on int{
  String twoDigit() {
    return toString().padLeft(2, '0');
  }
}