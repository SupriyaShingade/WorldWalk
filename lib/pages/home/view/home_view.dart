import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController>
{
  HomeView({Key? key}) : super(key:key);

    @override
    Widget build(BuildContext context)
    {
      return GlobalLayoutWidget(
        context: context, 
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Container(
            child: GestureDetector(
              onTap: (){
                Get.toNamed('map_view');
              },
              child: Image.asset(CommonImage.mapIcon)),
          ),
          title: Center(child: Text('WORLD WALK', style: CommonTextStyle.grey22Audiowise400, )),
          actions: [
            GestureDetector(
              onTap: (){
                Get.toNamed('/search_view');
                print('clicked');
              },
              child: Icon(Icons.search)),
            Text('    '),
          ],
        ),
        body: 
        SingleChildScrollView(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.toNamed('/premium_view');
              },
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.h,
                  aspectRatio: 16  / 9,
                  
                  viewportFraction: 1,
                ),
                items: List.generate( 10,
    (index) => Stack(
      children: [
        Container(

          child: Image.asset(
            CommonImage.homeImage,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        Positioned(
         
          bottom: 3.h,
          right: 10.w,
           child: Container(
            
            padding: EdgeInsets.all(5.0),
            child: Text(
              '  ${index + 1} / 10  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
              ),
                
              ),
              
              
            ),
            SizedBox(height: 40), 
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/map_view');
              print('Tap on Travel');
            },
            child: Column(
              children: [
                Image.asset(
                  CommonImage.travelIcon,
                  width: 80.w,
                  height: 80.h,
                ),
                Text('지도',style: CommonTextStyle.black10Inter400,),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/translation');
              print('Tap on Translate');
            },
            child: Column(
              children: [
                Image.asset(
                  CommonImage.translateIcon,
                  width: 80.w,
                  height: 80.h,
                ),
                Text('번역',style: CommonTextStyle.black10Inter400,),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/home_menu_view');
              print('Tap on Juice');
            },
            child: Column(
              children: [
                Image.asset(
                  CommonImage.lemonJuiceIcon,
                  width: 80.w,
                  height: 80.h,
                ),
                Text('바',style: CommonTextStyle.black10Inter400,),
              ],
            ),
          ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/home_menu_view');
              print('Tap on Community');
            },
            child: Column(
              children: [
                Image.asset(
                  CommonImage.communityIcon,
                  width: 80.w,
                  height: 80.h,
                ),
                Text('클럽',style: CommonTextStyle.black10Inter400,),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/home_menu_view');
              print('Tap on Talent');
            },
            child: Column(
              children: [
                Image.asset(
                  CommonImage.talentIcon,
                  width: 80.w,
                  height: 80.h,
                ),
                Text('마사지',style: CommonTextStyle.black10Inter400,),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/home_menu_view');
              print('Tap on Restaurant');
            },
            child: Column(
              children: [
                Image.asset(
                  CommonImage.restaurantIcon,
                  width: 80.w,
                  height: 80.h,
                ),
                Text('음식',style: CommonTextStyle.black10Inter400,),
              ],
            ),
          ),
                ],
              ),
              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text("오늘의 BEST 명소", style: CommonTextStyle.black14Inter700,),
              ),
              SizedBox(height: 20.h,),
              CarouselSlider(
              options: CarouselOptions(
                height: 259.h,
                aspectRatio: 16  / 9,
                
                viewportFraction: 0.9
              ),
              items: List.generate(
    10,
    (index) => Stack(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed('/tourist_info_view');
          },
          child: Container(
          
            child: Image.asset(
              CommonImage.carouselImage,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
        ),
        Positioned(
         
          top: 10.0,
          right: 10.0,
           child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25.r)
            ),
            padding: EdgeInsets.all(5.0),
            child: Text(
              '  ${index + 1} / 10  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Container(
            // decoration: BoxDecoration(
            //   color: Colors.black.withOpacity(0.5),
            //   borderRadius: BorderRadius.circular(8.0),
            // ),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '베트남',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    
                  ),
                ),
                Text(
                  '베트남 과일섬',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
              ),
              
            ),
            SizedBox(height: 30.h,),
          ],
                ),
        ),
    );
  }
}