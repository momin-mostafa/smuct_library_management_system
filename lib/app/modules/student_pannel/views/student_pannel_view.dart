import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/student_pannel_controller.dart';

class StudentPannelView extends GetView<StudentPannelController> {
  const StudentPannelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentPannelView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StudentPannelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
