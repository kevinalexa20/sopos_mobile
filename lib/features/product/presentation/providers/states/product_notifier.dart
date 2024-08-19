import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/domain/models/product/req/product_request.dart';
import 'package:sopos_mobile/shared/domain/models/product/res/product_response.dart';
import 'package:sopos_mobile/shared/services/product_service.dart';

class ProductNotifier extends StateNotifier<AsyncValue<List<ProductResponse>>> {
  final ProductService _productService;

  ProductNotifier(this._productService) : super(AsyncValue.loading()) {
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      // state = AsyncValue.loading();
      final products = await _productService.getAllProducts();
      print('Products loaded: $products');
      state = AsyncValue.data(products);
      print('Starting to load products...');
      if (products.isNotEmpty) {
        print('Loaded ${products.length} products');
        state = AsyncValue.data(products);
      } else {
        print('No products loaded');
        state = AsyncValue.data([]);
      }
    } catch (e, stack) {
      print('Error loading products: $e');
      print('Stack trace: $stack');
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> addProduct(ProductRequest product) async {
    try {
      final newProduct = await _productService.createProduct(product);
      state.whenData((products) {
        state = AsyncValue.data([...products, newProduct]);
      });
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateProduct(int id, ProductRequest product) async {
    try {
      final updatedProduct = await _productService.updateProduct(id, product);
      state.whenData((products) {
        final index = products.indexWhere((p) => p.id == id);
        if (index != -1) {
          products[index] = updatedProduct;
          state = AsyncValue.data(List.of(products));
        }
      });
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> deleteProduct(int id) async {
    try {
      await _productService.deleteProduct(id);
      state.whenData((products) {
        products.removeWhere((p) => p.id == id);
        state = AsyncValue.data(List.of(products));
      });
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
