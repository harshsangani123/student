import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student/app/data/theme/colors.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(
    ScreenUtilInit(
      designSize: const Size(372, 812),
      builder: (context, child) {
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          home: child,
          theme: ThemeData(
              primaryColor: AppColors.primary,
              appBarTheme:
                  const AppBarTheme(backgroundColor: AppColors.primary)),
        );
      },
    ),
  );
}
