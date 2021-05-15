import 'package:explaning/app/shared/models/todo.dart';
import 'package:mobx/mobx.dart';
import 'dart:math';
part 'main_todo_controller.g.dart';

class MainTodoController = _MainTodoControllerBase with _$MainTodoController;

abstract class _MainTodoControllerBase with Store {
  @observable
  ObservableList<TodoEntity> todoList = [
    TodoEntity(id: '1', description: 'ajeitar esta lista', isCheck: false)
  ].asObservable();

  @action
  addTodo(String description) {
    int newId = new Random().nextInt(999999);
    todoList.add(
        TodoEntity(id: '$newId', description: description, isCheck: false));
    print(description);
  }

  @action
  toggleTodo(int index) {
    print(index);
    print(this.todoList[index].describe());
    TodoEntity todoFinded = this.todoList[index];
    todoFinded.isCheck = !todoFinded.isCheck;
    this.todoList[index] = todoFinded;
  }

  @action
  deleteTodo(int index) {
    todoList.removeAt(index);
  }
}
