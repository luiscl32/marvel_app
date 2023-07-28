import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/screens/detail/widgets/detail.widgets.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DetailHeader(image: 'image', title: 'title'),
        DetailDescription(
          description: 'description',
          format: 'format',
          pages: 999,
          issueNumber: 999,
        ),
        DetailCreators(),
      ],
    );
  }
}
