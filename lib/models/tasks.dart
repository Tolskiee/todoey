class Task {
  String name;
  bool isDone = false;

  Task(String name) {
    this.name = name;
  }

  void toggleDone() {
    isDone = !isDone;
  }
}
