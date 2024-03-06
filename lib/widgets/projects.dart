import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:numandev/model/project_model.dart';

import '../index.dart';

class ProjectsComponent extends StatefulWidget {
  final bool? isHome;
  final int? crossAxisCount;
  ProjectsComponent({super.key, this.isHome, this.crossAxisCount});

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent> {
  List<ProjectModel> data = [
    ProjectModel(image: plnImage, name: 'PLN Mobile', description: 'Buy electricity tokens, pay bills, make complaints, apply for new installations and add power easily through PLN Mobile! PLN Mobile is the most complete application for all things electricity in Indonesia.', isLive: true, tools: ['Dart', 'Flutter', 'Firebase', 'Sqlite', 'Sentry', 'Provider', 'Maps'], isHover: false, link: 'https://play.google.com/store/apps/details?id=com.icon.pln123&hl=en&gl=US'),
    ProjectModel(image: ayocasImage, name: 'Ayocas', description: 'Ayocas is the reliable, easy way to charge your EV. Find EV charging stations, see real-time charger details, reserve, and charge today!\n\nWith just 4 step, you can start charging your electric vehicle!', isLive: true, tools: ['Dart', 'Flutter', 'Getx', 'Maps'], isHover: false, link: 'https://play.google.com/store/apps/details?id=id.novatech.ev'),
    ProjectModel(image: libraImage, name: 'Libra Payment Point', description: 'Register as a Libra Agent to help people buy prepaid tokens, electricity bills, iconnet bills, and more! Also get benefits from every transaction made. You can determine the amount of margin you want to get yourself!', isLive: true, tools: ['Dart', 'Flutter', 'Provider'], isHover: false, link: 'https://play.google.com/store/apps/details?id=com.iconpln.agent'),
    ProjectModel(image: marketplaceImage, name: 'PLN Marketplace Seller', description: 'PLN Marketplace comes as a buying and selling platform to make it easier for PLN customers and the public. In collaboration with various MSMEs and other companies, PLN Marketplace provides a very diverse selection of products ranging from daily necessities to electric vehicles and equipment.', isLive: true, tools: ['Dart', 'Flutter', 'Firebase', 'Provider'], isHover: false, link: 'https://play.google.com/store/apps/details?id=com.icon.plnmarketplace&hl=en&gl=US'),
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      mainAxisSpacing: 20,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 20,
      crossAxisCount: widget.crossAxisCount ?? 3,
      itemCount: widget.isHome ?? false ? 3 : data.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey), color: primaryColor),
              child: Image.asset(
                data[index].image!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Text(
                data[index].tools!.join(' ').toUpperCase(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index].name!,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    data[index].description!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [data[index].link]);
                    },
                    onHover: (value) {
                      data[index].isHover = value;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(border: Border.all(color: textPrimaryColor), color: data[index].isHover ?? false ? textPrimaryColor.withOpacity(.1) : Colors.transparent),
                      child: Text(
                        'Live <~>',
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
          ],
        );
      },
    );
  }
}
