import 'package:WorldWalk/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../global/global_layout_widget.dart';
import '../controller/translation_controller.dart';

class TranslationViewPage extends GetView<TranslationController> {
  TranslationViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalLayoutWidget(
      context: context,
      backgroundColor: Color(0xffEFEFEF),
      isSafeArea: false,
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140.h,
                    color: Color(0xff083591),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              controller.freeTransViKo();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Image.asset(
                                'assets/world_walk_logo.png',
                                width: 159.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                        ),

                        // const Spacer(),

                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     Text('더 정확한 번역',style: TextStyle(fontSize: 13.sp,color: Colors.white,fontWeight: FontWeight.w500),),
                        //     Padding(
                        //       padding: EdgeInsets.only(right: 5.w),
                        //       child: Obx(
                        //         () => Transform.scale(
                        //           scale: 0.6,
                        //           child: CupertinoSwitch(
                        //             activeColor: Colors.red,
                        //             trackColor: Colors.white.withOpacity(0.6),
                        //             value: controller.isPriemium.value,
                        //             onChanged: (bool value) {
                        //
                        //
                        //               controller
                        //                   .inputTextEditingController
                        //                   .clear();
                        //               controller
                        //                   .firstOutputTextEditingController
                        //                   .clear();
                        //               controller
                        //                   .secondOutputTextEditingController
                        //                   .clear();
                        //               controller.engToKor.value = '';
                        //               controller.vetToKor.value = '';
                        //               controller.engToVet.value = '';
                        //               controller.korToVet.value = '';
                        //
                        //               controller.isTyping.value = false;
                        //               controller.isTyping2.value = false;
                        //
                        //               controller.isPriemium.value = !controller.isPriemium.value;
                        //
                        //
                        //             },
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),

