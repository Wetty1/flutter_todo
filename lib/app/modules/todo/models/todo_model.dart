import 'dart:math';

import 'package:mobx/mobx.dart';
part 'todo_model.g.dart';

class TodoModel = _TodoModelBase with _$TodoModel;

abstract class _TodoModelBase with Store {
  _TodoModelBase({this.id = '1', this.title = "", this.check = false}) {
    this.id = _generateNewId();
  }

  @observable
  String id;

  @observable
  String title;

  @observable
  bool check;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;

  String _generateNewId() {
    return new Random().nextInt(999999).toString();
  }
}
