// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainTodoController on _MainTodoControllerBase, Store {
  final _$todoListAtom = Atom(name: '_MainTodoControllerBase.todoList');

  @override
  ObservableList<TodoEntity> get todoList {
    _$todoListAtom.reportRead();
    return super.todoList;
  }

  @override
  set todoList(ObservableList<TodoEntity> value) {
    _$todoListAtom.reportWrite(value, super.todoList, () {
      super.todoList = value;
    });
  }

  final _$_MainTodoControllerBaseActionController =
      ActionController(name: '_MainTodoControllerBase');

  @override
  dynamic addTodo(String description) {
    final _$actionInfo = _$_MainTodoControllerBaseActionController.startAction(
        name: '_MainTodoControllerBase.addTodo');
    try {
      return super.addTodo(description);
    } finally {
      _$_MainTodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleTodo(int index) {
    final _$actionInfo = _$_MainTodoControllerBaseActionController.startAction(
        name: '_MainTodoControllerBase.toggleTodo');
    try {
      return super.toggleTodo(index);
    } finally {
      _$_MainTodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteTodo(int index) {
    final _$actionInfo = _$_MainTodoControllerBaseActionController.startAction(
        name: '_MainTodoControllerBase.deleteTodo');
    try {
      return super.deleteTodo(index);
    } finally {
      _$_MainTodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoList: ${todoList}
    ''';
  }
}
