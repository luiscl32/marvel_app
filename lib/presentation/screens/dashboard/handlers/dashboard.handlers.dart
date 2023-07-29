import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';
import 'package:marvel_app/presentation/router/router.dart';

class DashboardHandlers {
  DashboardHandlers({required this.context});

  final BuildContext context;

  DashboardCubit _getCubit() {
    return context.read<DashboardCubit>();
  }

  void onFetchNewComicsData({required offset}) {
    _getCubit().fetchData(endpoint: 'comics', offset: offset);
  }

  void onSearch({required String title}) {
    print(title);

    if (title.isEmpty) {
      print('gotcha');
      retry();
    } else {
      print('here search');
      _getCubit().onSearch(title: title);
    }
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

  void retry() {
    _getCubit().retry();
    _getCubit().fetchData(endpoint: 'comics', offset: 0);
  }
}
