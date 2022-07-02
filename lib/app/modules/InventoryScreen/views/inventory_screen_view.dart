import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smuct_library_management_system/app/modules/InventoryScreen/widgets/inventory_app_bar.dart';

import '../../../data/widgets/sscaffold/s_scaffold.dart';
import '../controllers/inventory_screen_controller.dart';

class InventoryScreenView extends GetView<InventoryScreenController> {
  const InventoryScreenView({Key? key}) : super(key: key);
  final dummy = 'InventoryScreenView is working';
  @override
  Widget build(BuildContext context) {
    return SScaffold(
      drawerItem: const [],
      appBarItem: const [
        InventoryAppBar(),
      ],
      bodyItems: [
        Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Card(
                  child: Text(index.toString()),
                );
              }),
              itemCount: 10,
            )
          ],
        ),
      ],
    );
  }
}
