import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/screens/dashboard/widgets/dashboard.widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DashboardAppbar(),
      body: Center(
        child: Text('DashboardPage'),
      ),
    );
  }
}
