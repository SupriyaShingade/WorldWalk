import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/home/controller/premium_info_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PremiumInfoView extends GetView<PremiumInfoController> {
  PremiumInfoView({Key? key}) : super(key: key);

  Rx<Color> iconColor = Rx<Color>(Colors.white);


  changePage( int index){
    controller.pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // context: context,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/translation');
          print('Floating Action button is Pressed');
        },
        child: Image.asset(CommonImage.floatingImage),
        backgroundColor: CommonColor.mainColor,
        shape: CircleBorder(),
        // elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 320.h,
                  width: double.infinity,
                  child: Image.asset(
                    CommonImage.premiumImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 16.h,
                  left: 16.w,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: CommonColor.whiteColor,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Positioned(
                  top: 16.h,
                  right: 16.w,
                  child: Obx(
                    () => IconButton(
                      icon: Icon(
                        Icons.star,
                        color: controller.isStarYellow.value
                            ? Colors.yellow
                            : CommonColor.whiteColor,
                      ),
                      onPressed: () {
                        controller.toggleStarColor();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ㅇㅇ마사지',
                    style: CommonTextStyle.black16Pretendard700,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed('/map_view');                    },
                    child: Row(
                      children: [
                        Image.asset(CommonImage.vectorIcon),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'SQ4 Diplomatic Complex, Nguyen Xuan Khoat st.,\nXuan Tao, Bac Tu Liem, Hanoi',
                          style: CommonTextStyle.grey10Pretendard500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Image.asset(CommonImage.timeIcon),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '06:00 ~ 15:00',
                        style: CommonTextStyle.grey10Pretendard500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Image.asset(CommonImage.callIcon),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '039-869-1111',
                        style: CommonTextStyle.grey10Pretendard500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      Image.asset(CommonImage.locationIcon),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '0.8km',
                        style: CommonTextStyle.grey10Pretendard500,
                      ),
                      Spacer(),
                      Text(
                        '29,000원~',
                        style: CommonTextStyle.black16Pretendard700,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Container(
                    height: 250.h,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDADADA)),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 32.h, horizontal: 24.w),
                      child: Text(
                        '숙련된 마사지사들과 최신식 설비와 장비로 진정한 베트남의 정취를 보여드립니다.\n\n한국인 사장과 한국어 가능한 직원들이 따로 있습니다.\n\n언제든지 편안한 마음으로 지친 몸과 마음의 피로를 풀어드리겠습니다.',
                        style: CommonTextStyle.grey14Pretendard500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
            Container(
              height: 12.h,
              color: CommonColor.lightGreyColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '메뉴',
                    style: CommonTextStyle.black16Pretendard700,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          changePage(0);
                         },
                        child: Obx( ()=>Container(
                          height: 27.h,
                          width: 67.w,
                          decoration: BoxDecoration(
                            color: controller.currentIndex == 0 ? CommonColor.mainColor : Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Text('메뉴1', style: TextStyle(color: controller.currentIndex == 0 ? Colors.white : Colors.black))),
                        ),
                        )
                      ),
                      SizedBox(width: 7.w,),
                      GestureDetector(
                        onTap: () {
                          changePage(1);

                         },
                        child: Obx( ()=>Container(
                          height: 27.h,
                          width: 67.w,
                          decoration: BoxDecoration(
                            color: controller.currentIndex == 1 ? CommonColor.mainColor : Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Text('메뉴2', style: TextStyle(color: controller.currentIndex == 1 ? Colors.white : Colors.black))),
                        ),
                        )
                      ),
                      SizedBox(width: 7.w,),
                      GestureDetector(
                        onTap: () {
                          changePage(2);

                         },
                        child: Obx( ()=>  Container(
                          height: 27.h,
                          width: 67.w,
                          decoration: BoxDecoration(
                            color: controller.currentIndex == 2 ? CommonColor.mainColor : Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Text('메뉴3', style: TextStyle(color: controller.currentIndex == 2 ? Colors.white : Colors.black))),
                        ),
                        )
                      ),
                    ],
                  ),
                  
                    SizedBox(height: 18.h,),


                  SizedBox(
                    height: 600,
                    child: PageView(
                      controller: controller.pageController,
                      onPageChanged: (index) {
                        // setState(() {
                          controller.currentIndex.value = index  ;
                        // });
                      },
                      children: <Widget>[
                        Container(
                          height: 411.h,
                          width: double.infinity,
                          child: Image.asset(CommonImage.premiumMenuImage, fit: BoxFit.fill,),
                          ),
                        Container(
                          // color: Colors.blue,
                         
                            child: Text('메뉴판\n\n텍스트메뉴 1 - 10,000\n텍스트메뉴 2 - 20,000', style: CommonTextStyle.black14Pretendard400,),
                            
                          
                         
                        ),
                        Container(
                          // color: Colors.green,
                          child: Center(
                            child: Text(
                              'Tab 3',
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                    SizedBox(height: 18.h,),
                  
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: CommonColor.mainColor),
                        child: Center(
                          child: Text(
                            '월드워크 시작하기',
                            style: CommonTextStyle.white15Notosans700,
                          ),
                          
                        ),
                        
                      ),
                    ),
              
                  ),
                  SizedBox(height: 18.h,)

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );

    //
  }

  void _onMenuTap(int index) {
    controller.pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
