import 'package:carpet_ui/utils/rgb_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.width * 0.3,
      child: Card(
        color: RGB.blue,
        margin: const EdgeInsets.all(20),
        child: const Column(
          children: <Widget>[
            ListTile(
              title: Text('Status'),
              subtitle: Text('Yetkazib berish'),
            ),
          ],
        ),
      ),
    );
  }
}
