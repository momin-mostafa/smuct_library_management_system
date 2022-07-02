import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widgets/sscaffold/s_scaffold.dart';
import '../controllers/inventory_screen_controller.dart';

class InventoryScreenView extends GetView<InventoryScreenController> {
  const InventoryScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SScaffold(
      drawerItem: [],
      appBarItem: [],
      bodyItems: [
        Center(
          child: Text(
            'InventoryScreenView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
