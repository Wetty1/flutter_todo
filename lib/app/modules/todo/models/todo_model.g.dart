// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoModel on _TodoModelBase, Store {
  final _$idAtom = Atom(name: '_TodoModelBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$titleAtom = Atom(name: '_TodoModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkAtom = Atom(name: '_TodoModelBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$_TodoModelBaseActionController =
      ActionController(name: '_TodoModelBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_TodoModelBaseActionController.startAction(
        name: '_TodoModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_TodoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_TodoModelBaseActionController.startAction(
        name: '_TodoModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_TodoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
title: ${title},
check: ${check}
    ''';
  }
}
