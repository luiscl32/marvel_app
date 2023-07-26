import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/screens/screens.dart';

class ScreenPaths {
  ScreenPaths._();
  static const String dashboard = '/dashboard';
  static const String detail = '/detail';
}

class CustomRouter {
  CustomRouter._();
  static Map<String, WidgetBuilder> routes = {
    ScreenPaths.dashboard: (context) => const DashboardPage(),
    ScreenPaths.detail: (context) => const DetailPage(),
  };
}
