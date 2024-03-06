import 'package:flutter/material.dart';
import 'package:numandev/widgets/footer.dart';

import '../index.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    super.key,
  });

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
                    Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                    SizedBox(
                      height: 16,
                    ),
                    Text('All of my projects', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                    SizedBox(
                      height: 32,
                    ),
                    ProjectsComponent()
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
        padding: EdgeInsets.symmetric(horizontal: 24),
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
                    Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                    SizedBox(
                      height: 16,
                    ),
                    Text('All of my projects', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                    SizedBox(
                      height: 32,
                    ),
                    ProjectsComponent(
                      crossAxisCount: 2,
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
                      Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                      SizedBox(
                        height: 16,
                      ),
                      Text('All of my projects', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                      SizedBox(
                        height: 32,
                      ),
                      ProjectsComponent(
                        crossAxisCount: 1,
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
