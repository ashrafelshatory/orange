import 'package:flutter/material.dart';
import 'package:orange/Student.dart';
import 'package:orange/fristhome.dart';
import 'package:orange/login.dart';
import 'package:orange/newsODCS.dart';
import 'package:orange/signup.dart';
import 'package:orange/splash_screen.dart';
import 'package:orange/support.dart';
import 'package:orange/view_model/Database/network/dio_helper.dart';

import 'inhome/home.dart';

void main() {
  DioHelper.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home:SplashScreen(),);
  }
}

