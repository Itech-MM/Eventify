import 'package:flutter/material.dart';
import 'package:itech_eventify_app/commons/constants.dart';

Icon getIconByPartOfDay(int status) {
  switch (status) {
    case 1:
      return const Icon(Icons.wb_sunny, size: smallIconSize, color: Colors.orange);
    case 2:
      return const Icon(Icons.wb_cloudy, size: smallIconSize, color: Colors.blue);
    case 3:
      return const Icon(Icons.nights_stay, size: smallIconSize, color: Colors.purple);
    case 4:
      return const Icon(Icons.nightlight_round, size: smallIconSize, color: Colors.indigo);
    default:
      return const Icon(Icons.error, size: smallIconSize, color: Colors.red);
  }
}
