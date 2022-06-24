import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smuct_library_management_system/app/data/colors.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({Key? key, required this.cardTitle, required this.onTap})
      : super(key: key);
  final String cardTitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: Get.size.width * 0.02,
          width: Get.size.width * 0.12,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(76, 0, 0, 0),
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 8.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ], //BoxS,
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: primaryGradiant,
            ),
          ),
          child: Center(
            child: Text(
              cardTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
