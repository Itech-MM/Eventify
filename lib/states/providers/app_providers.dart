
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itech_eventify_app/models/tasks/task.dart';
import 'package:itech_eventify_app/states/notifiers/common_notifiers.dart';
import 'package:itech_eventify_app/states/notifiers/home_inc/task_nofitier.dart';

final timeProvider = StateNotifierProvider<TimeNotifier, DateTime>((ref) => TimeNotifier());

final taskNotifierProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier();
});