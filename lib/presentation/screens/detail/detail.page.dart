import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/detail/detail_cubit.dart';
import 'package:marvel_app/presentation/screens/detail/detail.view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, int> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final int id = data['id']!;

    return Scaffold(
        body: BlocProvider(
      create: (context) => DetailCubit()..fetchDetail(id: id),
      child: DetailView(id: id),
    ));
  }
}
