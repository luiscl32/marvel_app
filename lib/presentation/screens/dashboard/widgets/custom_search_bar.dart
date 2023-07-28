import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      searchBoxWidth: MediaQuery.of(context).size.width * 0.6,
      textEditingController: TextEditingController(),
      isOriginalAnimation: false,
      trailingWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
      secondaryButtonWidget: const Icon(
        Icons.close,
        size: 20,
        color: Colors.black,
      ),
      buttonWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
      onFieldSubmitted: (value) => value,
    );
  }
}
