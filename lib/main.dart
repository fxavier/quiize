import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:queezy/config/app_colors.dart';
import 'package:queezy/screens/screens.dart';
import 'package:queezy/store/store.dart';

void main() {
  setupLocators();
  runApp(const MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(NavigationStore());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Queezy',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: AppColors.kBackgroundColor),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}
