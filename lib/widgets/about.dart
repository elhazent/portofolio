import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../index.dart';

class AboutComponent extends StatefulWidget {
  const AboutComponent({super.key});

  @override
  State<AboutComponent> createState() => _AboutComponentState();
}

class _AboutComponentState extends State<AboutComponent> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Responsive(
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, I'm Nu'man!\n\nI'm an Mobile developer based in Jakarta. With experience as a self-taught developer and a speaker at various workshops, I've honed my skills in developing cross-platform applications for both Android and iOS.\n\nThroughout my development journey, I've contributed to creating innovative applications that captivate users. I'm always excited to explore the latest technologies and frameworks, ensuring that every project I handle not only meets functional requirements but also delivers a modern and captivating user experience.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {
                      context.go('/about-me');
                    },
                    onHover: (value) {
                      hover = value;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: hover ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                      child: Text(
                        'Read more ~>',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 64,
            ),
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      aboutImage,
                      width: 339,
                    ),
                    Container(
                      height: 1,
                      width: 300,
                      color: textPrimaryColor,
                    )
                  ],
                ),
                Positioned(
                  top: 50,
                  child: Image.asset(dotsImage),
                ),
                Positioned(
                  top: 250,
                  right: 0,
                  child: Image.asset(dotsImage),
                ),
              ],
            )
          ],
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, I'm Nu'man!\n\nI'm an Mobile developer based in Jakarta. With experience as a self-taught developer and a speaker at various workshops, I've honed my skills in developing cross-platform applications for both Android and iOS.\n\nThroughout my development journey, I've contributed to creating innovative applications that captivate users. I'm always excited to explore the latest technologies and frameworks, ensuring that every project I handle not only meets functional requirements but also delivers a modern and captivating user experience.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {
                      context.go('/about-me');
                    },
                    onHover: (value) {
                      hover = value;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: hover ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                      child: Text(
                        'Read more ~>',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 64,
            ),
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      aboutImage,
                      width: 339,
                    ),
                    Container(
                      height: 1,
                      width: 300,
                      color: textPrimaryColor,
                    )
                  ],
                ),
                Positioned(
                  top: 50,
                  child: Image.asset(dotsImage),
                ),
                Positioned(
                  top: 250,
                  right: 0,
                  child: Image.asset(dotsImage),
                ),
              ],
            )
          ],
        ),
        mobile: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, I'm Nu'man!\n\nI'm an Mobile developer based in Jakarta. With experience as a self-taught developer and a speaker at various workshops, I've honed my skills in developing cross-platform applications for both Android and iOS.\n\nThroughout my development journey, I've contributed to creating innovative applications that captivate users. I'm always excited to explore the latest technologies and frameworks, ensuring that every project I handle not only meets functional requirements but also delivers a modern and captivating user experience.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    context.go('/about-me');
                  },
                  onHover: (value) {
                    hover = value;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: hover ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                    child: Text(
                      'Read more ~>',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  aboutImage,
                  width: 339,
                ),
                Container(
                  height: 1,
                  width: 300,
                  color: textPrimaryColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
