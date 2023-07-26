import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: CustomRouter.routes,
      initialRoute: ScreenPaths.dashboard,
    );
  }
}
