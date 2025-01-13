
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
              Icons.flashlight_on,
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
            100.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 180.w,
                    height: 180.w,
                    decoration: BoxDecoration(
                        color: AppColors.ffd8b0e.withOpacity(0.1),
                        shape: BoxShape.circle),
                  ),
                  Container(
                    width: 140.w,
                    height: 140.w,
                    decoration: BoxDecoration(
                        color: AppColors.ffd8b0e.withOpacity(0.4),
                        shape: BoxShape.circle),
                  ),
                  Container(
                    width: 100.w,
                    height: 100.w,
                    decoration: const BoxDecoration(
                        color: AppColors.ffd8b0e, shape: BoxShape.circle),
                    child: Icon(
                      Icons.power_settings_new,
                      size: 70.w,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
