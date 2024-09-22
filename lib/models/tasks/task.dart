class Task {
  final int id;
  final int type;
  final String name;
  final String description;
  final int progress;
  final int status;

  Task(
      {required this.id,
      required this.type,
      required this.name,
      required this.description,
      required this.progress,
      required this.status});

  Task copyWith(
      {int? id,
      int? type,
      String? name,
      String? description,
      int? progress,
      int? status}) {
    return Task(
        id: id ?? this.id,
        type: type ?? this.type,
        name: name ?? this.name,
        description: description ?? this.description,
        progress: progress ?? this.progress,
        status: status ?? this.status);
  }
}
