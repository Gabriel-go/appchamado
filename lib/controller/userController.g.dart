// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on UserControllerBase, Store {
  final _$idAtom = Atom(name: 'UserControllerBase.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$UserControllerBaseActionController =
      ActionController(name: 'UserControllerBase');

  @override
  bool logar(String pLogin, String pSenha) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.logar');
    try {
      return super.logar(pLogin, pSenha);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic logOff() {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.logOff');
    try {
      return super.logOff();
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id}
    ''';
  }
}
