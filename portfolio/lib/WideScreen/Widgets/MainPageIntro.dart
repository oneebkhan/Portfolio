import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Utils/OnHoverButtonFlip.dart';
import 'package:portfolio/Utils/OnHoverButtonScale.dart';
import 'package:portfolio/Utils/OnHoverButtonTransform.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPageIntro extends StatefulWidget {
  final double width;
  final double height;
  MainPageIntro({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

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
    double circleWidth = (widget.width / 30).clamp(50, 90);
    double circleHeight = (widget.width / 30).clamp(50, 90);
    double specialHeight = (widget.width / 5).clamp(300, 500);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.width / 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                delay: Duration(milliseconds: 1100),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: AnimatedContainer(
                    curve: Curves.easeOut,
                    width: circleWidth,
                    duration: Duration(milliseconds: 500),
                    height: _isExpanded == false ? circleWidth : specialHeight,
                    child: AnimatedContainer(
                      curve: Curves.easeOut,
                      width: circleWidth,
                      height:
                          _isExpanded == false ? circleHeight : specialHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      duration: Duration(milliseconds: 300),
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
                                        size: circleWidth / 2.5,
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
                                      padding: const EdgeInsets.all(0),
                                      onPressed: () {
                                        setState(() {
                                          _isExpanded = false;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: circleWidth / 2.5,
                                        color: const Color.fromARGB(
                                            255, 169, 163, 249),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      launch('https://github.com/oneebkhan');
                                    },
                                    icon: FaIcon(
                                      FontAwesomeIcons.github,
                                      size: circleWidth / 2.5,
                                      color: const Color.fromARGB(
                                          255, 169, 163, 249),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      launch(
                                          'https://www.linkedin.com/in/oneeb-khan-6b3b701b0/');
                                    },
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      size: circleWidth / 2.5,
                                      color: const Color.fromARGB(
                                          255, 169, 163, 249),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      launch('tel:03055533774');
                                    },
                                    icon: Icon(
                                      Icons.phone,
                                      size: circleWidth / 2.5,
                                      color: const Color.fromARGB(
                                          255, 169, 163, 249),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      launch(
                                          'mailto:khanoneeb1997@hotmail.com');
                                    },
                                    icon: Icon(
                                      Icons.email,
                                      size: circleWidth / 2.5,
                                      color: const Color.fromARGB(
                                          255, 169, 163, 249),
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
                        'Software Engineer',
                        style: TextStyle(
                          fontSize: (widget.width / 45).clamp(30, 70),
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
                            fontSize: (widget.width / 60).clamp(20, 50),
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
                                    fontSize:
                                        (widget.width / 65).clamp(20, 100),
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
                                  padding: EdgeInsets.all(widget.width / 180),
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
            ],
          ),
          FadeInDown(
            delay: Duration(milliseconds: 1000),
            child: Container(
              padding: EdgeInsets.only(
                left: widget.width / 40,
                bottom: widget.height / 20,
              ),
              width: widget.width / 2.2,
              height: (widget.width / 3.3).clamp(400, 2000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigLogo(
                    width: widget.width,
                    height: widget.height,
                  ),
                  Logo(
                    width: widget.width,
                    height: widget.height,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//The logo in the right
class Logo extends StatefulWidget {
  final double width;
  final double height;
  Logo({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
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
    double circleWidth = (widget.width / 25).clamp(50, 90);
    double circleHeight = (widget.width / 25).clamp(50, 90);
    double specialHeight = (widget.width / 4).clamp(300, 500);

    return FadeInDown(
      delay: Duration(milliseconds: 1300),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AnimatedContainer(
          curve: Curves.easeOut,
          width: circleWidth,
          duration: Duration(milliseconds: 500),
          height: _isExpanded == false ? circleWidth : specialHeight,
          child: AnimatedContainer(
            curve: Curves.easeOut,
            width: circleWidth,
            height: _isExpanded == false ? circleHeight : specialHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromARGB(255, 72, 67, 81),
            ),
            duration: Duration(milliseconds: 300),
            child: _isExpanded == false
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: circleWidth,
                          width: circleWidth,
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                _isExpanded = true;
                              });
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: circleWidth / 3,
                              color: const Color.fromARGB(255, 169, 163, 249),
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
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                _isExpanded = false;
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              size: circleWidth / 3,
                              color: const Color.fromARGB(255, 169, 163, 249),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Tooltip(
                          message: 'Flutter mobile developer',
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                _isExpanded = false;
                              });
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.mobile,
                              size: circleWidth / 3,
                              color: const Color.fromARGB(255, 169, 163, 249),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Tooltip(
                          message: 'Flutter web developer',
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                _isExpanded = false;
                              });
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.globe,
                              size: circleWidth / 3,
                              color: const Color.fromARGB(255, 169, 163, 249),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Tooltip(
                          message: 'Python developer',
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                _isExpanded = false;
                              });
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.python,
                              size: circleWidth / 3,
                              color: const Color.fromARGB(255, 169, 163, 249),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Tooltip(
                          message: 'Django Rest Framework API developer',
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                _isExpanded = false;
                              });
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.cogs,
                              size: circleWidth / 3,
                              color: const Color.fromARGB(255, 169, 163, 249),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class BigLogo extends StatelessWidget {
  final double width;
  final double height;
  const BigLogo({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width / 3).clamp(200, 900),
      height: (width / 3).clamp(200, 900),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 72, 67, 81),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(80, 50, 50, 50),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(6, 6), // changes position of shadow
          ),
        ],
      ),
      child: OnHoverButtonFlip(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 72, 67, 81),
            image: DecorationImage(
              image: NetworkImage('assets/images/Logo.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        child2: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 255, 255, 255),
            image: DecorationImage(
              image: NetworkImage('assets/images/Profile.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
