import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/product/presentation/widgets/product_form_dialog.dart';
import 'package:sopos_mobile/shared/domain/models/product/res/product_response.dart';
import 'package:sopos_mobile/shared/shared.dart';
import '../providers/product_provider.dart';

class ProductPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsyncValue = ref.watch(productProvider);
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
          return products.isEmpty
              ? Center(child: Text('No products available'))
              : ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle: Text('Rp. ${product.price}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              _showEditDialog(context, ref, product);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              _confirmDelete(context, ref, product.id);
                            },
                          ),
                        ],
                      ),
                      onTap: () => _showProductDetails(context, product),
                    );
                  },
                );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          return Center(child: Text('Error: $error'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showAddDialog(context, ref),
      ),
    );
  }

  void _showProductDetails(BuildContext context, ProductResponse product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(product.name),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Price: Rp. ${product.price}'),
            Text('Category: ${product.category.name}'),
            SizedBox(height: 8),
            Text('Variants:'),
            ...product.itemVariants
                .map((v) => Text('- ${v.name}: Rp. ${v.price}')),
            SizedBox(height: 8),
            Text('Options:'),
            ...product.itemOptions
                .map((o) => Text('- ${o.name}: ${o.options.join(", ")}')),
          ],
        ),
      ),
    );
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return ProductFormDialog(
          onSubmit: (newProduct) {
            ref.read(productProvider.notifier).addProduct(newProduct);
          },
        );
      },
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, int productId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Product'),
          content: Text('Are you sure you want to delete this product?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                ref.read(productProvider.notifier).deleteProduct(productId);
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _showEditDialog(
      BuildContext context, WidgetRef ref, ProductResponse product) {
    showDialog(
      context: context,
      builder: (context) {
        return ProductFormDialog(
          initialProduct: product,
          onSubmit: (updatedProduct) {
            ref
                .read(productProvider.notifier)
                .updateProduct(product.id, updatedProduct);
          },
        );
      },
    );
  }
}
