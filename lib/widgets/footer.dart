import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../index.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: SizedBox(
        width: 1056,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                logoImage,
                                width: 16,
                                height: 16,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'numan.dev',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'elhazent.mail@gmail.com',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Mobile Developer and workshop speaker',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Media',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                            },
                            child: SvgPicture.asset(iconLinkedin)),
                        InkWell(
                            onTap: () {
                              js.context.callMethod('open', ['https://github.com/elhazent']);
                            },
                            child: SvgPicture.asset(iconGithub)),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              '© Copyright 2023. Made by Numan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
      tablet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                logoImage,
                                width: 16,
                                height: 16,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'numan.dev',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'elhazent.mail@gmail.com',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Mobile Developer and workshop speaker',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Media',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                            },
                            child: SvgPicture.asset(iconLinkedin)),
                        InkWell(
                            onTap: () {
                              js.context.callMethod('open', ['https://github.com/elhazent']);
                            },
                            child: SvgPicture.asset(iconGithub)),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              '© Copyright 2023. Made by Numan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
            ),
            SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
      mobile: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          logoImage,
                          width: 16,
                          height: 16,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'numan.dev',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'elhazent.mail@gmail.com',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Mobile Developer and workshop speaker',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Media',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                            },
                            child: SvgPicture.asset(iconLinkedin)),
                        InkWell(
                            onTap: () {
                              js.context.callMethod('open', ['https://github.com/elhazent']);
                            },
                            child: SvgPicture.asset(iconGithub)),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              '© Copyright 2023. Made by Numan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
            ),
            SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}
