import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/add_new_product_screen.dart';

import '../screens/product_list_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Select Action'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Edit'),
                      leading: Icon(Icons.edit),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AddNewProductScreen()),
                        );
                      },
                    ),
                    Divider(
                      height: 0,
                    ),
                    ListTile(
                      title: Text('Delete'),
                      leading: Icon(Icons.delete_outline),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            });
      },
      leading: Image.network(
        '',
        width: 80,
      ),
      title: Text('Product name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Product Code'),
              SizedBox(width: 24,),
              Text('Total Price'),
            ],
          ),
          Text('Product Description')
        ],
      ),
      trailing: Text('\$120'),
    );
  }
}
