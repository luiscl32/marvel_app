import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/bloc/detail/detail_cubit.dart';
import 'package:marvel_app/domain/models/detail.model.dart';
import 'package:marvel_app/presentation/commons/widgets.dart';
import 'package:marvel_app/presentation/screens/detail/handlers/detail.handlers.dart';
import 'package:marvel_app/presentation/screens/detail/widgets/detail.widgets.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    DetailHandlers _handlers = DetailHandlers(context);
    return BlocBuilder<DetailCubit, DetailState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const ShimmerDetail(),
          loaded: (result) => _Detail(
            result: result,
          ),
          error: () => ErrorView(
            onPress: () => _handlers.retry(
              id: id,
            ),
          ),
        );
      },
    );
  }
}

class _Detail extends StatelessWidget {
  const _Detail({
    super.key,
    required this.result,
  });

  final Result result;

  @override
  Widget build(BuildContext context) {
    final String path = result.thumbnail!.path!;
    final String extension = result.thumbnail!.extension!;
    final String title = result.title ?? 'This comic no have a title';
    final String description =
        result.description ?? 'this comic no have a description';
    final String format = result.format!.toString();
    final int pages = result.pageCount!;
    final int issueNumber = result.issueNumber!;
    final List<Item> creators = result.creators!.items!;

    final String image = '$path.$extension';

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailHeader(
            image: image,
            title: title,
          ),
          DetailDescription(
            description: description,
            format: format,
            pages: pages,
            issueNumber: issueNumber,
          ),
          DetailCreators(
            creators: creators,
          ),
        ],
      ),
    );
  }
}
