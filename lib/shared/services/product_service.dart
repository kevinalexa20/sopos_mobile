import 'package:dio/dio.dart';
import 'package:sopos_mobile/shared/domain/models/product/product.dart';

class ProductService {
  final Dio _dio;

  ProductService(this._dio);

  // Create a new product
  Future<Product> createProduct(Product product) async {
    try {
      final response = await _dio.post('/items', data: product.toJson());
      if (response.statusCode == 201) {
        return Product.fromJson(response.data['data']);
      } else {
        throw Exception('Failed to create product: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw Exception('Failed to create product: ${e.message}');
    }
  }

// Get all products
  Future<List<Product>> getAllProducts() async {
    try {
      final response = await _dio.get('/items');
      print('Response data: ${response.data}');

      if (response.data is Map<String, dynamic>) {
        final responseData = response.data as Map<String, dynamic>;
        if (responseData['success'] == true &&
            responseData.containsKey('data') &&
            responseData['data'] is List) {
          return (responseData['data'] as List)
              .map((item) => Product.fromJson(item as Map<String, dynamic>))
              .toList();
        }
      }

      throw Exception('Unexpected response format');
    } on DioError catch (e) {
      print('DioError in getAllProducts: ${e.message}');
      throw Exception('Failed to get products: ${e.message}');
    } catch (e) {
      print('Unexpected error in getAllProducts: $e');
      throw Exception('An unexpected error occurred: $e');
    }
  }

  // Get a single product by ID
  Future<Product> getProductById(int id) async {
    try {
      final response = await _dio.get('/items/$id');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data['data']);
      } else {
        throw Exception('Failed to get product: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw Exception('Failed to get product: ${e.message}');
    }
  }

  // Update an existing product
  Future<Product> updateProduct(int id, Product product) async {
    try {
      final response = await _dio.put('/items/$id', data: product.toJson());
      if (response.statusCode == 200) {
        return Product.fromJson(response.data['data']);
      } else {
        throw Exception('Failed to update product: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw Exception('Failed to update product: ${e.message}');
    }
  }

  // Delete a product
  Future<void> deleteProduct(int id) async {
    try {
      final response = await _dio.delete('/items/$id');
      if (response.statusCode != 200 && response.statusCode != 204) {
        throw Exception('Failed to delete product: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw Exception('Failed to delete product: ${e.message}');
    }
  }
}
