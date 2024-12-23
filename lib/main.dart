import 'package:flutter/material.dart';
import 'package:flutter_fit_app/presentation/router/router.dart';
import 'package:flutter_fit_app/presentation/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FitApp',
      theme: createDarkTheme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
