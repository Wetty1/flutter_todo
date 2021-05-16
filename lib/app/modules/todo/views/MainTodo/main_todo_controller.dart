import 'package:explaning/app/modules/todo/models/todo_model.dart';
import 'package:mobx/mobx.dart';
part 'main_todo_controller.g.dart';

class MainTodoController = _MainTodoControllerBase with _$MainTodoController;

abstract class _MainTodoControllerBase with Store {
  @observable
  ObservableList<TodoModel> todoList =
      [TodoModel(title: "Fazer uma lista")].asObservable();

  @computed
  int get totalChecked => todoList.where((element) => element.check).length;

  @action
  addTodo(TodoModel newModel) {
    this.todoList.add(newModel);
  }

  @action
  deleteTodo(int index) {
    print(index);
    this.todoList.removeAt(index);
  }
}
