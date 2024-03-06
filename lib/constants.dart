import 'package:flutter/material.dart';

const primaryColor = Color(0xFF282C33);
const secondaryColor = Color(0xFFABB2BF);
const textPrimaryColor = Color(0xFFC778DD);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1); // we use it on our animation
const maxWidth = 1440.0; // max width of our web

double width(BuildContext context) => MediaQuery.of(context).size.width;
double height(BuildContext context) => MediaQuery.of(context).size.height;

String? getRouteName(BuildContext context) => ModalRoute.of(context)?.settings.name;

//image
String logoImage = 'assets/images/logo.png';
String profileImage = 'assets/images/profile-image.png';
String dotsImage = 'assets/images/dots.png';
String aboutImage = 'assets/images/about-image.png';
String iconWhatsApp = 'assets/images/icon-whatsapp.png';
String plnImage = 'assets/images/pln-image.png';
String iconcashImage = 'assets/images/iconcash-image.png';
String libraImage = 'assets/images/libra-image.png';
String marketplaceImage = 'assets/images/marketplace-image.png';
String ayocasImage = 'assets/images/ayocas-image.png';

//icon
String iconEmail = 'assets/icons/icon-email.svg';
String iconGithub = 'assets/icons/icon-github.svg';
String iconLinkedin = 'assets/icons/icon-linkedin.svg';
String iconAbstract = 'assets/icons/icon-abstract.svg';
String iconQuotes = 'assets/icons/icon-quotes.svg';
String iconMore = 'assets/icons/icon-more.svg';
