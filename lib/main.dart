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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.account_balance_wallet_outlined,
          color: Colors.lime,
          size: 27,),
        centerTitle: true,
        title: Text('Homie',style: TextStyle(
          color: Colors.black54,
        ),),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hello '),
              Text('World.! '),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dear Practice')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hello '),
              Text('Class '),
            ],
          ),
          Image.asset('images/test.jpg',width: 120,height: 90,fit: BoxFit.cover,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network('https://www.bing.com/images/search?view=detailV2&ccid=1YM53mG1&id=BC6470C60B7A8615DA7155B539C4A122275DF649&thid=OIP.1YM53mG10H_U25iPjop83QHaEo&mediaurl=https%3a%2f%2fwww.thewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fnature-images..jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.d58339de61b5d07fd4db988f8e8a7cdd%3frik%3dSfZdJyKhxDm1VQ%26pid%3dImgRaw%26r%3d0&exph=1800&expw=2880&q=images&simid=608024970036858528&FORM=IRPRST&ck=D0378EAF346D6D862EE51853DCE82E23&selectedIndex=0&idpp=overlayview&ajaxhist=0&ajaxserp=0',
                width: 200,
                height: 200,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('To register, tap on '),
              Text('Sign Up'),
            ],
          ),
          RichText(text:
          TextSpan(
            style: TextStyle(fontSize: 20,color: Colors.lime),
            children: [
              TextSpan(
                  text: 'Hello World!', style: TextStyle(color: Colors.cyanAccent)
              ),
              TextSpan(
                  text: 'Namee', style: TextStyle(color: Colors.deepOrange)),
              TextSpan(
                  text: 'gfhg',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w200)),
            ],
          ),
          ),
          RichText(text: TextSpan(
              text: 'To register, tap on ',
              children: [
                TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    )
                )
              ]
          ))
        ],
      ),
    );
  }

}
void main (){
  runApp(MyApp());

}