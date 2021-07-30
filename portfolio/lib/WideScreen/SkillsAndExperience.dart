import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SkillsAndExperience extends StatefulWidget {
  SkillsAndExperience({Key? key}) : super(key: key);

  @override
  _SkillsAndExperienceState createState() => _SkillsAndExperienceState();
}

class _SkillsAndExperienceState extends State<SkillsAndExperience> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInDown(
        delay: Duration(milliseconds: 300),
        child: Text(
          'Give Me Cake',
          style: TextStyle(fontSize: 2000),
        ),
      ),
    );
  }
}
