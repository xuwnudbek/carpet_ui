import 'package:carpet_ui/pages/home/home.dart';
import 'package:carpet_ui/utils/rgb_colors.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RGB.greyLight,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: RGB.greyLight,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: RGB.blue),
                        boxShadow: [
                          BoxShadow(
                            color: RGB.blue,
                            blurRadius: 20.0,
                            offset: const Offset(0, 10),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: RGB.blue),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(border: InputBorder.none, hintText: "Telefon Raqam", hintStyle: TextStyle(color: Colors.grey[700])),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(border: InputBorder.none, hintText: "Parol", hintStyle: TextStyle(color: Colors.grey[700])),
                            ),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const HomePage());
                  },
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 1900),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            RGB.blue,
                            RGB.darkBlue,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Kirish",
                          style: TextStyle(color: RGB.greyLight, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 2000),
                  child: Text(
                    "Parolni unutdingizmi",
                    style: TextStyle(color: RGB.blue),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
