import 'package:WorldWalk/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GlobalCardWidget extends StatelessWidget {
  

  // final int itemCount;
  final String title;
  final TextStyle subtitleTextStyle;
  // final Text subtitle2;
  // final Text subtitle3;
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;
  final Color cardColor;


GlobalCardWidget({
  super.key, 
  // required this.itemCount,
  required this.title,
  required this.subtitleTextStyle,
  // required this.subtitle2,
  // required this.subtitle3,
  required this.titleTextStyle,
  required this.descriptionTextStyle,
  required this.cardColor
});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 18.w, left: 18.w, top: 16.h),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/premium_info');
                },
                child: Container(
                  height: 360,
                  width: 350,
                  child: Card(
                    elevation: 5,
                    // color: Color(0xff6B6B6B),
                    color: cardColor,
                    
                    child: Column(    
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage(CommonImage.premiumImage),
                                fit: BoxFit.fill,
                               ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          height: 170,
                          width: double.infinity,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only( left: 12.w, right: 12.w, bottom: 11.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: titleTextStyle,
                                // style: CommonTextStyle.white16Pretendard700,
                              ),
                              SizedBox(height: 8.h,),
                              Row(
                                children: [
                                  Image.asset(CommonImage.vectorIcon),
                                  SizedBox(width: 5.w,),
                                  Text('SQ4 Diplomatic Complex, Nguyen Xuan Khoat st.,\nXuan Tao, Bac Tu Liem, Hanoi',
                                  style: subtitleTextStyle,
                                  // style: CommonTextStyle.lightGrey10Pretendard500,
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.h,),
                               Row(
                                children: [
                                  Image.asset(CommonImage.timeIcon),
                                  SizedBox(width: 5.w,),
                                  Text('06:00 ~ 15:00',
                                  style: subtitleTextStyle,
                                  // style: CommonTextStyle.lightGrey10Pretendard500,
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.h,),
                               Row(
                                children: [
                                  Image.asset(CommonImage.callIcon),
                                  SizedBox(width: 5.w,),
                                  Text('039-869-1111',
                                  style: subtitleTextStyle,
                                  // style: CommonTextStyle.lightGrey10Pretendard500,
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.h,),
                               Row(
                                children: [
                                  Text('29,000원~',
                                  style: titleTextStyle,
                                  // style: CommonTextStyle.white16Pretendard700
                                  ),
                                  Spacer(),
                                  Image.asset(CommonImage.locationIcon),
                                  SizedBox(width: 4.w,),
                                  Text('0.8km', 
                                  style: descriptionTextStyle,
                                  // style: CommonTextStyle.white15Pretendard500,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
  }
}