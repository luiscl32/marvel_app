import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';

class ComicCard extends StatelessWidget {
  const ComicCard({
    super.key,
    required this.title,
    required this.path,
    required this.extension,
    required this.issueNumber,
    required this.onPress,
  });

  final String title;
  final String issueNumber;

  final String path;
  final String extension;
  final VoidCallback onPress;

  String getImage() => '$path.$extension';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
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
    final width = MediaQuery.of(context).size.width * .48;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: width,
        child: Stack(
          children: [
            _ComicImage(
              imageUrl: imageUrl,
            ),
            _ComicDescription(
              title: title,
              issueNumber: issueNumber,
            )
          ],
        ),
      ),
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width * .48,
        height: 80,
        padding: const EdgeInsets.all(10),
        color: Colors.black54,
        child: Center(
          child: Text(
            '$title #$issueNumber',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
      width: double.maxFinite,
      height: 280,
      child: FadeInImage.assetNetwork(
        placeholder: Assets.loading,
        image: imageUrl,
        fit: BoxFit.fill,
        width: double.maxFinite,
        height: 280,
      ),
    );
  }
}
