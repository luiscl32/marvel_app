import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';

class DashboardHandlers {
  DashboardHandlers({required this.context});

  final BuildContext context;

  void onFetchNewComicsData({required offset}) async {
    await context
        .read<DashboardCubit>()
        .fetchData(endpoint: 'comics', offset: offset);
  }
}
