import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_app/presentation/commons/assets/assets.dart';
import 'package:marvel_app/presentation/screens/dashboard/handlers/dashboard.handlers.dart';
import 'package:marvel_app/presentation/screens/dashboard/widgets/custom_search_bar.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardHandlers _handlers = DashboardHandlers(context: context);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: preferredSize.height,
      color: Colors.red.shade600,
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: SizedBox(
          width: double.maxFinite,
          height: 48,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.logo,
                width: 100,
                height: 40,
              ),
              Expanded(child: Container()),
              const CustomSearchBar()
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
