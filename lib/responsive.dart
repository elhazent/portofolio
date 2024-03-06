
import 'package:flutter/material.dart';
import 'package:numandev/constants.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 450;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 730;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1065;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1065) {
      return Container(color:primaryColor,child: desktop);
    } else if (_size.width > 730 && tablet != null) {
      return Container(child: tablet,color: primaryColor,);
    } else if (_size.width >= 570 && mobileLarge != null) {
      return Container(child: mobileLarge,color: primaryColor,);
    } else {
      return Container(child: mobile,color: primaryColor,);
    }
  }
}