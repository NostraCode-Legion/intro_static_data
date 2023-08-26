part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
