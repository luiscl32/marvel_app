import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';
import 'package:marvel_app/presentation/router/router.dart';

class DashboardHandlers {
  DashboardHandlers({required this.context});

  final BuildContext context;

  void onFetchNewComicsData({required offset}) async {
    await context
        .read<DashboardCubit>()
        .fetchData(endpoint: 'comics', offset: offset);
  }

  void onSearch({required String title}) async {
    await context.read<DashboardCubit>().onSearch(title: title);
  }

  void onNavigateToDetail({required int id}) {
    Navigator.pushNamed(
      context,
      ScreenPaths.detail,
      arguments: {
        'id': id,
      },
    );
  }
}
