import 'package:flutter/material.dart';
import 'package:sopos_mobile/shared/domain/models/product/req/product_request.dart';
import 'package:sopos_mobile/shared/domain/models/product/res/product_response.dart';

class ProductFormDialog extends StatefulWidget {
  final ProductResponse? initialProduct;
  final void Function(ProductRequest) onSubmit;

  const ProductFormDialog(
      {this.initialProduct, required this.onSubmit, Key? key})
      : super(key: key);

  @override
  _ProductFormDialogState createState() => _ProductFormDialogState();
}

class _ProductFormDialogState extends State<ProductFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late double price;
  late int categoryId;
  List<String> optionValues = [];

  @override
  void initState() {
    super.initState();
    // Inisialisasi form dengan produk yang ada, jika ada
    if (widget.initialProduct != null) {
      name = widget.initialProduct!.name;
      price = widget.initialProduct!.price;
      categoryId = widget.initialProduct!.category.id;
      optionValues = widget.initialProduct!.itemOptions.isNotEmpty
          ? widget.initialProduct!.itemOptions[0].options
          : [];
    } else {
      name = '';
      price = 0;
      categoryId = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
          widget.initialProduct == null ? 'Add New Product' : 'Edit Product'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: name,
                decoration: InputDecoration(labelText: 'Product Name'),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                validator: (value) =>
                    value!.isEmpty ? 'Please enter product name' : null,
              ),
              TextFormField(
                initialValue: price.toString(),
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    price = double.tryParse(value) ?? 0;
                  });
                },
                validator: (value) =>
                    value!.isEmpty ? 'Please enter price' : null,
              ),
              TextFormField(
                initialValue: categoryId.toString(),
                decoration: InputDecoration(labelText: 'Category ID'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    categoryId = int.tryParse(value) ?? 1;
                  });
                },
                validator: (value) =>
                    value!.isEmpty ? 'Please enter category ID' : null,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final updatedProduct = ProductRequest(
                      name: name,
                      price: price,
                      categoryId: categoryId,
                      variants: [], // This should be implemented for variants
                      options: ItemOptionRequest(
                        name: "Temperature",
                        options: optionValues,
                      ),
                    );
                    widget.onSubmit(updatedProduct);
                    Navigator.of(context).pop();
                  }
                },
                child:
                    Text(widget.initialProduct == null ? 'Submit' : 'Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
