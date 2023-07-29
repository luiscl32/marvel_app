import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';
import 'package:marvel_app/presentation/commons/widgets.dart';
import 'package:marvel_app/presentation/screens/dashboard/handlers/dashboard.handlers.dart';
import 'package:marvel_app/presentation/screens/dashboard/widgets/dashboard.widgets.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardHandlers _handlers = DashboardHandlers(context: context);

    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (_, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const ShimmerCardList(),
          loaded: (marvelData) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: ComicsGridList(marvelData: marvelData),
          ),
          error: () => ErrorView(
            onPress: () => _handlers.retry(),
          ),
        );
      },
    );
  }
}
