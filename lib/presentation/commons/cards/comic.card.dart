import 'package:flutter/material.dart';

class ComicCard extends StatelessWidget {
  const ComicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey.shade200),
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: _ComicInfo(),
    );
  }
}

class _ComicInfo extends StatelessWidget {
  const _ComicInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ComicImage(),
        SizedBox(
          width: 12,
        ),
        _ComicDescription()
      ],
    );
  }
}

class _ComicDescription extends StatelessWidget {
  const _ComicDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Ttile'),
          SizedBox(
            height: 10,
          ),
          Text('puplic data'),
          SizedBox(
            height: 5,
          ),
          Text(
              'Reprehenderit duis nostrud est nostrud nisi labore et ad sunt non nisi ea veniam. Quis et ad commodo occaecat culpa aliquip quis in reprehenderit. Dolor eu duis laboris irure veniam. Irure tempor culpa excepteur cupidatat ad ea.'),
        ],
      ),
    );
  }
}

class _ComicImage extends StatelessWidget {
  const _ComicImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 220,
      child: FadeInImage.assetNetwork(
        placeholder: 'https://media.giphy.com/avatars/marvel/4IT2uG6Wq1ia.gif',
        image:
            'https://upload.wikimedia.org/wikipedia/en/a/a8/The-Boys_Volume_One.jpg',
        fit: BoxFit.fill,
        width: 140,
        height: 220,
      ),
    );
  }
}
