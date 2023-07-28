import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.description,
    required this.format,
    required this.pages,
    required this.issueNumber,
  });

  final String description;
  final String format;
  final int pages;
  final int issueNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        description,
        style: const TextStyle(fontSize: 16, color: Colors.black45),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
