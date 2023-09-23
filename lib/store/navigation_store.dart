import 'package:mobx/mobx.dart';
part 'navigation_store.g.dart';

class NavigationStore = _NavigationStoreBase with _$NavigationStore;

abstract class _NavigationStoreBase with Store {
  @observable
  int index = 0;

  @action
  void setCurrentIndex(int index) {
    this.index = index;
  }
}
