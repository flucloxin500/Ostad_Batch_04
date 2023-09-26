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
        body: Container(
          decoration: BoxDecoration(
              color: Colors.greenAccent
          ),
          child: Scrollbar(
            thickness: 20,
            radius: Radius.circular(10),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              children: [
                Icon(Icons.add_business),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      border: Border.all(color: Colors.amber,width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.add)),
                Icon(Icons.ac_unit),
                Icon(Icons.account_circle),
                Icon(Icons.add_business_outlined),
                Icon(Icons.account_balance_wallet_outlined),
                Icon(Icons.abc),
                Icon(Icons.adb_rounded),
                Icon(Icons.accessibility_new_sharp),
                Icon(Icons.add_business),
                Icon(Icons.account_balance_wallet),
                Icon(Icons.accessible_rounded),
                Icon(Icons.add_card_outlined),
                Icon(Icons.accessible_rounded),
                Icon(Icons.add_chart_outlined),
              ],
            ),
          ),
        )
      /*
      Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen
        ),
        child: Scrollbar(

        child: SingleChildScrollView(

          // direction of scroll area
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),

                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black38,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(48)),

                ),
                child: ListTile(
                  title: Text('Username'),
                  subtitle: Text('user@gmnail.com'),
                  leading: Icon(Icons.adb_outlined),
                  trailing: Icon(Icons.arrow_right_alt),
                  onTap: (){
                    print('Last Title pressed');
                  },
                ),
              ),
              Divider(
                height: 5,
                thickness: 1,
                color: Colors.black38,
                endIndent: 25,
                indent: 16,
              ),
              ListTile(
                title: Text('Username'),
                subtitle: Text('user@gmnail.com'),
                leading: Icon(Icons.adb_outlined),
                trailing: Icon(Icons.arrow_right_alt),
                onTap: (){
                  print('Last Title pressed');
                },
              ),
              ListTile(
                title: Text('Username'),
                subtitle: Text('user@gmnail.com'),
                leading: Icon(Icons.adb_outlined),
                trailing: Icon(Icons.arrow_right_alt),

                onTap: (){
                  print('Last Title pressed');
                },
              ),
              Divider(
                height: 5,
                thickness: 1,
                color: Colors.pink,
                endIndent: 25,
                indent: 16,
              ),
              ListTile(
                title: Text('Username'),
                subtitle: Text('user@gmnail.com'),
                leading: Icon(Icons.adb_outlined),
                trailing: Icon(Icons.arrow_right_alt),
                onTap: (){
                  print('Last Title pressed');
                },
              ),
          ],
        ),
    ),
        ),

     ),*/
    );

  }

}
void main (){
  runApp(MyApp());

}