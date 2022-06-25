import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SDrawer extends StatelessWidget {
  const SDrawer({
    Key? key,
    required this.drawerItem,
  }) : super(key: key);

  final List<Widget> drawerItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.size.height * .95,
      width: Get.size.width * .15,
      child: Column(
        children: drawerItem,
      ),
    );
  }
}
