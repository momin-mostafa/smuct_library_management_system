import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smuct_library_management_system/app/data/shadow.dart';

class SAppBar extends StatelessWidget {
  const SAppBar({
    Key? key,
    required this.appBarItem,
  }) : super(key: key);

  final List<Widget> appBarItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: Get.size.width * .77,
        height: Get.size.width * .04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: commonShadow,
        ),
        child: Row(
          children: <Widget>[
                IconButton(
                    onPressed: (() => Get.back()),
                    icon: const Icon(
                      Icons.arrow_back,
                    ))
              ] +
              appBarItem,
        ),
      ),
    );
  }
}
