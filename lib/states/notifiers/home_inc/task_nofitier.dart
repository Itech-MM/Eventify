import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itech_eventify_app/models/tasks/task.dart';

class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier() : super([]);
  void addTask(Task task) {
    state = [...state, task];
  }

  void removeTask(int taskId) {
    state = state.where((task) => task.id != taskId).toList();
  }

  void updateTask(Task updatedTask) {
    state = state.map((task) {
      return task.id == updatedTask.id ? updatedTask : task;
    }).toList();
  }

  void updateTaskStatus(int taskId, int status) {
    state = state.map((task) {
      return task.id == taskId ? task.copyWith(status: status) : task;
    }).toList();
  }
}
