import 'package:flutter/material.dart';
import 'package:flutter_project/screens/add_new_product_screen.dart';
import '../widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AddNewProductScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ProductItem();
        },
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}
