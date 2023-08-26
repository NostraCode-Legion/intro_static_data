part of '_index.dart';

class ProductListData {
  final rxTitle = 'ProductList'.inj();

  final rxInt = 0.inj();

  final rxProductList = RM.inject<List<Product>>(() => []);

  final rxSelectedId = RM.inject<String>(() => '');
}
