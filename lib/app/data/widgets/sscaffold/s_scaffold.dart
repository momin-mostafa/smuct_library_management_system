import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smuct_library_management_system/app/data/colors.dart';

import 'widget/body.dart';
import 'widget/s_drawer.dart';

class SScaffold extends StatelessWidget {
  const SScaffold({
    Key? key,
    required this.drawerItem,
    required this.bodyItems,
    this.appBarItem,
  }) : super(key: key);
  final List<Widget> drawerItem;
  final List<Widget> bodyItems;
  final List<Widget>? appBarItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: primaryGradiant,
          ),
        ),
        width: Get.size.width,
        height: Get.size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SDrawer(drawerItem: drawerItem),
              Body(appBarItem: appBarItem, bodyItems: bodyItems)
            ],
          ),
        ),
      ),
    );
  }
}
