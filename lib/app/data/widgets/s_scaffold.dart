import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smuct_library_management_system/app/data/colors.dart';

class SScaffold extends StatelessWidget {
  const SScaffold({
    Key? key,
    required this.drawerItem,
    required this.bodyItems,
  }) : super(key: key);
  final List<Widget> drawerItem;
  final List<Widget> bodyItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
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
                SizedBox(
                  height: Get.size.height * .95,
                  width: Get.size.width * .15,
                  child: Column(
                    children: drawerItem,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: Get.size.width * .8,
                  height: Get.size.height * .95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
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
                  ),
                  child: Column(
                    children: <Widget>[
                          //AppBar
                          Container(
                            width: Get.size.width * .77,
                            height: Get.size.width * .04,

                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            // child: ,
                          )
                        ] +
                        bodyItems,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
