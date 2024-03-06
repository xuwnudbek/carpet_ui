import 'package:carpet_ui/controllers/storage/storage_service.dart';
import 'package:carpet_ui/pages/auth/login.dart';
import 'package:carpet_ui/pages/auth/register.dart';
import 'package:carpet_ui/pages/home/home.dart';
import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  MainProvider() {
    chechAuth();
  }

  void chechAuth() {}
}

enum MainPages { home, login, register }
