import 'package:flutter/material.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Text(
        'Not comics found for this search',
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
