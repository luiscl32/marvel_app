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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              description.isEmpty
                  ? 'This Comic no have a description.'
                  : description,
              style: const TextStyle(fontSize: 16, color: Colors.black45),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Format: $format',
            style: _DescriptionText(),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Pages: $pages',
            style: _DescriptionText(),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Issue number: $issueNumber',
            style: _DescriptionText(),
          ),
        ],
      ),
    );
  }

  TextStyle _DescriptionText() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black45,
    );
  }
}
