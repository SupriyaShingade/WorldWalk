import 'package:WorldWalk/global/global_card_widget.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/home/controller/home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/common.dart';

class HomeMenuView extends GetView<HomeMenuController>
{
  const HomeMenuView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      // context: context, 
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios)),
        
        title: Text('\${업체명}', style: CommonTextStyle.black18Notosans700,),
        
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
      
      body: 
      Container(
        color: Colors.white,
        child: GlobalCardWidget(
          title: 'ㅇㅇ마사지',
          titleTextStyle: CommonTextStyle.black16Pretendard700, 
          descriptionTextStyle: CommonTextStyle.black15Pretendard500, 
          cardColor: Colors.white,
          subtitleTextStyle: CommonTextStyle.grey10Pretendard500,
        ),
      ),
    );
  }
}