import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smuct_library_management_system/app/data/widgets/common_card.dart';

class InventoryAppBar extends StatelessWidget {
  const InventoryAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonCard(cardTitle: 'Item', onTap: () {}),
        const SizedBox(height: 200, width: 300, child: TextField()),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search))
      ],
    );
  }
}
