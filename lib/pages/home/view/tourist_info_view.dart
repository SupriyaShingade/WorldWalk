import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/home/controller/tourist_info_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TouristInfoWidget extends GetView<TouristInfoController> {
  const TouristInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLayoutWidget(
      context: context, 
      body: Stack(
        children: [
          Container(
            height: 320.h,
            width: double.infinity,
            child: Image.asset(CommonImage.carouselImage, fit: BoxFit.cover,),
          ),
          Positioned(
            top: 16.h,
            left: 16.w,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: CommonColor.whiteColor,),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            // top: 300.h,
            // left: 0,
            // right: 0,
            // bottom: 0,
            child: Container(
              height: 540.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: CommonColor.whiteColor,
              ),
              child: Column(

                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, left: 18.w, right: 18.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('베트남 과일섬',style: CommonTextStyle.black16Pretendard700,),
                        SizedBox(height: 18.h,),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/map_view');
                          },
                          child: Row(
                            children: [
                              Image.asset(CommonImage.vectorIcon),
                              SizedBox(width: 5.w,),
                              Text('SQ4 Diplomatic Complex, Nguyen Xuan Khoat st.,\nXuan Tao, Bac Tu Liem, Hanoi', 
                              style: CommonTextStyle.grey10Pretendard500,)
                            ],
                          ),
                        ),
                        SizedBox(height: 6.h,),
                        Row(
                          children: [
                            Image.asset(CommonImage.locationIcon),
                            SizedBox(width: 5.w,),
                            Text('0.8km',
                            style: CommonTextStyle.grey10Pretendard500,)
                          ],
                        ),
                        
                      ],
                    ),
                    
                    
                    // Container(
                    //       height: 12.h,
                    //       width: double.infinity,
                    //       color: CommonColor.deepLightGreyColor,
                    //     )
                  ),
                  SizedBox(height: 34.h),
                    Container(
                      height: 12.h,
                      width: double.infinity,
                      color: CommonColor.deepLightGreyColor,
                    ),
                    // SizedBox(height: 18.h,),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text('관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 관광지 설명 텍스트 ', 
                      style: CommonTextStyle.black14Pretendard400,),
                    )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}