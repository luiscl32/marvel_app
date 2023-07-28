import 'package:flutter/material.dart';

class DetailHandlers {
  DetailHandlers(this.context);
  final BuildContext context;

  void onGoBack() {
    Navigator.pop(context);
  }
}
