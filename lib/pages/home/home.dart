import 'package:carpet_ui/pages/home/provider/home_provider.dart';
import 'package:carpet_ui/pages/map/map_page.dart';
import 'package:carpet_ui/pages/order/order_page.dart';
import 'package:carpet_ui/utils/rgb_colors.dart';
import 'package:carpet_ui/utils/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(),
      builder: (context, snapshot) {
        return Consumer<HomeProvider>(
          builder: (context, provider, _) {
            return Scaffold(
              backgroundColor: RGB.greyLight,
              appBar: AppBar(
                backgroundColor: RGB.darkBlue,
                leading: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: RGB.greyLight,
                  ),
                  onPressed: () {},
                ),
                centerTitle: true,
                title: Text(
                  'Carpet UI',
                  style: Get.textTheme.titleMedium!.copyWith(
                    color: RGB.greyLight,
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: RGB.greyLight,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              body: provider.currentIndex == 0 ? const MapPage() : const OrderPage(),
              bottomNavigationBar: const NavBar(),
            );
          },
        );
      },
    );
  }
}
