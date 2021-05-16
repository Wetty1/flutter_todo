import 'package:explaning/app/modules/todo/models/todo_model.dart';
import 'package:explaning/app/modules/todo/views/MainTodo/components/item_widget.dart';
import 'package:explaning/app/modules/todo/views/MainTodo/main_todo_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class MainTodoPage extends StatefulWidget {
  final String title;
  const MainTodoPage({Key? key, this.title = 'Todo List'}) : super(key: key);
  @override
  MainTodoPageState createState() => MainTodoPageState();
}

class MainTodoPageState extends State<MainTodoPage> {
  MainTodoController _controller = Modular.get<MainTodoController>();

  _dialog() {
    var model = TodoModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar item'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Novo item',
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    _controller.addTodo(model);
                    Navigator.pop(context);
                  },
                  child: Text('Salvar')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Observer(builder: (_) {
              return Text('${_controller.totalChecked}');
            }),
          ),
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: _controller.todoList.length,
            itemBuilder: (_, index) {
              var item = _controller.todoList[index];
              return ItemWidget(
                item: item,
                removeClicked: () => {_controller.deleteTodo(index)},
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _dialog();
          }),
    );
  }
}
