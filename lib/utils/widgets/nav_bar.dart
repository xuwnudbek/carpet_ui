import 'package:carpet_ui/controllers/main_provider.dart';
import 'package:carpet_ui/pages/home/provider/home_provider.dart';
import 'package:carpet_ui/utils/rgb_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return BottomNavigationBar(
        backgroundColor: RGB.darkBlue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: 'Xarita',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.online_prediction_rounded,
            ),
            label: 'Zakaz',
          ),
        ],
        currentIndex: provider.currentIndex,
        //
        selectedItemColor: RGB.greyLight,
        unselectedItemColor: RGB.blue,
        onTap: (index) {
          provider.changeIndex(index);
        },
      );
    });
  }
}
