import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/screens/add_new_product_screen.dart';
import 'package:http/http.dart';
import '../widgets/product_item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];
  bool inProgress = false;

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  void getProductList() async {
    inProgress = true;
    setState(() {});
    Response response = await get(
      Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'),
    );
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData['status'] == 'success') {
        for (Map<String, dynamic> productJson in responseData['data']) {
          productList.add(Product(
            productJson['_id'],
            productJson['_ProductName'],
            productJson['_ProductCode'],
            productJson['_UnitPrice'],
            productJson['_Qty'],
            productJson['_TotalPrice'],
          ));
        }
      }
    }
    inProgress = false;
    print(productList.length);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: [
          IconButton(onPressed: (){
            getProductList();
          }, icon: const Icon(Icons.refresh),),
        ],
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
      body: inProgress
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  product: productList[index],
                );
              },
              separatorBuilder: (_, __) => Divider(),
            ),
    );
  }
}

class Product {
  final String id;
  final String productName;
  final String productCode;
  final String unitPrice;
  final String quantity;
  final String totalPrice;

  Product(
    this.id,
    this.productName,
    this.productCode,
    this.unitPrice,
    this.quantity,
    this.totalPrice,
  );
}
