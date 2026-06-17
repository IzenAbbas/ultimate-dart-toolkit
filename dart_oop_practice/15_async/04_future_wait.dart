void main() async {
  Future<String> task1 = Future.delayed(
    Duration(seconds: 2),
        () => "Task 1 Completed",
  );

  Future<String> task2 = Future.delayed(
    Duration(seconds: 3),
        () => "Task 2 Completed",
  );

  Future<String> task3 = Future.delayed(
    Duration(seconds: 1),
        () => "Task 3 Completed",
  );

  List<String> results = await Future.wait([
    task1,
    task2,
    task3,
  ]);

  print(results);

  String firstResult = await Future.any([
    task1,
    task2,
    task3,
  ]);

  print("First completed: $firstResult");
}