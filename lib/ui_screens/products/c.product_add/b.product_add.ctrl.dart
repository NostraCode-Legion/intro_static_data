part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  // * Fungsi menambahkan menggunakan insert

  addProduct() {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, Product.random());
  }
}
