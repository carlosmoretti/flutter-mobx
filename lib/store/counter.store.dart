import 'package:mobx/mobx.dart';
part 'counter.store.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int counter;

  @action
  incrementCounter() {
    counter++;
  }
}