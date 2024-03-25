import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/signup/controller/signup_terms_condition_controller.dart';
import 'package:WorldWalk/pages/signup/widget/terms_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupTermsConditionView extends GetView<SignupTermsConditionController>
{
  const SignupTermsConditionView ({Key? key}) : super(key: key);
  @override 
  
  Widget build(BuildContext context)
  {
    
    return GlobalLayoutWidget(
      context: context, 
      appBar: AppBar(
        title: Text('회원가입', style: CommonTextStyle.black24Pretendard700,),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                  '닉네임 입력',
                  style: CommonTextStyle.black16Pretendard700,
                ),
                SizedBox(height: 8.h,),
                TextField(
                  controller: controller.nicknameController,
                    cursorColor: CommonColor.greyColor,
                    decoration: InputDecoration(
                      hintText: '닉네임 입력',
                      filled: true,
                      fillColor: CommonColor.lightGreyColor,
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
              SizedBox(height: 40.h,),
              Text('이용약관', style: CommonTextStyle.black16Pretendard700,),

              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () {
                  controller.termsAccepted.toggle();
                },
                child: Row(
                  children: [
                    Obx(()=>
                    RoundedCheckbox(
                      isChecked: controller.termsAccepted.value == true ||( controller.term1Accepted.value == true && controller.term2Accepted.value == true && controller.term3Accepted.value == true && controller.term4Accepted.value == true),
                      onChanged: (value) {
                        controller.termsAccepted.value = value;
                      },
                    ),
                    ),
                    
                    SizedBox(width: 10),
                    Text('모두 동의', style: CommonTextStyle.black16Notosans700),
                    
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Text('서비스 사용을 위해 아래 세부 약관 내용에 전부 동의합니다.', style: CommonTextStyle.grey14Pretendard500,),
              SizedBox(height: 10.h,),
              Divider(),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  controller.term1Accepted.toggle();
                },
                child: Row(
                  children: [
                    Obx(()=>
                    RoundedCheckbox(
                      isChecked: controller.termsAccepted.value || controller.term1Accepted.value,

                      onChanged: (value) {
                        controller.term1Accepted.value = value;
                      },
                    ),
                    ),
                    SizedBox(width: 10),
                    Text('서비스 이용 약관 동의 (필수)', style: CommonTextStyle.black16Notosans500,),
                    
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Text('제품의 사용 조건과 서비스 이용 절차 등에 관한 사항을 규정하고 그 내용을 고지합니다. ', style: CommonTextStyle.grey12Pretendard500,),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  controller.term2Accepted.toggle();
                },
                child: Row(
                  children: [
                    Obx(()=>
                    RoundedCheckbox(
                      isChecked: controller.termsAccepted.value || controller.term2Accepted.value,
                      onChanged: (value) {
                        controller.term2Accepted.value = value;
                      },
                    ),
                    ),
                    SizedBox(width: 10),
                    Text('개인 정보 수집 및 이용 동의', style: CommonTextStyle.black16Notosans500,),

                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Text('회사가 서비스 이용자의 개인정보를 수집 또는 이용하기 위해 개인정보 사용에 대한 동의를 받습니다.', style: CommonTextStyle.grey12Pretendard500,),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  controller.term3Accepted.toggle();
                },
                child: Row(
                  children: [
                    Obx(()=>
                    RoundedCheckbox(
                      isChecked: controller.termsAccepted.value || controller.term3Accepted.value,
                      onChanged: (value) {
                        controller.term3Accepted.value = value;
                      },
                    ),
                    ),
                    SizedBox(width: 10),
                    Text('개인 정보 처리 방침 동의 (필수)', style: CommonTextStyle.black16Notosans500,),

                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Text('주민등록번호 등 이용자의 고유식별정보를 서비스에서 수집 또는 사용하기 위해 동의를 받습니다.', style: CommonTextStyle.grey12Pretendard500,),
              SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  controller.term4Accepted.toggle();
                },
                child: Row(
                  children: [
                    Obx(()=>
                    RoundedCheckbox(
                      isChecked: controller.termsAccepted.value || controller.term4Accepted.value,

                      onChanged: (value) {
                        controller.term4Accepted.value = value;
                      },
                      
                    ),
                    ),
                    
                    SizedBox(width: 10),
                    Text('위치 정보 처리 방침 동의 (필수)', style: CommonTextStyle.black16Notosans500,),

                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Text('주민등록번호 등 이용자의 고유식별정보를 서비스에서 수집 또는 사용하기 위해 동의를 받습니다.', style: CommonTextStyle.grey12Pretendard500,),
              Spacer(),
              Obx(()=>
              Center(
                child: GestureDetector(
                  onTap: () {
                    print('Terms accepted. Proceed!');
                    if(controller.termsAccepted.value == true ||( controller.term1Accepted.value == true && controller.term2Accepted.value == true && controller.term3Accepted.value == true && controller.term4Accepted.value == true))
                    {
                      Get.toNamed('/bottom_navigation_bar');
                    }
                  },      
                  child: Container(
                    height: 50.h,
                    width: double.infinity,
                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),

                          color: controller.termsAccepted.value == true ||( controller.term1Accepted.value == true && controller.term2Accepted.value == true && controller.term3Accepted.value == true && controller.term4Accepted.value == true)
                              ? CommonColor.mainColor
                              : CommonColor.lightMainColor,
                        ),
                    child: Center(child: Text('월드워크 시작하기', style: CommonTextStyle.white15Notosans700,)),
                  ),
                ),
              ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),    
        ),
      );
  }
}
