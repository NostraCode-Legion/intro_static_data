part of '_index.dart';

abstract class Data {
  static Injected<ProductData> get product => _productData;
}

final _productData = RM1.inj(ProductData(), Ctrl.product.init);
