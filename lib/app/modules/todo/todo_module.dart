import 'package:explaning/app/modules/todo/views/MainTodo/main_todo_controller.dart';
import 'package:explaning/app/modules/todo/views/MainTodo/main_todo_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TodoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => MainTodoController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MainTodoPage()),
  ];
}
