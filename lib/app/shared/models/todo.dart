class TodoEntity {
  String id;
  String description;
  bool isCheck;

  TodoEntity({this.id, this.description, this.isCheck});

  String describe() {
    return '$id: $description, $isCheck';
  }
}
