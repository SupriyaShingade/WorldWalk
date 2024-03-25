import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/home/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchEditController>
{
  const SearchView ({Key? key}) : super(key:key);

  @override 
  Widget build(BuildContext context)
  {
    
    return GlobalLayoutWidget(
      context: context, 
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(kToolbarHeight),
      //   child: Padding(
      //     padding: EdgeInsets.only(top: 20.h),
      //     child: 
      //   ),
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                    },
                  child: Icon(Icons.arrow_back_ios)),
          //       IconButton
          //        (
          //         icon: Icon(Icons.arrow_back_ios),
          //         onPressed: () {
          //           Get.back();
          //   },
          // ),
                Expanded(
                  child: TextField(
                    controller: controller.searchEditController,
                    cursorColor: CommonColor.greyColor,
                    decoration: InputDecoration(
                      
                      hintText: '닉네임 입력',
                      filled: true,
                      fillColor: CommonColor.lightGreyColor,
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), // Increase border radius
                        borderSide: BorderSide.none, // Remove the border side
                      ),
                      // border: InputBorder.none
                     
                    ),
                  ),
                ),
                // SizedBox(width: 10.w,),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Get.toNamed('/tabbar_view');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Text('최근 검색어', style: CommonTextStyle.black16Pretendard700,),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 7, 
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('검색어 ${index + 1}'),
                      ),
                      IconButton(
                        icon: Icon(Icons.clear, color: CommonColor.greyColor,),
                        onPressed: () {
                         
                        },
                      ),
                    ],
                  ),
                  // onTap: () {
                  //   // Handle tapping on history item
                  // },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

