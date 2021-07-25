import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/WideScreen/MainPageWide.dart';
import 'package:portfolio/WideScreen/Widgets/TopBar.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(fontFamily: 'Montserrat'),
          debugShowCheckedModeBanner: false,
          home: Root(),
        );
      },
    ),
  );
}

class Root extends StatefulWidget {
  //Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 240, 245),
      body: SafeArea(
        child: width > 1000
            ? MainPageWide(width: width, height: height)
            : Container(),
      ),
    );
  }
}
