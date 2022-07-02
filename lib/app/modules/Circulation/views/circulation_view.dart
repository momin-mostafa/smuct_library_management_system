import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widgets/sscaffold/s_scaffold.dart';
import '../controllers/circulation_controller.dart';

class CirculationView extends GetView<CirculationController> {
  const CirculationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SScaffold(
      drawerItem: [],
      appBarItem: [],
      bodyItems: [
        Center(
          child: Text(
            'Circulation is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
