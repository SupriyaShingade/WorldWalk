import 'package:WorldWalk/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GlobalTabbarListWidget extends StatelessWidget {
  const GlobalTabbarListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    height: 110,
    // width: 100,

      child: GestureDetector(
        onTap: (){
          Get.toNamed('/premium_info');
        },
        child: Row(
                children: [       
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage(CommonImage.premiumImage,),fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 10,),
                    Text('ㅇㅇ마사지', style: CommonTextStyle.black16Pretendard700),
                           // SizedBox(height: 5),
                    Row(
                      children: [
                      Icon(Icons.location_on,size: 15,color: Color(0xff999999),),
                      SizedBox(width: 5,),
                      Text('SQ4 Diplomatic Complex, Nguyen Xuan Khoat st.,\nXuan Tao, Bac Tu Liem, Hanoi', style: TextStyle(fontSize: 10, color: Color(0xffD7D7D7)),)
                      ],
                    ),
                    Row(
                    children: [
                    Icon(Icons.schedule,size: 15,color: Color(0xff999999),),
                    SizedBox(width: 5,),
                    Text('06:00 ~ 15:00', style: TextStyle(fontSize: 10, color: Color(0xffD7D7D7)),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('29,000원~', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000)
                  ),
                ),   
                // SizedBox(height: 20,)             
              ],
            ),      
            SizedBox(height: 20,)          
         ],
        ),
        
      ),
      
    );                        
  }
}