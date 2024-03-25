import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/global/global_tabbar_list.dart';
import 'package:WorldWalk/pages/home/controller/search_tabbar_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchTabbarView extends GetView<SearchTabbarController> {
  const SearchTabbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // appBar: AppBar(
        //   leadingWidth: 50,
          
        //   leading: GestureDetector(
        //       onTap: () {
        //         Get.back();
        //       },
        //       child: Expanded(
        //         child: Container(
        //           // width : 60,
                
        //           color: Colors.red,
        //           alignment: Alignment.center,
                
        //           child: Icon(Icons.arrow_back_ios)),
        //       ),
        //   ),
        //   title: TextField(
        //     controller: controller.searchEditingController,
        //     cursorColor: CommonColor.greyColor,
        //     decoration: InputDecoration(
        //       hintText: '닉네임 입력',
        //       filled: true,
        //       fillColor: CommonColor.lightGreyColor,

        //       border: OutlineInputBorder(
        //         borderRadius:
        //             BorderRadius.circular(20), // Increase border radius
        //         borderSide: BorderSide.none, // Remove the border side
        //       ),
        //       // border: InputBorder.none
        //     ),
        //   ),
        //   actions: [
        //     GestureDetector(onTap: () {}, child: Icon(Icons.search)),
        //     SizedBox(
        //       width: 18.w,
        //     )
        //   ],
        // ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      },
                    child: SizedBox(
                      width: 30,
                      child: Center(child: Icon(Icons.arrow_back_ios)))),
                  Expanded(
                    child: TextField(
                      controller: controller.searchEditingController,
                      cursorColor: CommonColor.greyColor,
                      decoration: InputDecoration(
                        
                        hintText: '닉네임 입력',
                        filled: true,
                        fillColor: CommonColor.lightGreyColor,
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                       
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
              
              TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 5, color: Color(0xff637EB3)),
                    insets: EdgeInsets.symmetric(horizontal: 40.0)),
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    text: '전체',
                  ),
                  Tab(text: '바'),
                  Tab(text: '클럽'),
                  Tab(text: '마사지'),
                  Tab(text: '음식'),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: TabBarView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '총 7개',
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                // return Text("ahdshdsd");
                                return GlobalTabbarListWidget();
                              },
                            // ),
                                        ),
                          ),
                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '총 7개',
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                // return Text("ahdshdsd");
                                return GlobalTabbarListWidget();
                              },
                              // ),
                            ),
                          ),
                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '총 7개',
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                // return Text("ahdshdsd");
                                return GlobalTabbarListWidget();
                              },
                            // ),
                                        ),
                          ),
                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '총 7개',
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                // return Text("ahdshdsd");
                                return GlobalTabbarListWidget();
                              },
                              // ),
                            ),
                          ),
                        ],
                      ),
          
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '총 7개',
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                // return Text("ahdshdsd");
                                return GlobalTabbarListWidget();
                              },
                              // ),
                            ),
                          ),
                        ],
                      ),
                    
                  
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       '총 7개',
                      //       style: TextStyle(
                      //         color: const Color(0xff000000),
                      //         fontSize: 12,
                      //         fontFamily: 'Pretendard',
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Column(
                      //           children: [
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       '총 7개',
                      //       style: TextStyle(
                      //         color: const Color(0xff000000),
                      //         fontSize: 12,
                      //         fontFamily: 'Pretendard',
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Column(
                      //           children: [
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       '총 7개',
                      //       style: TextStyle(
                      //         color: const Color(0xff000000),
                      //         fontSize: 12,
                      //         fontFamily: 'Pretendard',
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Column(
                      //           children: [
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       '총 7개',
                      //       style: TextStyle(
                      //         color: const Color(0xff000000),
                      //         fontSize: 12,
                      //         fontFamily: 'Pretendard',
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Column(
                      //           children: [
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //             GlobalTabbarListWidget(),
                      //             SizedBox(
                      //               height: 20,
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
