import 'package:explaning/app/modules/todo/views/MainTodo/main_todo_controller.dart';
import 'package:explaning/app/shared/models/todo.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class MainTodoPage extends StatefulWidget {
  final String title;
  const MainTodoPage({Key key, this.title = 'Todo List'}) : super(key: key);
  @override
  MainTodoPageState createState() => MainTodoPageState();
}

class MainTodoPageState extends State<MainTodoPage> {
  MainTodoController _mainTodoController = Modular.get<MainTodoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  _mainTodoController.addTodo("Estudar Flutter");
                })
          ],
        ),
        body: Observer(builder: (_) {
          if (_mainTodoController.todoList.length < 1) return Text("Vazio");

          return ListView.builder(
              itemCount: _mainTodoController.todoList.length,
              itemBuilder: (_, index) {
                var todoEntity = _mainTodoController.todoList[index];
                print(todoEntity.describe());
                return ListTile(
                  title: Text('${todoEntity.description}'),
                  leading: Checkbox(
                    value: todoEntity.isCheck,
                    onChanged: (_) => {_mainTodoController.toggleTodo(index)},
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () => _mainTodoController.deleteTodo(index)),
                );
              });
        }));
  }
}
