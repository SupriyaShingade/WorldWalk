import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/nickname_controller.dart';

class NickNameView extends GetView<NickNameController> {
  const NickNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLayoutWidget(
      context: context,
      appBar: AppBar(
        title: Text('Change Nickname'),
        ),
      
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 30.w, top: 20.w, bottom: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '닉네임 입력',
              style: CommonTextStyle.black16Pretendard700,
            ),
            SizedBox(height: 10.h),
            TextField(
              controller: controller.nicknameController,
              decoration: InputDecoration(
              hintText: '닉네임 입력',
              filled: true,
              fillColor: CommonColor.lightGreyColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                
              ),
              
              focusedBorder: OutlineInputBorder( 
              
              borderSide: BorderSide(
                color: CommonColor.mainColor,
              width: 1.0,
      ),
    ),
  ),
  onChanged: (value) {
    if (value.length >= 3 && value.length <= 10) {
      controller.isButtonActive.value = true;
    } else {
      controller.isButtonActive.value = false;
    }
  },
),
            const Spacer(),

            InkWell(
  onTap: controller.isButtonActive.value
      ? () async {
          Get.toNamed('/profile_view');
        }
      : null,
  child: Obx(
    () => Container(
      width: double.infinity, 
      height: 50.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: controller.isButtonActive.value
            ? CommonColor.mainColor
            : CommonColor.lightMainColor,
      ),
      child: Center(
        child: 
          Text('Change Completed', style: CommonTextStyle.white15Pretendard700,)
                  ),
                ),
              ),
            ),
          ],
        ),   
      ), 
    );
  }
}