import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smuct_library_management_system/app/data/widgets/drawer_item.dart';
import 'package:smuct_library_management_system/app/data/widgets/sscaffold/s_scaffold.dart';
import 'package:smuct_library_management_system/app/data/widgets/common_card.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../../data/widgets/common_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<SalesData> data = [
      SalesData('Jan', 35),
      SalesData('Feb', 28),
      SalesData('Mar', 34),
      SalesData('Apr', 32),
      SalesData('May', 40)
    ];
    return SScaffold(
      drawerItem: const [
        DrawerItem(),
        DrawerItem(),
        DrawerItem(),
        DrawerItem(),
      ],
      bodyItems: [
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CommonCard(
                    cardTitle: 'Inventory',
                    onTap: () => Get.toNamed('/inventory-screen'),
                  ),
                  CommonCard(
                    cardTitle: 'Circulation',
                    onTap: () => Get.toNamed('/circulation'),
                  ),
                  CommonCard(
                    cardTitle: 'Borrowers Management',
                    onTap: () => Get.toNamed('/borrowers-management'),
                  ),
                ],
              ),
              SizedBox(
                width: 400,
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  //Initialize the spark charts widget
                  child: SfSparkLineChart.custom(
                    //Enable the trackball
                    trackball: const SparkChartTrackball(
                        activationMode: SparkChartActivationMode.tap),
                    //Enable marker
                    marker: const SparkChartMarker(
                        displayMode: SparkChartMarkerDisplayMode.all),
                    //Enable data label
                    labelDisplayMode: SparkChartLabelDisplayMode.all,
                    xValueMapper: (int index) => data[index].year,
                    yValueMapper: (int index) => data[index].sales,
                    dataCount: 5,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
