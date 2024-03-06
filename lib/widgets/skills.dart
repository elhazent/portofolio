import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numandev/index.dart';

class SkillsComponent extends StatelessWidget {
  const SkillsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned(right: 60, top: 150, child: Image.asset(dotsImage)),
                  Positioned(top: 20, child: Image.asset(dotsImage)),
                  Positioned(bottom: 0, left: 20, child: SvgPicture.asset(iconAbstract)),
                  Positioned(
                      bottom: 0,
                      right: 20,
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      )),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 86,
                        height: 86,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Skills(),
          )
        ],
      ),
      tablet: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned(right: 60, top: 150, child: Image.asset(dotsImage)),
                  Positioned(top: 20, child: Image.asset(dotsImage)),
                  Positioned(bottom: 0, left: 20, child: SvgPicture.asset(iconAbstract)),
                  Positioned(
                      bottom: 0,
                      right: 20,
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      )),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 86,
                        height: 86,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Skills(),
          )
        ],
      ),
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Positioned(right: 60, top: 150, child: Image.asset(dotsImage)),
                Positioned(top: 20, child: Image.asset(dotsImage)),
                Positioned(bottom: 0, left: 20, child: SvgPicture.asset(iconAbstract)),
                Positioned(
                    bottom: 0,
                    right: 20,
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    )),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 86,
                      height: 86,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Skills(
            wrapAlignment: WrapAlignment.start,
          )
        ],
      ),
    );
  }
}

class Skills extends StatelessWidget {
  final WrapAlignment? wrapAlignment;
  const Skills({super.key, this.wrapAlignment});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 16,
      spacing: 16,
      alignment: wrapAlignment ?? WrapAlignment.end,
      runAlignment: wrapAlignment ?? WrapAlignment.end,
      children: [
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Text(
                  'Tools',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'VSCode',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Android Studio',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Linux',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Git',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Text(
                  'Frameworks',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'Flutter',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Laravel',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Codeigniter',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Bootstrap',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Text(
                  'Databases',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'MySql',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Postgree',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Text(
                  'Progrmming Language',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'Dart',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Java',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Kotlin',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Javascript',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Text(
                  'Languages',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: width(context),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.all(8),
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'Git',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Font',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Awesome',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
