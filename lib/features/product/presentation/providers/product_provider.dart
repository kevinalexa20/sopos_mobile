import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/features/product/presentation/providers/states/product_notifier.dart';
import 'package:sopos_mobile/shared/domain/models/product/res/product_response.dart';
import 'package:sopos_mobile/shared/providers/dio_provider.dart';
import 'package:sopos_mobile/shared/services/product_service.dart';

final productServiceProvider = Provider<ProductService>((ref) {
  final dio = ref.watch(dioProvider);
  return ProductService(dio);
});

final productProvider =
    StateNotifierProvider<ProductNotifier, AsyncValue<List<ProductResponse>>>(
        (ref) {
  final productService = ref.watch(productServiceProvider);
  return ProductNotifier(productService);
});
