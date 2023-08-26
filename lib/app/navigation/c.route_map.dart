part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----

    Routes.productsList: (RouteData data) => const ProductListView(),
    Routes.productsDetail: (RouteData data) => const ProductDetailView(),
    Routes.productsAdd: (RouteData data) => const ProductAddView(),
    Routes.productsEdit: (RouteData data) => const ProductEditView(),
  };
}
