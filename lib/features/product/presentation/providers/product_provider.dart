import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/domain/models/product/product.dart';
import 'package:sopos_mobile/shared/providers/dio_provider.dart';
import 'package:sopos_mobile/shared/services/product_service.dart';

final productServiceProvider = Provider<ProductService>((ref) {
  final dio = ref.watch(dioProvider);
  return ProductService(dio);
});

final productsProvider =
    StateNotifierProvider<ProductsNotifier, AsyncValue<List<Product>>>((ref) {
  final productService = ref.watch(productServiceProvider);
  return ProductsNotifier(productService);
});

class ProductsNotifier extends StateNotifier<AsyncValue<List<Product>>> {
  final ProductService _productService;

  ProductsNotifier(this._productService) : super(AsyncValue.loading()) {
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      state = AsyncValue.loading();
      print('Starting to load products...');
      final products = await _productService.getAllProducts();
      print('Products loaded: $products');
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

  Future<void> addProduct(Product product) async {
    try {
      final newProduct = await _productService.createProduct(product);
      state.whenData((products) {
        state = AsyncValue.data([...products, newProduct]);
      });
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> updateProduct(int id, Product product) async {
    try {
      final updatedProduct = await _productService.updateProduct(id, product);
      state.whenData((products) {
        final index = products.indexWhere((p) => p.id == id);
        if (index != -1) {
          products[index] = updatedProduct;
          state = AsyncValue.data(List.from(products));
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
        state = AsyncValue.data(List.from(products));
      });
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
