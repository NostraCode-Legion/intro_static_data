part of '_index.dart';

class ProductDetailCtrl {
  init() => logxx.i(ProductDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  // * Fungsi untuk me read productDetail

  Product readProductDetail() {
    final index = _dt.rxProductList.st.indexWhere((element) => element.id == _dt.rxSelectedId.st);
    return _dt.rxProductList.st[index];
  }

  // * Menangkap fungsi untuk me read oleh productList

  getProductDetail() {
    _dt.rxProduct.st = readProductDetail();
  }

// * fungsi delete sesuai id ( delete satu product)

  removeById() {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == _dt.rxProduct.st?.id);
    nav.back();
    nav.back();
  }

  // deleteProduct() {
  //   _dt.rxProduct.st = removeById();
  //   logx.e(_dt.rxProduct.st.toString());
  // }
}
