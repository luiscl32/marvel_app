import 'package:flutter/material.dart';
import 'package:marvel_app/domain/models/detail.model.dart';

class DetailCreators extends StatelessWidget {
  const DetailCreators({
    super.key,
    required this.creators,
  });

  final List<Item> creators;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Creators',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        GridView.builder(
            itemCount: creators.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 48,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemBuilder: (_, index) {
              final String name = creators[index].name!;
              final String role = creators[index].role!;

              return _CreatorInfo(
                name: name,
                role: role,
              );
            }),
      ],
    );
  }
}

class _CreatorInfo extends StatelessWidget {
  const _CreatorInfo({
    super.key,
    required this.name,
    required this.role,
  });

  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .25,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.red.shade600, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: _TextStyle(),
            ),
            Text(
              role,
              style: _TextStyle(),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _TextStyle() {
    return const TextStyle(
      fontSize: 12,
      color: Colors.white,
    );
  }
}
