part of '_index.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAppbar(),
      ),
      // floatingActionButton: const ProductFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _ct.addProductList();
              },
              child: const Text(
                "Create Product",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _ct.getReadAllProducts();
              },
              child: const Text(
                "Read All Products",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Update Product",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // _ct.deleteProductById(Product id),
              },
              child: const Text(
                "Delete  Product",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _ct.deleteProducts();
              },
              child: const Text(
                "Delete All Products",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
