import 'dart:math';

import 'package:dio/dio.dart';
import 'package:sopos_mobile/shared/domain/models/product/req/product_request.dart';
import 'package:sopos_mobile/shared/domain/models/product/res/product_response.dart';

class ProductService {
  final Dio _dio;

  ProductService(this._dio);

  //get all products
  Future<List<ProductResponse>> getAllProducts() async {
    try {
      final response = await _dio.get('/items');
      final responseData =
          response.data as Map<String, dynamic>; //response data into a map

      // return (response.data as List)
      //     .map((item) => ProductResponse.fromJson(item))
      //     .toList();
      if (responseData['success'] == true && responseData['data'] is List) {
        return (responseData['data'] as List)
            .map((item) =>
                ProductResponse.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } on DioException catch (e, stackTrace) {
      // throw Exception('Failed to load products: ${e.message}');
      Error.throwWithStackTrace(e, stackTrace);
      // return [];
    }
  }

  //create new product
  Future<ProductResponse> createProduct(ProductRequest product) async {
    try {
      final response = await _dio.post('/items', data: product.toJson());
      return ProductResponse.fromJson(response.data['data']);
    } on DioException catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  //update product
  Future<ProductResponse> updateProduct(int id, ProductRequest product) async {
    try {
      final response = await _dio.put('/items/$id', data: product.toJson());
      return ProductResponse.fromJson(response.data['data']);
    } on DioException catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  //delete product
  Future<void> deleteProduct(int id) async {
    try {
      await _dio.delete('/items/$id');
      print('Product id: $id deleted');
    } on DioException catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }
}
