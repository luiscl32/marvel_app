import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';

class ComicCard extends StatelessWidget {
  const ComicCard({
    super.key,
    required this.title,
    required this.path,
    required this.extension,
    required this.issueNumber,
  });

  final String title;
  final String issueNumber;

  final String path;
  final String extension;

  String getImage() => '$path.$extension';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey.shade200),
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: _ComicInfo(
        imageUrl: getImage(),
        title: title,
        issueNumber: issueNumber,
      ),
    );
  }
}

class _ComicInfo extends StatelessWidget {
  const _ComicInfo({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.issueNumber,
  });

  final String imageUrl;
  final String title;
  final String issueNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ComicImage(
          imageUrl: imageUrl,
        ),
        const SizedBox(
          width: 12,
        ),
        _ComicDescription(
          title: title,
          issueNumber: issueNumber,
        )
      ],
    );
  }
}

class _ComicDescription extends StatelessWidget {
  const _ComicDescription({
    super.key,
    required this.title,
    required this.issueNumber,
  });

  final String title;
  final String issueNumber;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 4,
          ),
          Text(title),
          const SizedBox(
            height: 4,
          ),
          Text('#$issueNumber'),
        ],
      ),
    );
  }
}

class _ComicImage extends StatelessWidget {
  const _ComicImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 220,
      child: FadeInImage.assetNetwork(
        placeholder: Assets.loading,
        image: imageUrl,
        fit: BoxFit.fill,
        width: 140,
        height: 220,
      ),
    );
  }
}
