part of '_index.dart';

class ProductCtrl {
  init() {
    logxx.i(ProductCtrl, '...');

    //! Panggil read di init
    // getReadAllProducts();
  }

  action() => _dt.rxInt.setState((s) => s + 1);

  // * ---------------- READ ------------------

  getReadAllProducts() {
    _dt.rxProductList.stateAsync = readAllProducts();
  }

  Future<List<Product>> readAllProducts() async {
    // await Future.delayed(1.seconds);
    List<Product> products = [
      Product.init(),
      // Product.init2(),
    ];
    logx.i(products.toString());
    return products;
  }

  // * ---------------- CREATE ------------------

  addProductList() async => await createProduct();

  Future<void> createProduct() async {
    // await Future.delayed(1.seconds);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, Product.random());
    logx.wtf(_dt.rxProductList.st.toString());
    logx.i(_dt.rxProductList.st.length.toString());
  }

  // * ---------------- DELETE ------------------

  // * Delete ALl Products

  removeById(String id) {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == id);
  }

  deleteProducts() {
    for (var product in _dt.rxProductList.st) {
      removeById(product.id);
      logx.e(product.toString());
    }
    nav.back();
  }

// * Delete Product

  deleteProductById() async {
    // await Future.delayed(1.seconds);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == 00000.toString());
  }
}
