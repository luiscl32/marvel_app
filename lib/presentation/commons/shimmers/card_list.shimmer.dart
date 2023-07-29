import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';
import 'package:marvel_app/presentation/commons/widgets.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCardList extends StatelessWidget {
  const ShimmerCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 280,
          ),
          itemBuilder: (_, __) => Container(
            width: MediaQuery.of(context).size.width * .48,
            height: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
          ),
          itemCount: 50,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
