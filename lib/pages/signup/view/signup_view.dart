import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/signup/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/common.dart';

class SignupView extends GetView<SignupController>
{
  const SignupView ({Key? key}): super(key:key);

  @override 
  Widget build(BuildContext context)
  {
    return GlobalLayoutWidget(
      context: context,
      body: 
      Container(
        color: CommonColor.mainColor,
        child: Padding(
          padding: EdgeInsets.only(top: 371.h, left: 71.w, right: 71.w, bottom: 80.h),
          child: Column(
            children: [
              Image.asset(CommonImage.worldWalkIcon),
              Spacer(),
              SizedBox(
                height: 62.h,
                width: 62.w,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/terms_conditions');
                  },
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child:
                  Image.asset(
                    CommonImage.googleIcon,
                    height: 40.h,
                    width: 40.w,
                  ),          
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
