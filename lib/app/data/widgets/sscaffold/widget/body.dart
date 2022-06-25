import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shadow.dart';
import '../widget/s_appbar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.appBarItem,
    required this.bodyItems,
  }) : super(key: key);

  final List<Widget>? appBarItem;
  final List<Widget> bodyItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: Get.size.width * .8,
      height: Get.size.height * .95,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25),
          boxShadow: commonShadow //BoxS,
          ),
      child: Column(
        children: <Widget>[
              appBarItem != null
                  ? SAppBar(appBarItem: appBarItem!)
                  : Container(),
            ] +
            bodyItems,
      ),
    );
  }
}
