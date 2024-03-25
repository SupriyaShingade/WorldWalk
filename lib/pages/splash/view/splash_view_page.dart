import 'package:WorldWalk/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../global/global_layout_widget.dart';
import '../controller/splash_controller.dart';

class SplashViewPage extends GetView<SplashController> {
  const SplashViewPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context)
  {
    Get.put(SplashController());
    return GlobalLayoutWidget(
      context: context, 
      body: Container(
        color: CommonColor.mainColor,
        child: Padding(
          padding: EdgeInsets.only(top: 231.h,),
          child: Column(
            children: [
              Image.asset('assets/world_walk_logo.png',
              
              height: 30,
              width: 450.w,
              ),
              Spacer(),
              Image.asset('assets/onboarding_icon.png',
              )
            ],
          ),
        ),
      ),
    
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   Get.put(SplashController());
  //   return GlobalLayoutWidget(
  //       context: context,
  //       isSafeArea: false,
  //       body: Container(
  //         decoration: const BoxDecoration(
  //           color: Colors.white,
  //           image: DecorationImage(
  //             image: AssetImage("assets/splash.png"),
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //       ));
  // }
}