                  ///번역 입력
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 228.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Obx(
                              () => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 340.w,
                                    child: TextField(
                                      ///입력버튼 온체인지
                                      onChanged: (text) async {
                                        Future.delayed(
                                            Duration(milliseconds: 1500),
                                            () async {
                                          if (controller
                                                  .inputTextEditingController
                                                  .text ==
                                              text) {
                                            // controller.isTyping.value = false;

                                            await controller.freeTransEnKo();

                                            // if (controller.isKor.value) {
                                            //   await controller.getTranslation_papago();
                                            //   await controller.engTranslation();
                                            //   await controller.getTranslation_papago2();
                                            //
                                            //
                                            //
                                            // }else{
                                            //   await controller.getTranslation_google_cloud_translation();
                                            //   await controller.engTranslation();
                                            //
                                            //   await controller.getTranslation_google_cloud_translation2();
                                            // }

                                            controller.engToVet.value =
                                                controller.result_cloud_google2;
                                            controller.engToKor.value =
                                                controller.result_cloud_google3;
                                            print(
                                                '======================-------------=============================');
                                            print(controller.engToVet.value);

                                            await controller.getTyping();
                                          }
                                        });
                                      },
                                      textInputAction: TextInputAction.done,

                                      maxLines: null,
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                      controller:
                                          controller.inputTextEditingController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '번역할 내용을 입력해주세요',
                                        hintStyle: TextStyle(
                                            color: Color(0xff999999),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400),
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, top: 10.h),
                                      ),
                                    ),
                                  ),
                                  controller.isTyping.value
                                      ?

                                      ///전체 지우기
                                      Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  controller
                                                      .inputTextEditingController
                                                      .clear();
                                                  controller
                                                      .firstOutputTextEditingController
                                                      .clear();
                                                  controller
                                                      .secondOutputTextEditingController
                                                      .clear();
                                                  controller.engToKor.value =
                                                      '';
                                                  controller.vetToKor.value =
                                                      '';
                                                  controller.engToVet.value =
                                                      '';
                                                  controller.korToVet.value =
                                                      '';

                                                  controller.isTyping.value =
                                                      false;
                                                  controller.isTyping2.value =
                                                      false;
                                                },
                                                icon: Icon(
                                                  Icons.close,
                                                  size: 26.sp,
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  //지금 cursor 위치
                                                  int cursorPos = controller
                                                      .inputTextEditingController
                                                      .selection
                                                      .baseOffset;
                                                  print(
                                                      'cursorPos : $cursorPos');

                                                  //cursor 위치에 \n 추가
                                                  controller
                                                      .inputTextEditingController
                                                      .text = controller
                                                          .inputTextEditingController
                                                          .text
                                                          .substring(
                                                              0, cursorPos) +
                                                      '\n' +
                                                      controller
                                                          .inputTextEditingController
                                                          .text
                                                          .substring(cursorPos);

                                                  //cursor 위치를 \n 다음으로 이동
                                                  controller
                                                          .inputTextEditingController
                                                          .selection =
                                                      TextSelection.fromPosition(
                                                          TextPosition(
                                                              offset:
                                                                  cursorPos +
                                                                      1));
                                                },
                                                icon: Icon(
                                                  Icons.keyboard_return,
                                                  size: 26.sp,
                                                  color: CommonColor.mainColor
                                                      .withOpacity(0.7),
                                                )),
                                          ],
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                            Obx(
                              () => Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                    onPressed: () async {
                                      await controller.clearAll();
                                      controller.isTalking.value = true;
                                      controller.animation();
                                      await controller.initSpeechState();
                                      !controller.hasSpeechs.value ||
                                              controller.speech.isListening
                                          ? null
                                          : await controller.startListening();
                                    },
                                    icon: controller.isTalking.value
                                        ? Icon(
                                            Icons.mic,
                                            size: 26.sp,
                                            color: Colors.red.withOpacity(0.7),
                                          )
                                        : Icon(
                                            Icons.mic_none,
                                            size: 26.sp,
                                            color:
                                                Colors.black.withOpacity(0.5),
                                          )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// 언어 바꾸기
              Padding(
                padding: EdgeInsets.only(top: 110.h),
                child: Center(
                  child: Container(
                    width: 305.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      color: CommonColor.mainColor,
                      borderRadius: BorderRadius.circular(152.5.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 250.w,
                            height: 50.h,
                            child: Obx(
                              () => AnimatedAlign(
                                alignment: controller.isKor.value
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                duration: Duration(milliseconds: 300),
                                child: SizedBox(
                                    width: 50.w,
                                    child: Center(
                                        child: Text(
                                      'K.O.R',
                                      style: TextStyle(
                                          fontSize: 19.sp, color: Colors.white),
                                    ))),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 45.w,
                            height: 45.w,
                            child: ElevatedButton(
                                onPressed: () {
                                  controller.changeLanguage();
                                  controller.isTyping.value = false;
                                  controller.isTyping2.value = false;
                                },
                                style: ElevatedButton.styleFrom(
                                  //press color
                                  // onPrimary: Colors.red.withOpacity(0.1),

                                  // primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  shadowColor: Colors.black.withOpacity(0.1),
                                  elevation: 1,
                                ),
                                child: Image.asset(
                                  'assets/arrow-left-right-line.png',
                                  fit: BoxFit.cover,
                                  width: 22.w,
                                  height: 22.h,
                                )),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 250.w,
                            height: 50.h,
                            child: Obx(
                              () => Center(
                                child: AnimatedAlign(
                                  alignment: controller.isKor.value
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  duration: Duration(milliseconds: 300),
                                  child: SizedBox(
                                      width: 50.w,
                                      child: Center(
                                          child: Text(
                                        'V.N',
                                        style: TextStyle(
                                            fontSize: 19.sp,
                                            color: Colors.white),
                                      ))),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              ///영어 번역
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220.h,
                    decoration: BoxDecoration(
                      //border only
                      border: Border(
                        top: BorderSide(
                            width: 1.w, color: Colors.black.withOpacity(0.1)),
                      ),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 30.w),
                                    child: TextField(
                                      //scroll 막기
                                      scrollPhysics:
                                          NeverScrollableScrollPhysics(),
                                      maxLines: null,
                                      controller: controller
                                          .firstOutputTextEditingController,
                                      readOnly: true,
                                      style: TextStyle(
                                          fontSize: 19.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '영어 번역',
                                        hintStyle: TextStyle(
                                            color: Color(0xff999999),
                                            fontSize: 19.sp,
                                            fontWeight: FontWeight.w700),
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, top: 10.h),
                                      ),
                                    ),
                                  ),
                                ),
                                Obx(
                                  () => Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.w, top: 10.h),
                                    child: Text(
                                      controller.isKor.value
                                          ? controller.engToKor.value
                                          : controller.engToVet.value,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ///복사
                        Obx(
                          () => controller.isTyping.value
                              ? Align(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await controller.allFalse();

                                          controller.isEnglish = true;

                                          await controller.setTTS();

                                          controller.tts.speak(controller
                                              .firstOutputTextEditingController
                                              .text);
                                        },
                                        child: Icon(
                                          //megaphone
                                          Icons.volume_up,
                                          size: 24.sp,
                                          color: Colors.black.withOpacity(0.8),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            controller.copyEngText();
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            size: 24.sp,
                                            color:
                                                Colors.black.withOpacity(0.8),
                                          )),
                                    ],
                                  ))
                              : SizedBox(),
                        ),
                      ],
                    ),
                  ),

                  ///베트남어 번역
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffEFEFEF),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 230.h,
                        decoration: BoxDecoration(
                          //border only
                          border: Border(
                            top: BorderSide(
                                width: 1.w,
                                color: Colors.black.withOpacity(0.1)),
                          ),
                          // color: Color(0XffFF4534),
                          color: CommonColor.mainColor
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.h),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ///베트남어 또는 한국어 번역후 출력
                                      Obx(
                                        () => Padding(
                                          padding: EdgeInsets.only(right: 30.w),
                                          child: TextField(
                                            scrollPhysics:
                                                NeverScrollableScrollPhysics(),
                                            readOnly: true,
                                            maxLines: null,
                                            style: TextStyle(
                                                fontSize: 19.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                            controller: controller
                                                .secondOutputTextEditingController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: controller.isKor.value
                                                  ? '베트남어 출력'
                                                  : '한국어 출력',
                                              hintStyle: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.6),
                                                  fontSize: 19.sp,
                                                  fontWeight: FontWeight.w700),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.w, top: 10.h),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Obx(
                                        () => Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.w, top: 10.h),
                                          child: Text(
                                            controller.isKor.value
                                                ? controller.vetToKor.value
                                                : controller.korToVet.value,
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                                fontSize: 15.sp),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              ///복사
                              Obx(
                                () => controller.isTyping2.value
                                    ? Align(
                                        alignment: Alignment.topRight,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await controller.allFalse();

                                                controller.isKor.value
                                                    ? controller.isVietnam =
                                                        true
                                                    : controller.isKorean =
                                                        true;

                                                await controller.setTTS();

                                                controller.tts.speak(controller
                                                    .secondOutputTextEditingController
                                                    .text);
                                              },
                                              child: Icon(
                                                //megaphone
                                                Icons.volume_up,
                                                size: 24.sp,
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  controller.copyText();
                                                },
                                                icon: Icon(
                                                  Icons.copy,
                                                  size: 24.sp,
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                )),
                                          ],
                                        ))
                                    : SizedBox(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///화살표모양 번역 버튼
              Padding(
                padding: EdgeInsets.only(top: 200.h),
                child: Center(
                  child: SizedBox(
                    width: 110.w,
                    height: 50.h,
                    child: ElevatedButton(
                        onPressed: () async {
                          await controller.vetTranslation();

                          //
                          // if (controller.isKor.value) {
                          //   await controller.getTranslation_google_cloud_translation4();
                          //   controller.vetToKor.value = controller.result_cloud_google4;
                          // } else {
                          //   controller.getTranslation_google_cloud_translation5();
                          // }

                          controller.isTyping2.value = true;
                        },
                        style: ElevatedButton.styleFrom(
                          // primary: Color(0xff083591),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          shadowColor: Colors.black.withOpacity(0.9),
                          elevation: 4,
                        ),
                        child: Image.asset(
                          'assets/arrow.png',
                          width: 24.w,
                          height: 24.h,
                        )),
                  ),
                ),
              ),

              Obx(() => controller.isTalking.value
                  ? SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 475.h,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300.h,
                          color: Color(0xfff1f1f1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.h,
                                ),
                                child: Text(
                                  '아무 말이나 해 보세요.',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Color(0xff383B3F),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 180.r,
                                width: 180.r,
                                child: Center(
                                  child: AnimatedContainer(
                                    width: controller.isAnimation.value
                                        ? 135.r
                                        : 155.r,
                                    height: controller.isAnimation.value
                                        ? 135.r
                                        : 155.r,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      color: controller.isAnimation.value
                                          ? Colors.blue.withOpacity(0.5)
                                          : Colors.blue.withOpacity(0.1),
                                    ),
                                    duration: Duration(milliseconds: 700),
                                    child: Center(
                                      child: Container(
                                        width: 120.r,
                                        height: 120.r,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          color: Colors.blueAccent,
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/microphone.png',
                                            fit: BoxFit.fill,
                                            width: 60.r,
                                            height: 60.r,
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
