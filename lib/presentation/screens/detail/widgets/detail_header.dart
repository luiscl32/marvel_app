import 'package:flutter/material.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';

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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.black54,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
