import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';
import 'package:marvel_app/presentation/screens/dashboard/widgets/dashboard.widgets.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (_, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const Center(
            child: Text('loading'),
          ),
          loaded: (marvelData) => ComicsGridList(marvelData: marvelData),
          error: () => const Center(
            child: Text('error'),
          ),
        );
      },
    );
  }
}
