import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPageIntro extends StatefulWidget {
  final double width;
  final double height;
  MainPageIntro({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  _MainPageIntroState createState() => _MainPageIntroState();
}

class _MainPageIntroState extends State<MainPageIntro> {
  bool anim = false;
  bool _isExpanded = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        anim = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double circleWidth = (widget.width / 27).clamp(50, 170);
    double circleHeight = (widget.width / 27).clamp(50, 170);
    double specialHeight = (widget.width / 5).clamp(300, 500);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.width / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInDown(
            delay: Duration(milliseconds: 300),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: AnimatedContainer(
                width: circleWidth,
                duration: Duration(milliseconds: 500),
                height: _isExpanded == false ? circleWidth : specialHeight,
                child: AnimatedContainer(
                  width: circleWidth,
                  height: _isExpanded == false ? circleHeight : specialHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  duration: Duration(milliseconds: 500),
                  child: _isExpanded == false
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: circleWidth,
                                width: circleWidth,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: const Color.fromARGB(
                                        255, 169, 163, 249),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: circleWidth,
                                width: circleWidth,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: const Color.fromARGB(
                                        255, 169, 163, 249),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  launch('https://github.com/oneebkhan');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.github,
                                  color:
                                      const Color.fromARGB(255, 169, 163, 249),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  launch(
                                      'https://www.linkedin.com/in/oneeb-khan-6b3b701b0/');
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.linkedin,
                                  color:
                                      const Color.fromARGB(255, 169, 163, 249),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  launch('tel:03055533774');
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color:
                                      const Color.fromARGB(255, 169, 163, 249),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  launch('mailto:khanoneeb1997@hotmail.com');
                                },
                                icon: Icon(
                                  Icons.email,
                                  color:
                                      const Color.fromARGB(255, 169, 163, 249),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ),
          FadeInDown(
            delay: Duration(milliseconds: 800),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hi! I\'m ',
                      style: TextStyle(
                          fontSize: circleHeight, fontFamily: 'Montserrat'),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Oneeb',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: circleWidth,
                            color: const Color.fromARGB(255, 169, 163, 249),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  SelectableText(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: (widget.width / 45).clamp(30, 100),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: widget.width / 2.7,
                    child: SelectableText(
                      'Young developer passionate about flutter front-end and Django or Firebase back-end development. I make apps that are functional and look good doing what they do.',
                      style: TextStyle(
                        fontSize: (widget.width / 60).clamp(20, 120),
                      ),
                    ),
                  ),
                  SizedBox(height: widget.width / 40),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.transparent,
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 72, 67, 81),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Get in Touch',
                              style: TextStyle(
                                fontSize: (widget.width / 65).clamp(20, 100),
                                color: Color.fromARGB(255, 169, 163, 249),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 169, 163, 249),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 72, 67, 81),
            ),
          ),
        ],
      ),
    );
  }
}
