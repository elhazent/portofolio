import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:numandev/index.dart';
import 'package:numandev/widgets/about.dart';
import 'package:numandev/widgets/contact.dart';
import 'package:numandev/widgets/footer.dart';
import 'package:numandev/widgets/subtitle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hoverContactMe = false;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 1065,
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                      text: 'Numan is a ',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      children: [
                                        TextSpan(text: 'mobile developer', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor)),
                                        TextSpan(
                                            text: ' and ',
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        TextSpan(text: 'workshop speaker', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor))
                                      ]),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  'He crafts responsive websites where technologies meet creativity',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                InkWell(
                                  onTap: () {
                                    html.AnchorElement anchorElement = new html.AnchorElement(href: 'https://drive.google.com/uc?export=download&id=1jCJizaGPX_nuxBqnLvyx7NICx3WvO3hh');
                                    anchorElement.download = 'https://drive.google.com/uc?export=download&id=1jCJizaGPX_nuxBqnLvyx7NICx3WvO3hh';
                                    anchorElement.click();
                                  },
                                  onHover: (value) {
                                    hoverContactMe = value;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: hoverContactMe ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                                    child: Text(
                                      'Download cv ~>',
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
                            width: 24,
                          ),
                          Expanded(
                              child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 120,
                                child: SvgPicture.asset(
                                  iconAbstract,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(profileImage),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 16,
                                          color: textPrimaryColor,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                              text: 'Currently working on ',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'PLN ICONPlus',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                right: 0,
                                bottom: 150,
                                child: Image.asset(
                                  dotsImage,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(32),
                                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                  child: Text(
                                    'With great power comes great electricity bill',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                  child: Text(
                                    '- Dr. Who',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 24,
                            child: Container(
                              color: primaryColor,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: SvgPicture.asset(iconQuotes),
                            ),
                          ),
                          Positioned(
                            bottom: 66,
                            right: 24,
                            child: Container(
                              color: primaryColor,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: SvgPicture.asset(iconQuotes),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SubtitleComponent(subtitle: 'projects', widthLine: 500),
                              TextButton(
                                onPressed: () {
                                  context.go('/projects');
                                },
                                child: Text(
                                  'View all ~~>',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          ProjectsComponent(
                            isHome: true,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          SubtitleComponent(subtitle: 'skills', widthLine: 235),
                          SizedBox(
                            height: 32,
                          ),
                          SkillsComponent(),
                          SizedBox(
                            height: 100,
                          ),
                          SubtitleComponent(subtitle: 'about-me', widthLine: 350),
                          AboutComponent(),
                          SizedBox(
                            height: 100,
                          ),
                          SubtitleComponent(subtitle: 'contacts', widthLine: 200),
                          ContactsComponent()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 2,
              width: width(context),
              color: Colors.grey,
            ),
            SizedBox(
              height: 32,
            ),
            FooterComponent()
          ],
        ),
      ),
      tablet: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 1065,
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text: 'Numan is a ',
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(text: 'mobile developer', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor)),
                                          TextSpan(
                                              text: ' and ',
                                              style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          TextSpan(text: 'workshop speaker', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor))
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'He crafts responsive websites where technologies meet creativity',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      html.AnchorElement anchorElement = new html.AnchorElement(href: 'https://drive.google.com/uc?export=download&id=1jCJizaGPX_nuxBqnLvyx7NICx3WvO3hh');
                                      anchorElement.download = 'https://drive.google.com/uc?export=download&id=1jCJizaGPX_nuxBqnLvyx7NICx3WvO3hh';
                                      anchorElement.click();
                                    },
                                    onHover: (value) {
                                      hoverContactMe = value;
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: hoverContactMe ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                                      child: Text(
                                        'Download cv ~>',
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
                              width: 24,
                            ),
                            Expanded(
                                child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 120,
                                  child: SvgPicture.asset(
                                    iconAbstract,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Image.asset(profileImage),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 16,
                                            height: 16,
                                            color: textPrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                  text: 'Currently working on ',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: 'PLN ICONPlus',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 150,
                                  child: Image.asset(
                                    dotsImage,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(32),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    child: Text(
                                      'With great power comes great electricity bill',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    child: Text(
                                      '- Dr. Who',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 24,
                              child: Container(
                                color: primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: SvgPicture.asset(iconQuotes),
                              ),
                            ),
                            Positioned(
                              bottom: 66,
                              right: 24,
                              child: Container(
                                color: primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: SvgPicture.asset(iconQuotes),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SubtitleComponent(subtitle: 'projects', widthLine: 150),
                                TextButton(
                                  onPressed: () {
                                    context.go('/projects');
                                  },
                                  child: Text(
                                    'View all ~~>',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            ProjectsComponent(
                              isHome: true,
                              crossAxisCount: 2,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            SubtitleComponent(subtitle: 'skills', widthLine: 235),
                            SizedBox(
                              height: 32,
                            ),
                            SkillsComponent(),
                            SizedBox(
                              height: 100,
                            ),
                            SubtitleComponent(subtitle: 'about-me', widthLine: 350),
                            AboutComponent(),
                            SizedBox(
                              height: 100,
                            ),
                            SubtitleComponent(subtitle: 'contacts', widthLine: 200),
                            ContactsComponent()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 2,
              width: width(context),
              color: Colors.grey,
            ),
            SizedBox(
              height: 32,
            ),
            FooterComponent()
          ],
        ),
      ),
      mobile: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 1065,
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(text: 'Numan is a ', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white), children: [
                                    TextSpan(text: 'mobile developer', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor)),
                                    TextSpan(
                                        text: ' and ',
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    TextSpan(text: 'workshop speaker', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor))
                                  ]),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  'He crafts responsive websites where technologies meet creativity',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                InkWell(
                                  onTap: () {
                                    html.AnchorElement anchorElement = new html.AnchorElement(href: 'https://drive.google.com/uc?export=download&id=1jCJizaGPX_nuxBqnLvyx7NICx3WvO3hh');
                                    anchorElement.download = 'https://drive.google.com/uc?export=download&id=1jCJizaGPX_nuxBqnLvyx7NICx3WvO3hh';
                                    anchorElement.click();
                                  },
                                  onHover: (value) {
                                    hoverContactMe = value;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: hoverContactMe ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                                    child: Text(
                                      'Download cv ~>',
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
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 120,
                                  child: SvgPicture.asset(
                                    iconAbstract,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Image.asset(profileImage),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 16,
                                            height: 16,
                                            color: textPrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                  text: 'Currently working on ',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: 'PLN ICONPlus',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 150,
                                  child: Image.asset(
                                    dotsImage,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(32),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    child: Text(
                                      'With great power comes great electricity bill',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                    child: Text(
                                      '- Dr. Who',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 24,
                              child: Container(
                                color: primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: SvgPicture.asset(iconQuotes),
                              ),
                            ),
                            Positioned(
                              bottom: 66,
                              right: 24,
                              child: Container(
                                color: primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: SvgPicture.asset(iconQuotes),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SubtitleComponent(subtitle: 'projects', widthLine: 40),
                                TextButton(
                                  onPressed: () {
                                    context.go('/projects');
                                  },
                                  child: Text(
                                    'View all ~~>',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            ProjectsComponent(
                              isHome: true,
                              crossAxisCount: 1,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            SubtitleComponent(subtitle: 'skills', widthLine: 50),
                            SizedBox(
                              height: 32,
                            ),
                            SkillsComponent(),
                            SizedBox(
                              height: 100,
                            ),
                            SubtitleComponent(subtitle: 'about', widthLine: 50),
                            AboutComponent(),
                            SizedBox(
                              height: 100,
                            ),
                            SubtitleComponent(subtitle: 'contacts', widthLine: 40),
                            ContactsComponent()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 2,
              width: width(context),
              color: Colors.grey,
            ),
            SizedBox(
              height: 32,
            ),
            FooterComponent()
          ],
        ),
      ),
    );
  }
}
