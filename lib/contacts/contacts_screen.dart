import 'package:flutter/material.dart';
import 'package:numandev/index.dart';
import 'package:numandev/widgets/contact.dart';
import 'package:numandev/widgets/footer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Column(
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
                  Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Who am i?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                  SizedBox(
                    height: 32,
                  ),
                  ContactsComponent()
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
      tablet: SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Who am i?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                      SizedBox(
                        height: 32,
                      ),
                      ContactsComponent()
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(text: '/', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))])),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Who am i?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                      SizedBox(
                        height: 32,
                      ),
                      ContactsComponent()
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
