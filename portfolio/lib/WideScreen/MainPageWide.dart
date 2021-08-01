import 'package:flutter/material.dart';
import 'package:portfolio/WideScreen/Widgets/Projects.dart';
import 'package:portfolio/WideScreen/Widgets/SkillsAndExperience.dart';
import 'package:portfolio/WideScreen/Widgets/BottomWave.dart';
import 'package:portfolio/WideScreen/Widgets/MainPageIntro.dart';
import 'package:portfolio/WideScreen/Widgets/TopBar.dart';

class MainPageWide extends StatefulWidget {
  final double width;
  final double height;
  MainPageWide({
    required this.width,
    required this.height,
  });

  @override
  _MainPageWideState createState() => _MainPageWideState();
}

class _MainPageWideState extends State<MainPageWide> {
  @override
  Widget build(BuildContext context) {
    //This is a list of widgets
    List<Widget> MainPage = [
      TopBar(height: widget.height, width: widget.width),
      MainPageIntro(width: widget.width, height: widget.height),
      Padding(
          padding: const EdgeInsets.only(top: 50),
          child: BottomWave(width: widget.width, height: widget.height)),
      SkillsAndExperience(width: widget.width, height: widget.height),
      Projects(width: widget.width, height: widget.height),
    ];

    return Container(
      width: widget.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: MainPage.length,
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        itemBuilder: (BuildContext context, int index) {
          return MainPage[index];
        },
      ),
    );
  }
}
