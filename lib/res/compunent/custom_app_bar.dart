import 'package:flutter/material.dart';
import 'package:job_task/utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title, subtitle;
  final bool customBackButton, center;

  const CustomAppBar({super.key, required this.title, required this.subtitle, this.customBackButton = true, this.center = false});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: center,
      backgroundColor: AppColor.primaryColor,
      leading: customBackButton
          ? IconButton(
              icon: Image.asset('assets/icons/back.png'),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColor.whiteColor,
              fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
                color: AppColor.whiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w500

            ),
          )
        ],
      ),
    );
  }
}
