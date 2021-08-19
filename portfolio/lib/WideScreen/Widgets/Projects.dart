import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  final double width;
  final double height;
  Projects({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final double _containerWidth = (width / 2).clamp(500, 69000);
    final double _container2Width = (width / 3).clamp(300, 69000);
    final double _pictureWidth = (width / 2.3).clamp(530, 1200);
    final double _backCircle = (width / 2.7).clamp(500, 1200);
    final double _padding = (width / 30).clamp(25, 50);

    return Container(
      padding: width > 1500
          ? const EdgeInsets.symmetric(horizontal: 20, vertical: 100)
          : const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 186, 182, 248),
        border: Border.all(
          width: 0,
          color: const Color.fromARGB(255, 186, 182, 248),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: _containerWidth,
                  child: Stack(
                    clipBehavior: Clip.hardEdge,
                    children: [
                      Container(
                        width: _backCircle,
                        child: FadeInDown(
                          delay: Duration(milliseconds: 500),
                          duration: Duration(milliseconds: 1200),
                          child: Image.network(
                            'assets/assets/images/backCircles.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: _containerWidth,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: _padding,
                            top: _padding,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: _padding),
                                child: Column(
                                  children: [
                                    ProjectTile(
                                      height: height,
                                      width: width,
                                      image:
                                          'assets/assets/images/Project-medicineTracker.png',
                                      title: 'Medicine Authenticator',
                                      description:
                                          'Scan barcodes to view the authenticity of the medicinal product, all the while having a suite of different medicine stats and features',
                                      navigate:
                                          'https://github.com/oneebkhan/FYP_Medicine-Authenticator/releases/tag/v1.0',
                                      delay: 600,
                                    ),
                                    SizedBox(
                                      height: _padding,
                                    ),
                                    ProjectTile(
                                      height: height,
                                      width: width,
                                      image:
                                          'assets/assets/images/Project-medicineTracker.png',
                                      title: 'Medicine Authenticator',
                                      description:
                                          'Scan barcodes to view the authenticity of the medicinal product, all the while having a suite of different medicine stats and features',
                                      navigate:
                                          'https://github.com/oneebkhan/FYP_Medicine-Authenticator/releases/tag/v1.0',
                                      delay: 750,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ProjectTile(
                                    height: height,
                                    width: width,
                                    image:
                                        'assets/assets/images/Project-medicineTracker.png',
                                    title: 'Medicine Authenticator',
                                    description:
                                        'Scan barcodes to view the authenticity of the medicinal product, all the while having a suite of different medicine stats and features',
                                    navigate:
                                        'https://github.com/oneebkhan/FYP_Medicine-Authenticator/releases/tag/v1.0',
                                    delay: 900,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: _padding,),
                // SizedBox(
                //   width: width > 1800 ? 100 : 0,
                // ),
                FadeInDown(
                  delay: Duration(milliseconds: 600),
                  duration: Duration(milliseconds: 800),
                  child: Container(
                    width: _container2Width,
                    child: ProjectHeading(
                      height: height,
                      width: width,
                      description:
                          'The personal projects that I have worked on in my time as a software engineer, with links to the GitHub repos if available.',
                      launchGit: 'https://github.com/oneebkhan?tab=repositories',
                      title: 'My Projects',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }
}

class ProjectHeading extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String description;
  final String launchGit;
  const ProjectHeading({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.description,
    required this.launchGit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _tileTopHeight = (width / 10).clamp(150, 400);
    final double _tileWidth = (width / 7).clamp(205, 500);
    final double _titleFont = (width / 50).clamp(20, 80);
    final double _sizedbox = (width / 120).clamp(20, 50);
    final double _button = (width / 50).clamp(35, 60);
    final double _buttonPadding = (width / 60).clamp(30, 80);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: _titleFont,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(
          height: _sizedbox,
        ),
        SelectableText(
          description,
          style: TextStyle(
            color: Colors.white,
            fontSize: _titleFont / 1.7,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(
          height: _sizedbox,
        ),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
              (states) => Colors.transparent,
            ),
          ),
          onPressed: () {
            launch(launchGit);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(_sizedbox / 1.3),
                  child: Text(
                    'View All Projects',
                    style: TextStyle(
                      fontSize: _titleFont / 1.7,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 112, 112, 112),
                    ),
                  ),
                ),
                Container(
                  width: _button,
                  height: _button,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 169, 163, 249),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: _sizedbox,
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
    );
  }
}

class ProjectTile extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final String title;
  final String description;
  final String navigate;
  final int delay;
  const ProjectTile({
    required this.height,
    required this.width,
    required this.title,
    required this.description,
    required this.navigate,
    required this.image,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) {
    final double _tileTopHeight = (width / 10).clamp(140, 700);
    final double _tileWidth = (width / 7).clamp(200, 550);
    final double _titleFont = (width / 85).clamp(16, 45);
    final double _sizedbox = (width / 120).clamp(13, 50);
    final double _button = (width / 70).clamp(23, 50);
    final double _buttonPadding = (width / 100).clamp(13, 50);
    return FadeInDown(
      delay: Duration(milliseconds: delay),
      duration: Duration(milliseconds: 1000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: _tileWidth,
            height: _tileTopHeight,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Image.network(image),
          ),
          Container(
            width: _tileWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 155, 149, 210),
              border: Border.all(
                width: 0,
                color: const Color.fromARGB(0, 186, 182, 248),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(_buttonPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _titleFont,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: _sizedbox,
                  ),
                  SelectableText(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _titleFont / 1.5,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: _sizedbox,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.transparent,
                      ),
                    ),
                    onPressed: () {
                      launch(navigate);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(_sizedbox / 1.3),
                            child: Text(
                              'View Project',
                              style: TextStyle(
                                fontSize: _titleFont / 1.3,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 112, 112, 112),
                              ),
                            ),
                          ),
                          Container(
                            width: _button,
                            height: _button,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 169, 163, 249),
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: _sizedbox,
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
    );
  }
}
