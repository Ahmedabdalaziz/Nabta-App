import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/color.dart';
import 'package:graduation_project/core/theming/style_manager.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/core/widgets/indecator.dart';
import 'package:graduation_project/features/signup/ui/signup_screen.dart';

import '../../../core/widgets/dark_custom_text_field.dart';

class SecondSignup extends StatelessWidget {
  const SecondSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();

    return SignupScreen(
      customContent: Column(
        children: [
          verticalSpace(38.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "البريد الألكتروني",
                textAlign: TextAlign.right,
                style: CairoTextStyles.extraBold.copyWith(
                    fontSize: 20.sp, color: ColorsManager.secondGreen),
              ),
              horizontalSpace(32.sp),
            ],
          ),
          verticalSpace(12.sp),
          SizedBox(
            width: 400.w,
            height: 56.h,
            child: DarkCustomTextField(
              textAlign: TextAlign.right,
              labelText: "أدخل بريدك الألكتروني",
              borderCircular: 50.sp,
              controller: emailController,
              textColor: ColorsManager.white,
            ),
          ),
          verticalSpace(28.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "رقم الهاتف",
                textAlign: TextAlign.left,
                style: CairoTextStyles.extraBold.copyWith(
                    fontSize: 20.sp, color: ColorsManager.secondGreen),
              ),
              horizontalSpace(32.sp),
            ],
          ),
          verticalSpace(12.sp),
          SizedBox(
            width: 400.w,
            height: 56.h,
            child: DarkCustomTextField(
              labelText: "ادخل رقم الهاتف",
              borderCircular: 50.sp,
              controller: phoneController,
              textColor: ColorsManager.grey,
              isPassword: true,
            ),
          ),
          verticalSpace(64.sp),
          SizedBox(
            height: 56.h,
            width: 400.w,
            child: DarkCustomTextButton(
              text: 'أرسل كود التحقق للبريد الألكتروني',
              textStyle: CairoTextStyles.extraBold
                  .copyWith(fontSize: 20.sp, color: ColorsManager.white),
              onPressed: () {
                final email = emailController.text;
                final phone = phoneController.text;
              },
            ),
          ),
          verticalSpace(100),
          SizedBox(
            width: 80.w,
            height: 80.h,
            child: GestureDetector(
              onTap: () {},
              child: CircleProgressBar(
                animationDuration: const Duration(seconds: 1),
                backgroundColor: Colors.grey.shade300,
                foregroundColor: ColorsManager.secondGreen,
                value: 0.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
