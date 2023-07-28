import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/screens/detail/detail.view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, int> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final id = data['id'];

    return const Scaffold(body: DetailView());
  }
}
