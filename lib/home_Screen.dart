import 'package:flutter/material.dart';

/// MediaQuery

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          // Flexible(
          //   flex: 3,
          //   fit: FlexFit.tight,
          //   child: Container(
          //     color: Colors.amberAccent,
          //     width: MediaQuery.sizeOf(context).width,
          //   ),
          // ),
          // Flexible(
          //   flex: 5,
          //
          //   child: Column(
          //     children: [
          //       Flexible(
          //         child: Container(
          //           color: Colors.red,
          //           //height: 100,
          //           width: MediaQuery.sizeOf(context).width,
          //         ),
          //       ),
          //       SizedBox(height: 50,)
          //     ],
          //   ),
          // ),
          // Flexible(
          //   flex: 1,
          //   child: Row(
          //     children: [
          //       Flexible(
          //         flex: 2,
          //         child: Container(
          //           color: Colors.cyanAccent,
          //         ),
          //       ),
          //       Flexible(
          //         flex: 7,
          //         child: Container(
          //           color: Colors.grey,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Flexible(
          //   flex: 5,
          //   fit: FlexFit.tight,
          //   child: Container(
          //     color: Colors.purple,
          //     //height: 100,
          //     width: MediaQuery.sizeOf(context).width,
          //   ),
          // ),
          Container(
            color: Colors.black,
            height: 100,
            width: MediaQuery.sizeOf(context).width,
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.lightBlue,
              width: double.infinity,
              alignment: Alignment.center,
              child: SizedBox(
                  width: 100,
                  height: 40,
                  child: FittedBox(
                    child: Text(
                      'vdcgdfjgbdsfkfvhbfvhvdshg ',
                      maxLines: 1,
                    ),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
            ),
          )

          ///Ratio := Width : Height
          /// Default Ratio := 16/16
          /// 100:100
          // AspectRatio(
          //     aspectRatio: 16 / 5,
          //     child: Container(
          //       color: Colors.red,
          //       child: Image.network(
          //           'https://th.bing.com/th/id/OIP.0iqvqUM-_MntTZp4CMBaigHaEK?pid=ImgDet&rs=1',
          //       fit: BoxFit.cover,),
          //
          //     )),
          // Container(
          //   width: MediaQuery.sizeOf(context).width,
          //   height : MediaQuery.sizeOf(context).width,
          //   color: Colors.cyanAccent,
          //   child: FractionallySizedBox(
          //     widthFactor: .99,
          //     heightFactor: .67,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          // )
          // SizedBox(
          //   width: MediaQuery.of(context).size.width / 10,
          //   height: 100,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // )
        ],
      ),
    );
  }
}
