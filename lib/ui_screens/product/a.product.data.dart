part of '_index.dart';

class ProductData {
  final rxTitle = 'Product'.inj();

  final rxInt = 0.inj();

  final rxProductList = RM.injectFuture<List<Product>>(() => Future.value([]));

  final rxSelectedId = RM.inject<String>(() => '');
}
