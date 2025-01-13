import 'package:flashlight/flash_light_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/configs/constants/string_constants.dart';
import '../../../../core/configs/styles/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.sunny,
              color: AppColors.ffd8b0e,
              size: 80.w,
            ),
            35.verticalSpace,
            const Text(
              Strings.flashLight1,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            50.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    width: 150.w,
                    decoration: const BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.circle),
                    child: Text("sds"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
