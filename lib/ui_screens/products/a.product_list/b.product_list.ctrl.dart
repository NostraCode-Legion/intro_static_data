part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  // * Fungsi untuk me read productList

  List<Product> readAllProducts() {
    List<Product> products = [];
    products.add(Product.init());
    products.add(Product.init2());
    logx.i(products.toString());
    return products;
  }

  // * Menangkap fungsi untuk me read oleh productList

  getAllProducts() {
    _dt.rxProductList.st = readAllProducts();
  }

// * Memberi nilai id pada variabel rxSelectedId

  setSelectedId(String id) {
    _dt.rxSelectedId.st = id;
  }

// * Routing page memanfaatkan id agar sinkron tampilan di list dengan di detail

  select(String id) {
    setSelectedId(id);
    nav.to(Routes.productsDetail);
  }

// * fungsi delete sesuai id ( delete satu product)
  removeById(String id) {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == id);
  }

// * delete list
  deleteAllProducts() {
    for (var product in _dt.rxProductList.st) {
      removeById(product.id);
      nav.back();
      nav.back();
    }
  }
}
