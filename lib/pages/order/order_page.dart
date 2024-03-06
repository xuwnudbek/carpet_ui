import 'package:carpet_ui/utils/rgb_colors.dart';
import 'package:carpet_ui/utils/widgets/order_card.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const OrderCard(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: RGB.blue,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: RGB.greyLight,
        ),
      ),
    );
  }
}
