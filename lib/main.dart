import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_setting/screen/home/provider/home_provider.dart';
import 'package:ui_setting/screen/home/view/and_screen.dart';
import 'package:ui_setting/screen/home/view/ios_screen.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>HomeProvider(),
        ),
      ],
      child: Platform.isAndroid ? IOSView() : androidView(),
    ),
  );
}

Widget androidView() {
  return MaterialApp(
    routes: {
      '/': (context) => const HomeScreen(),
    },
  );
}

Widget IOSView() {
  return CupertinoApp(
    routes: {
      '/': (p0) => const iosscreen(),
    },
  );
}


