import 'package:carpet_ui/controllers/main_provider.dart';
import 'package:carpet_ui/pages/auth/login.dart';
import 'package:carpet_ui/pages/home/home.dart';
import 'package:carpet_ui/utils/theme_data2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainProvider>(
      create: (context) => MainProvider(),
      builder: (context, snapshot) {
        return Consumer<MainProvider>(
          builder: (context, provider, _) {
            return GetMaterialApp(
              theme: ThemeData(
                textTheme: ThemeData2.textTheme,
                fontFamily: "Montserrat",
                useMaterial3: true,
              ),
              home: const HomePage(),
            );
          },
        );
      },
    );
  }
}
