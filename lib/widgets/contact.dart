import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../index.dart';

class ContactsComponent extends StatelessWidget {
  const ContactsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message me here',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () async {
                          js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(iconLinkedin),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'elhazent',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () async {
                          const mailUrl = 'mailto:elhazent.mail@gmail.com';
                          try {
                            await launchUrl(Uri.parse(mailUrl));
                          } catch (e) {
                            await Clipboard.setData(const ClipboardData(text: 'elhazent.mail@gmail.com'));
                            Fluttertoast.showToast(msg: "Email berhasil disalin", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP_RIGHT, timeInSecForIosWeb: 1, backgroundColor: Colors.red, textColor: Colors.white, fontSize: 16.0);
                          }
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(iconEmail),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'elhazent.mail@gmail.com',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                          onTap: () async {
                            js.context.callMethod('open', ['https://wa.me/6281233759694']);
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Image.asset(
                                  iconWhatsApp,
                                  width: 20,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '081233759694',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      tablet: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message me here',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white,),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () async {
                          js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(iconLinkedin),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'elhazent',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () async {
                          const mailUrl = 'mailto:elhazent.mail@gmail.com';
                          try {
                            await launchUrl(Uri.parse(mailUrl));
                          } catch (e) {
                            await Clipboard.setData(const ClipboardData(text: 'elhazent.mail@gmail.com'));
                            Fluttertoast.showToast(msg: "Email berhasil disalin", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP_RIGHT, timeInSecForIosWeb: 1, backgroundColor: Colors.red, textColor: Colors.white, fontSize: 16.0);
                          }
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(iconEmail),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'elhazent.mail@gmail.com',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                          onTap: () async {
                            js.context.callMethod('open', ['https://wa.me/6281233759694']);
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Image.asset(
                                  iconWhatsApp,
                                  width: 20,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '081233759694',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Message me here',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () async {
                    js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(iconLinkedin),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'elhazent',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () async {
                    const mailUrl = 'mailto:elhazent.mail@gmail.com';
                    try {
                      await launchUrl(Uri.parse(mailUrl));
                    } catch (e) {
                      await Clipboard.setData(const ClipboardData(text: 'elhazent.mail@gmail.com'));
                      Fluttertoast.showToast(msg: "Email berhasil disalin", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP_RIGHT, timeInSecForIosWeb: 1, backgroundColor: Colors.red, textColor: Colors.white, fontSize: 16.0);
                    }
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(iconEmail),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'elhazent.mail@gmail.com',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                    onTap: () async {
                      js.context.callMethod('open', ['https://wa.me/6281233759694']);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Image.asset(
                            iconWhatsApp,
                            width: 20,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '081233759694',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
