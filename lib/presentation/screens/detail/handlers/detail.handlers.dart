import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/detail/detail_cubit.dart';

class DetailHandlers {
  DetailHandlers(this.context);
  final BuildContext context;

  void onGoBack() {
    Navigator.pop(context);
  }

  void retry({required int id}) {
    context.read<DetailCubit>().fetchDetail(id: id);
  }
}
