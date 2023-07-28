import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';
import 'package:marvel_app/presentation/screens/detail/handlers/detail.handlers.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final DetailHandlers _handlers = DetailHandlers(context);

    return SizedBox(
      width: double.infinity,
      height: 320,
      child: Stack(
        children: [
          FadeInImage.assetNetwork(
            placeholder: Assets.loading,
            image: image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          _DescriptionTitle(title: title),
          _backButton(handlers: _handlers)
        ],
      ),
    );
  }
}

class _DescriptionTitle extends StatelessWidget {
  const _DescriptionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 100,
        color: Colors.black54,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _backButton extends StatelessWidget {
  const _backButton({
    super.key,
    required DetailHandlers handlers,
  }) : _handlers = handlers;

  final DetailHandlers _handlers;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          color: Colors.black54,
          padding: const EdgeInsets.only(top: 32),
          onPressed: _handlers.onGoBack,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 32,
          )),
    );
  }
}
