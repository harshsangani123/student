import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/theme/colors.dart';
import '../../../data/theme/styles.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/primary_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('ID Card Generator', style: Styles.bold(18, AppColors.white)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PrimaryButton(
              onPressed: () {
                // Get.toNamed(Routes.);
              },
              child: Text("Users", style: Styles.bold(18, AppColors.white))),
          SizedBox(
            height: 15.h,
          ),
          PrimaryButton(
              onPressed: () {
                Get.toNamed(Routes.ADMIN_SIDE);
              },
              child: Text(
                "Admin",
                style: Styles.bold(18, AppColors.white),
              ))
        ],
      ),
    );
  }
}
