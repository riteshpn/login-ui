import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ui_project/burger.dart';
import 'package:ui_project/login.dart';
import 'package:ui_project/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      // 'burger': (context) => MyBurger()
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
    },
  ));
}
