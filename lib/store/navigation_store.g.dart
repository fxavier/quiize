// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NavigationStore on _NavigationStoreBase, Store {
  late final _$indexAtom =
      Atom(name: '_NavigationStoreBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$_NavigationStoreBaseActionController =
      ActionController(name: '_NavigationStoreBase', context: context);

  @override
  void setCurrentIndex(int index) {
    final _$actionInfo = _$_NavigationStoreBaseActionController.startAction(
        name: '_NavigationStoreBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$_NavigationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
