import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/profile/controller/profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController>
{
  const ProfileView ({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      // context: context, 
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('WORLD WALK', style: CommonTextStyle.grey22Audiowise400,)),
      
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Get.toNamed('/translation');
        print('Floating Action button is Pressed');
      },
      child: Image.asset(CommonImage.floatingImage),
      backgroundColor: CommonColor.mainColor,
      shape: CircleBorder(),

      ),
      
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: CommonColor.mainColor,
              height: 180.h,
              width: double.infinity,
              child: Image.asset(CommonImage.onboardIcon),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('닉네임123 님', style: CommonTextStyle.black18Pretendard700,),
                  
                
                Text('안녕하세요!', style: CommonTextStyle.black18Pretendard400,),
                SizedBox(height: 30.h,),
                Container(
                  height: 20.h,
                  width: 100.w,
                  child: ElevatedButton(
                    onPressed: () 
                    {
                      Get.toNamed('/nickname_view');
                    },
                      style: ElevatedButton.styleFrom
                      (
                      shape: RoundedRectangleBorder
                      (
                      borderRadius: BorderRadius.circular(50.r),
                      ),
                      backgroundColor: CommonColor.mainColor
                    ),
                    child: Center(child: Text('닉네임 변경>', style: CommonTextStyle.white11Pretendard600,)),          
                  ),
                  
                ),
                  ],
                ),
              ),
            ),
          SizedBox(height: 200.h,),
          Container(
            height: 10.h,
            width: double.infinity,
            color: CommonColor.lightGreyColor,
          ),
          SizedBox(
            height: 30.h,
          ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        print('Clicked on Terms and Condition');
                      },
                      child: Text('이용약관', style: CommonTextStyle.black16Pretendard400,)),
                    SizedBox(height: 50.h,),
                    GestureDetector(
                      onTap: (){
                      Get.toNamed('/signup');
                    },
                    child: Text('로그아웃', style: CommonTextStyle.black16Pretendard400,)),
                    SizedBox(height: 20.h,),    
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}