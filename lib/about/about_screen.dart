import 'package:flutter/material.dart';
import 'package:numandev/index.dart';
import 'package:numandev/widgets/footer.dart';
import 'package:numandev/widgets/subtitle.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Who am i', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              aboutImage,
                              width: 339,
                            ),
                            Container(
                              height: 1,
                              width: 300,
                              color: textPrimaryColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 64,
                        ),
                        Expanded(
                          child: Text(
                            "Hello, I'm Nu'man!\n\nI'm an Mobile developer based in Jakarta. With experience as a self-taught developer and a speaker at various workshops, I've honed my skills in developing cross-platform applications for both Android and iOS.\n\nThroughout my development journey, I've contributed to creating innovative applications that captivate users. I'm always excited to explore the latest technologies and frameworks, ensuring that every project I handle not only meets functional requirements but also delivers a modern and captivating user experience.",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    SubtitleComponent(subtitle: 'skills', widthLine: 230),
                    SizedBox(
                      height: 32,
                    ),
                    Skills(),
                    SizedBox(
                      height: 64,
                    ),
                    SubtitleComponent(subtitle: 'fun-facts', widthLine: 230),
                    SizedBox(
                      height: 32,
                    ),
                    Wrap(
                      runSpacing: 16,
                      spacing: 16,
                      alignment: WrapAlignment.end,
                      runAlignment: WrapAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          child: Text(
                            'I like watching One Piece',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Who am i', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                aboutImage,
                                width: 339,
                              ),
                              Container(
                                height: 1,
                                width: 300,
                                color: textPrimaryColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 64,
                          ),
                          Expanded(
                            child: Text(
                              "Hello, I'm Nu'man!\n\nI'm an Mobile developer based in Jakarta. With experience as a self-taught developer and a speaker at various workshops, I've honed my skills in developing cross-platform applications for both Android and iOS.\n\nThroughout my development journey, I've contributed to creating innovative applications that captivate users. I'm always excited to explore the latest technologies and frameworks, ensuring that every project I handle not only meets functional requirements but also delivers a modern and captivating user experience.",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      SubtitleComponent(subtitle: 'skills', widthLine: 230),
                      SizedBox(
                        height: 32,
                      ),
                      Skills(),
                      SizedBox(
                        height: 64,
                      ),
                      SubtitleComponent(subtitle: 'fun-facts', widthLine: 230),
                      SizedBox(
                        height: 32,
                      ),
                      Wrap(
                        runSpacing: 16,
                        spacing: 16,
                        alignment: WrapAlignment.end,
                        runAlignment: WrapAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            child: Text(
                              'I like watching One Piece',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
                            ),
                          ),
                        ],
                      )
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
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 1065,
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Who am i', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                      SizedBox(
                        height: 32,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            aboutImage,
                            width: 339,
                          ),
                          Container(
                            height: 1,
                            width: 300,
                            color: textPrimaryColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      Text(
                        "Hello, I'm Nu'man!\n\nI'm an Mobile developer based in Jakarta. With experience as a self-taught developer and a speaker at various workshops, I've honed my skills in developing cross-platform applications for both Android and iOS.\n\nThroughout my development journey, I've contributed to creating innovative applications that captivate users. I'm always excited to explore the latest technologies and frameworks, ensuring that every project I handle not only meets functional requirements but also delivers a modern and captivating user experience.",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      SubtitleComponent(subtitle: 'skills', widthLine: 40),
                      SizedBox(
                        height: 32,
                      ),
                      Skills(),
                      SizedBox(
                        height: 64,
                      ),
                      SubtitleComponent(subtitle: 'fun-facts', widthLine: 40),
                      SizedBox(
                        height: 32,
                      ),
                      Wrap(
                        runSpacing: 16,
                        spacing: 16,
                        alignment: WrapAlignment.end,
                        runAlignment: WrapAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            child: Text(
                              'I like watching One Piece',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
                            ),
                          ),
                        ],
                      )
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
