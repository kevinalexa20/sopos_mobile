import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/domain/models/product/req/product_request.dart';

class ProductFormDialog extends StatefulWidget {
  final void Function(ProductRequest) onSubmit;

  const ProductFormDialog({required this.onSubmit, Key? key}) : super(key: key);

  @override
  _ProductFormDialogState createState() => _ProductFormDialogState();
}

class _ProductFormDialogState extends State<ProductFormDialog> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  double price = 0;
  int categoryId = 1; // Default categoryId
  List<String> variants = [];
  String optionName = '';
  List<String> optionValues = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add New Product'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
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
              TextFormField(
                decoration: InputDecoration(labelText: 'Option Name'),
                onChanged: (value) {
                  setState(() {
                    optionName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Option Values (comma separated)'),
                onChanged: (value) {
                  setState(() {
                    optionValues = value.split(',');
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final newProduct = ProductRequest(
                      name: name,
                      price: price,
                      categoryId: categoryId,
                      variants: [], // This should be implemented for variants
                      options: ItemOptionRequest(
                        name: optionName,
                        options: optionValues,
                      ),
                    );
                    widget.onSubmit(newProduct);
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
