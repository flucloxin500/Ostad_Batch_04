/// Module 05
/// class 02

// import 'package:flutter/material.dart';
// void main (){
//
//   ///give some widget
//   runApp(
//   /// Material app
//   //   MaterialApp(
//   //     home: Scaffold(
//   //       body: Center(
//   //         child: Text('Hello World.!'),
//   //       ),
//   //     ),
//   //   )
//   // );
//       MyApp()
//   );
// }
// /// creating new widget
//
// // class MyApp extends Widget{
// //   const MyApp({super.key});
// //
// //
// //   @override
// //   Element createElement() {
// //     //
// //     throw UnimplementedError();
// //   }
// //
// //
// // }
//
// /// stateless widget
// /// basic screen
// /// Hot reload => ctrl + s
// /// Hot restart => ctrl+shift+\
// class MyApp extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       /// checking debug mode
//       debugShowCheckedModeBanner: true,
//       home: Scaffold(
//         /// for AppBar
//         appBar: AppBar(
//           /// for getting title in appbar
//           title: Text('Home'),
//         ),
//         body: Center(
//           child: Text('Hello Future'),
//         ),
//       ),
//       /// for adding/changing app title
//       title: 'My App',
//     );
//
//   }
// }

import 'package:flutter/material.dart';
void main (){

  ///give some widget
  runApp(
    /// Material app
    //   MaterialApp(
    //     home: Scaffold(
    //       body: Center(
    //         child: Text('Hello World.!'),
    //       ),
    //     ),
    //   )
    // );
      MyApp()
  );
}
/// creating new widget

// class MyApp extends Widget{
//   const MyApp({super.key});
//
//
//   @override
//   Element createElement() {
//     //
//     throw UnimplementedError();
//   }
//
//
// }

/// stateless widget
/// basic screen
/// Hot reload => ctrl + s
/// Hot restart => ctrl+shift+\
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      /// checking debug mode
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /// for background color
        backgroundColor: Colors.blueGrey,
        /// for AppBar
        appBar: AppBar(
          /// for appbar backgropund color
          backgroundColor: Colors.amber,
          /// for changing position of appBar title
          centerTitle: true,
          /// for getting title in appbar
          title: Text('Home'),
          // /// add leading text
          // leading: Text('App'),
          /// add leading icon
          /// add leading color
          /// add leading size
          leading: Icon(Icons.adb_outlined,color: Colors.black,size: 20,),

        ),
        /// we can add more alignnment from body
        /// Center
        body:
        // Center()
        // /// creating textStyle
        // child: Text('Hello Future',style: TextStyle(
        //   /// changing text color
        //   color: Colors.blue,
        //       /// changing font size
        //       fontSize: 25 ,
        //   /// changing fontweight
        //   fontWeight: FontWeight.bold,
        //
        // ),),
        /// colomn add
        ///child: Column()
        ///for vertical is Coloumn
        /// for horizontal is ROw
        Column(
          children: [
            Text('Hello Future',style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),),
            Text('Hello Future',style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),),
            Text('Hello Future',style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),),
            Icon(Icons.adb_outlined),
          ],
        ),
      ),
      //),
      /// for adding/changing app title
      title: 'My App',
    );

  }
}