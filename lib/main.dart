import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad App',
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,

                /// adding anything in container, used child
                child: Text('Hello',style: TextStyle(
                  color: Colors.pink,
                ),),
                alignment: Alignment.center,
                /// for all side
                margin: EdgeInsets.all(16),
                //padding: EdgeInsets.all(10),
                /// for any single side
                //padding: EdgeInsets.only(top: 10, bottom: 15),
                /// for symmetrical
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                // for decoration colors can't be add outside of the decoration

                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.black,
                      width: 2 ),
                  // for whole side
                  ///borderRadius: BorderRadius.circular(15),
                  //for single side
                  borderRadius: BorderRadius.only
                    (bottomLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  /// for all kind of shape
                  //shape: BoxShape.circle
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                        ),
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                    onLongPress: (){
                      print('Email Deleted');
                    },
                    onPressed: () {
                      print('Email has been sent');
                    }, child: Text('Send Email')),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.pink
                ),
                onPressed: (){
                  print('Resend Email');
                }, child: Text('Resend'),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              OutlinedButton(

                  onLongPress: (){
                    print('Longpress on outlined button');
                  },
                  onPressed: (){},
                  child: Text('Outlined Button')),
              // input
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  //maxLines: 5,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      fillColor: Colors.blue,
                      filled: true,
                      hintText: 'Enter your email address',
                      hintStyle: TextStyle(
                          color: Colors.white70
                      ),
                      suffixIcon: Icon(Icons.email_outlined, color: Colors.white70,),
                      label: Text('Email address'),
                      labelStyle: TextStyle(
                          color: Colors.white70
                      )
                  ),
                ),
              ),
              /*SizedBox(
                  height: 10.0,
                  width: 10,
                ),*/
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // wrap with sizedbox is used for padding
                  obscureText: true,
                  controller: TextEditingController(),
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.green,
                    filled: true,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                        color: Colors.white70
                    ),
                    suffixIcon: Icon(Icons.password, color: Colors.white70,),
                    label: Text('Password'),
                    labelStyle: TextStyle(
                        color: Colors.white
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white)
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green)
                    ),
                  ),
                ),
              ),

            ],
          )
      ),
    );
  }

}
void main (){
  runApp(MyApp());

}