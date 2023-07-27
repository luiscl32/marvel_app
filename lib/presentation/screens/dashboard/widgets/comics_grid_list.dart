import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/dashboard/dashboard_cubit.dart';
import 'package:marvel_app/domain/models/marvel_general.model.dart';
import 'package:marvel_app/presentation/commons/widgets.dart';

class ComicsGridList extends StatefulWidget {
  const ComicsGridList({super.key, required this.marvelData});

  final List<Result> marvelData;

  @override
  State<ComicsGridList> createState() => _ComicsGridListState();
}

class _ComicsGridListState extends State<ComicsGridList> {
  int offset = 0;
  bool isFetching = false;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if ((_scrollController.position.pixels + 500 >=
          _scrollController.position.maxScrollExtent)) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void fetchData() async {
    if (isFetching) return;

    isFetching = true;
    setState(() {});
    offset = offset + 20;
    setState(() {});

    await context
        .read<DashboardCubit>()
        .fetchData(endpoint: 'comics', offset: offset);
    setState(() {
      isFetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Result> results = widget.marvelData;

    return CustomScrollView(
      controller: _scrollController,
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
