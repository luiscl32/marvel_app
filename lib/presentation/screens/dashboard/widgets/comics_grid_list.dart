import 'package:flutter/material.dart';
import 'package:marvel_app/domain/models/marvel_general.model.dart';
import 'package:marvel_app/presentation/commons/widgets.dart';

class ComicsGridList extends StatelessWidget {
  const ComicsGridList({super.key, required this.marvelData});

  final Data marvelData;

  @override
  Widget build(BuildContext context) {
    List<Result> results = marvelData.results!;

    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemCount: results.length,
          itemBuilder: (_, index) {
            final _data = results[index];

            return ComicCard(
              path: _data.thumbnail!.path!,
              extension: _data.thumbnail!.extension!.toString(),
              title: _data.title!,
              issueNumber: _data.issueNumber.toString(),
            );
          },
        ),
      ],
    );
  }
}
