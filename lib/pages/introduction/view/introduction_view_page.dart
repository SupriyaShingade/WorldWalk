import 'package:WorldWalk/common/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../global/global_layout_widget.dart';
import '../controller/introduction_controller.dart';

class IntroductionViewPage extends GetView<IntroductionController> {
  const IntroductionViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/introduction.png"),
            fit: BoxFit.cover,
          )),
      child: GlobalLayoutWidget(

          context: context,
          backgroundColor: Colors.transparent,
          isSafeArea: false,
          body: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 240.h),
                child: Center(child: Image.asset('assets/app_logo.png',width: 204.w,height: 122.h,)),
              ),

              const Spacer(),
              Container(width: MediaQuery.of(context).size.width,height: 249.h,decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 28.h),
                  Text('환영합니다',style: TextStyle(fontSize: 22.sp,color: Colors.black,fontWeight: FontWeight.w700),),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 43.h),
                    child: Text('월드 워커를 사용하여 정확한 번역을 해보세요',style: TextStyle(fontSize: 14.sp,color: Color(0xff999999),fontWeight: FontWeight.w400),),
                  ),
                  InkWell(
                      onTap: () async {
                        Get.offAllNamed('/translation');
                        await SecureStorage.write(SecureStorageKeys.run, 'T');

                      },
                      child: Container(width: 354.w,height: 48.h,decoration: BoxDecoration(color: Color(0xffFF4534),borderRadius: BorderRadius.circular(6.r)),child: Center(child: Text('시작하기',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16.sp),)),))
                ],
              ),
              ),

            ],
          ),
          ),
    );
  }
}
