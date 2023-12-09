import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/perfil/arara.png",
              height: 43.h,
            ),
            Icon(
              Icons.search,
              size: 32.h,
              color: Colors.grey[600],
            ),
          ],
        ),
      ],
    );
  }
}
