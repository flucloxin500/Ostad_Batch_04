import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

/// Stack , Positioned , align
/// Responsive layout builder : resposive builder
/// Device Preview : device_preview
/// Size(height,width) : sizer
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: ResponsiveBuilder(
          builder: (context, sizeInformation) {
            return Center(
                child: Text(
                    sizeInformation.deviceScreenType.toString(),
                  style: TextStyle(
                    fontSize: 15.sp
                  ),
                ));
          },
        ));
  }
}
