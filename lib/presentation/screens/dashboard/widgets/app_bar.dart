import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.red.shade600,
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(
              Assets.logo,
              width: 100,
              height: 40,
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
