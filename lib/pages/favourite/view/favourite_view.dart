import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/favourite/controller/favourite_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavouriteView extends GetView<FavouriteController>
{
  const FavouriteView ({Key? key}) : super(key:key);
    @override
    Widget build(BuildContext context)
    {
      return GlobalLayoutWidget
      (
        context: context, 
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text('WORLD WALK', style: CommonTextStyle.grey22Audiowise400, )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
                child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  child: Image.asset(CommonImage.favouriteCardImage),
                ),
                SizedBox(width: 5.w,),
                Column(
                  children: [
                    Text('ㅇㅇ마사지', style: CommonTextStyle.black16Pretendard700,),
                    SizedBox(height: 40.h,),
                    Text('29,000원~', style: CommonTextStyle.black16Pretendard700,),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){

                  },
                  child: Icon(Icons.clear, )),
                
              ],
            ),
            SizedBox(height: 20.h),
             Row(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  child: Image.asset(CommonImage.favouriteCardImage),
                ),
                SizedBox(width: 5.w,),
                Column(
                  children: [
                    Text('ㅇㅇ마사지', style: CommonTextStyle.black16Pretendard700,),
                    SizedBox(height: 40.h,),
                    Text('29,000원~', style: CommonTextStyle.black16Pretendard700,),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    
                  },
                  child: Icon(Icons.clear)),
              ],
            ),
          ],
                ),
          
          
            
          
            
            
            // ListView.builder(
            // itemCount: 2,
            // itemBuilder: (context, index) {
            //   return ListWidget(
            //     title: 'ㅇㅇ마사지',
                
            //     subtitle: '29,000원~',
            
            //     onTap: () {
            //       print('Tapped on item $index');
            //     },
            //   );
            // },
            //       ),
                
          
          
          
          // Scaffold(
          //   body: Padding(
          //     padding: const EdgeInsets.all(18.0),
          //     child: ListView(
          //             children: [
          //     ListWidget(title: 'List 1'),
          //             ],
          //           ),
          //   ),
          // ),
          ),
        ),
      );
  }
}