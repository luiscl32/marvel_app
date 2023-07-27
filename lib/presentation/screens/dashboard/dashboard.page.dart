import 'package:flutter/material.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';
import 'package:marvel_app/presentation/screens/dashboard/dashboard.view.dart';
import 'package:marvel_app/presentation/screens/dashboard/widgets/dashboard.widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardCubit()..fetchData(endpoint: 'comics', offset: 0),
      child: const Scaffold(
        appBar: DashboardAppbar(),
        body: DashboardView(),
      ),
    );
  }
}
