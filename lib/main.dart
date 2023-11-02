import 'package:flutter/material.dart';
import 'package:flutter_project/screens/product_list_screen.dart';

void main (){
  runApp(CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
    );
  }
}

