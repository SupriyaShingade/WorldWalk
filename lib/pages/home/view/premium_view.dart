import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_card_widget.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/home/controller/premium_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PremiumView extends GetView<PremiumController>
{
  const PremiumView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      // context: context, 
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios, 
            color: CommonColor.whiteColor,
            ),
          ),
        
        title: Text('\${업체명}', style: CommonTextStyle.white18Notosans700,),
        
        backgroundColor: Color(0xff2C2C2C),
      ),

      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Get.toNamed('/translation');
        print('Floating Action button is Pressed');
      },
      child: Image.asset(CommonImage.floatingImage),
      backgroundColor: CommonColor.mainColor,
      shape: CircleBorder(),
      // elevation: 0,

      ),
      
      body: Container(
        color: Color(0xff2C2C2C),
        child: GlobalCardWidget(
          cardColor: Color(0xff6B6B6B),
          title: '[프리미엄] ㅇㅇ마사지',
          titleTextStyle: CommonTextStyle.white15Pretendard700,
          descriptionTextStyle: CommonTextStyle.white15Pretendard500,
          subtitleTextStyle: CommonTextStyle.lightGrey10Pretendard500,
        ),
      ),
    );
  }
}