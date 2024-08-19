import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/product/presentation/widgets/product_form_dialog.dart';
import 'package:sopos_mobile/shared/domain/models/product/product.dart';
import 'package:sopos_mobile/shared/shared.dart';
import '../providers/product_provider.dart';

class ProductPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsyncValue = ref.watch(productsProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: MyAppbar(
        leading: BackButton(
          onPressed: () => context.go('/dashboard'),
        ),
        themeMode: themeMode,
        themeNotifier: themeNotifier,
      ),
      body: productsAsyncValue.when(
        data: (products) {
          print('Rendering ${products.length} products');
          return products.isEmpty
              ? Center(child: Text('No products available'))
              : ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle: Text(
                          'Rp. ${product.price}'), // Assuming price is in cents
                      trailing: Text(product.category.name),
                      onTap: () => _showProductDetails(context, product),
                    );
                  },
                );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          print('Error in ProductPage: $error');
          return Center(child: Text('Error: $error'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showAddDialog(context, ref),
      ),
    );
  }

  void _showProductDetails(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(product.name),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Price: \$${product.price / 100}'),
            Text('Category: ${product.category.name}'),
            SizedBox(height: 8),
            Text('Variants:'),
            ...product.variants
                .map((v) => Text('- ${v.name}: \$${v.price / 100}')),
            SizedBox(height: 8),
            Text('Options:'),
            ...product.options
                .map((o) => Text('- ${o.name}: ${o.options.join(", ")}')),
          ],
        ),
      ),
    );
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    // Implement dialog to add new product
    // showDialog(
    //   context: context,
    //   builder: (context) => ProductFormDialog(
    //     onSubmit: (product) {
    //       ref.read(productsProvider.notifier).addProduct(product);
    //     },
    //   ),
    // );
  }
}
