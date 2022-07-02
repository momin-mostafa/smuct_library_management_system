import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widgets/sscaffold/s_scaffold.dart';
import '../controllers/borrowers_management_controller.dart';

class BorrowersManagementView extends GetView<BorrowersManagementController> {
  const BorrowersManagementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SScaffold(
      drawerItem: [],
      appBarItem: [],
      bodyItems: [
        Center(
          child: Text(
            'Borrowers management is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
