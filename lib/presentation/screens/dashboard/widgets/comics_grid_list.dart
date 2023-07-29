import 'package:flutter/material.dart';
import 'package:marvel_app/domain/models/marvel_general.model.dart';
import 'package:marvel_app/presentation/commons/widgets.dart';
import 'package:marvel_app/presentation/screens/dashboard/handlers/dashboard.handlers.dart';
import 'package:marvel_app/presentation/screens/dashboard/widgets/dashboard.widgets.dart';

class ComicsGridList extends StatefulWidget {
  const ComicsGridList({super.key, required this.marvelData});

  final List<Result> marvelData;

  @override
  State<ComicsGridList> createState() => _ComicsGridListState();
}

class _ComicsGridListState extends State<ComicsGridList> {
  int offset = 0;
  bool isFetching = false;
  final int nextOffset = 20;
  final ScrollController _scrollController = ScrollController();
  late DashboardHandlers _handlers;

  @override
  void initState() {
    super.initState();
    _handlers = DashboardHandlers(context: context);
    _scrollController.addListener(() {
      if ((_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent)) {
        if (isFetching) isFetching = true;
        offset = offset + nextOffset;
        setState(() {});
        _handlers.onFetchNewComicsData(offset: offset);

        isFetching = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Result> results = widget.marvelData;

    if (results.isEmpty) {
      return const SearchNotFound();
    }

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      controller: _scrollController,
      slivers: [
        const _ListTitle(),
        SliverGrid.builder(
          itemCount: results.length,
          itemBuilder: (_, index) {
            final _data = results[index];

            return ComicCard(
              onPress: () {
                _handlers.onNavigateToDetail(id: _data.id!);
              },
              path: _data.thumbnail!.path!,
              extension: _data.thumbnail!.extension!.toString(),
              title: _data.title!,
              issueNumber: _data.issueNumber.toString(),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 280,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ),
        const _ListLoader()
      ],
    );
  }
}

class _ListLoader extends StatelessWidget {
  const _ListLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
          width: double.infinity,
          height: 48,
          child: Center(child: CircularProgressIndicator())),
    );
  }
}

class _ListTitle extends StatelessWidget {
  const _ListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: Text(
          'Latest comics',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
