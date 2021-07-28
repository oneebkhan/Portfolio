import 'package:flutter/material.dart';
import 'package:portfolio/WideScreen/Widgets/BottomWave.dart';
import 'package:portfolio/WideScreen/Widgets/MainPageIntro.dart';
import 'package:portfolio/WideScreen/Widgets/TopBar.dart';

class MainPageWide extends StatefulWidget {
  final double width;
  final double height;
  MainPageWide({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  _MainPageWideState createState() => _MainPageWideState();
}

class _MainPageWideState extends State<MainPageWide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          TopBar(height: widget.height, width: widget.width),
          MainPageIntro(width: widget.width, height: widget.height),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: BottomWave(width: widget.width, height: widget.height),
          ),
        ],
      ),
    );
  }
}
