import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/home/controller/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MapView extends GetView<MapController>
{
  const MapView ({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      // floatingActionButtonLocation :FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Get.toNamed('/translation');
        print('Floating Action button is Pressed');
      },
      child: Image.asset(CommonImage.floatingImage),
      backgroundColor: CommonColor.mainColor,
      shape: CircleBorder(),
 
      ),
      body: Center(
        child: Stack(

          children: [ 
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

            
            
            Container(
            height: MediaQuery.sizeOf(context).height,
            child: 
            GestureDetector(
              onTap: (){
           showModalBottomSheet(
            
                      context: context,
                      builder: (context) {
                        return  SizedBox(
                          height: 420.h,
                          child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Container(
                                    
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        ExactAssetImage(CommonImage.premiumImage),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                height: 195.h,
                                width: double.infinity,
                              ),
          
                              Padding(padding: EdgeInsets.fromLTRB(18, 7, 18, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                    Text(
                                      'ㅇㅇ마사지',
                                      // style: CommonTextStyle.grey10Pretendard500,
                                      style: CommonTextStyle.black16Pretendard700,
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(CommonImage.vectorIcon),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'SQ4 Diplomatic Complex, Nguyen Xuan Khoat st.,\nXuan Tao, Bac Tu Liem, Hanoi',
                                          style:
                                              CommonTextStyle.grey10Pretendard500,
                                          // style: CommonTextStyle.lightGrey10Pretendard500,
                                        ),
                                      ],
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
                                          // style: subtitleTextStyle,
                                          style:
                                              CommonTextStyle.grey10Pretendard500,
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
                                          // style: subtitleTextStyle,
                                          style:
                                              CommonTextStyle.grey10Pretendard500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Row(
                                      children: [
                                        Text('29,000원~',
                                            // style: titleTextStyle,
                                            style: CommonTextStyle
                                                .black16Pretendard700),
                                                
                                        Spacer(),
                                        Image.asset(CommonImage.locationIcon),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          '0.8km',
                                          // style: descriptionTextStyle,
                                          style: CommonTextStyle
                                              .black15Pretendard500,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
          
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: CommonColor.mainColor),
                                          child: Center(
                                            child: Text(
                                              '월드워크 시작하기',
                                              style: CommonTextStyle
                                                  .white15Notosans700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
          
                                ],
                              ),
                              
                              )
                                ],
                              ),
                        );
                        // return Wrap(
                        //   children: [
                        //     ListTile(
                        //       leading: Icon(Icons.share),
                        //       title: Text('Share'),
                        //     ),
                        //     ListTile(
                        //       leading: Icon(Icons.copy),
                        //       title: Text('Copy Link'),
                        //     ),
                        //     ListTile(
                        //       leading: Icon(Icons.edit),
                        //       title: Text('Edit'),
                        //     ),
                        //   ],
                        // );
                      }
           );
           
                
          
              },
              
              child: Image.asset('assets/mapImage.png',fit: BoxFit.cover,)),
          ),
          ]
        ),
      ),
    );
  }



 



// void _launchGoogleMaps() async {
//     const url = 'https://www.google.com/maps';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
}