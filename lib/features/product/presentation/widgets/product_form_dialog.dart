import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/domain/models/product/product.dart';

class ProductFormDialog extends StatefulWidget {
  final Product? initialProduct;
  final Function(Product) onSubmit;

  const ProductFormDialog(
      {Key? key, this.initialProduct, required this.onSubmit})
      : super(key: key);

  @override
  _ProductFormDialogState createState() => _ProductFormDialogState();
}

class _ProductFormDialogState extends State<ProductFormDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  // Lists for variants and options
  List<ItemVariant> variants = [];
  List<String> options = [];

  @override
  void initState() {
    super.initState();
    if (widget.initialProduct != null) {
      nameController.text = widget.initialProduct!.name;
      priceController.text = widget.initialProduct!.price.toString();
      categoryController.text = widget.initialProduct!.categoryId.toString();
      variants = widget.initialProduct!.variants;
      // options = widget.initialProduct!.options.options;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
          Text(widget.initialProduct == null ? 'Add Product' : 'Edit Product'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) =>
                    value!.isEmpty ? 'Name is required' : null,
              ),
              TextFormField(
                controller: priceController,
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Price is required' : null,
              ),
              TextFormField(
                controller: categoryController,
                decoration: InputDecoration(labelText: 'Category ID'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Category ID is required' : null,
              ),
              const SizedBox(height: 16),
              // Variants section
              Text('Variants:', style: TextStyle(fontWeight: FontWeight.bold)),
              ...variants.map((variant) => ListTile(
                    title: Text(variant.name),
                    subtitle: Text('Price: ${variant.price}'),
                  )),
              ElevatedButton(
                onPressed: _addVariantDialog,
                child: Text('Add Variant'),
              ),
              const SizedBox(height: 16),
              // Options section
              Text('Options:', style: TextStyle(fontWeight: FontWeight.bold)),
              ...options.map((option) => ListTile(
                    title: Text(option),
                  )),
              ElevatedButton(
                onPressed: _addOptionDialog,
                child: Text('Add Option'),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              final product = Product(
                id: widget.initialProduct?.id ?? 0,
                name: nameController.text,
                price: int.parse(priceController.text),
                categoryId: int.parse(categoryController.text),
                createdAt: widget.initialProduct?.createdAt ?? DateTime.now(),
                updatedAt: DateTime.now(),
                category: Category(
                    id: int.parse(categoryController.text), name: 'Category'),
                variants: variants, options: [],
                // options: options,
              );
              widget.onSubmit(product);
              Navigator.of(context).pop();
            }
          },
          child: Text(widget.initialProduct == null ? 'Add' : 'Update'),
        ),
      ],
    );
  }

  void _addVariantDialog() {
    final variantNameController = TextEditingController();
    final variantPriceController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Variant'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: variantNameController,
                decoration: InputDecoration(labelText: 'Variant Name'),
              ),
              TextField(
                controller: variantPriceController,
                decoration: InputDecoration(labelText: 'Variant Price'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final variant = ItemVariant(
                  id: 0, // This will be assigned by backend
                  name: variantNameController.text,
                  price: int.parse(variantPriceController.text),
                  itemId: 0, // Replace with actual itemId
                );
                setState(() {
                  variants.add(variant);
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _addOptionDialog() {
    final optionController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Option'),
          content: TextField(
            controller: optionController,
            decoration: InputDecoration(labelText: 'Option'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  options.add(optionController.text);
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
