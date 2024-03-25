import 'dart:async';
import 'package:WorldWalk/common/service/firebase_options.dart';
import 'package:WorldWalk/route/route.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'common/service/firebase_options.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    runApp(ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
          builder: (context, child) {
            return MediaQuery(
              //화면마다 각각 다르게 css를 주는 함수
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!, // child는 null이 아님을 해서 에러 방지 해둠.
            );
          },
          theme: ThemeData(fontFamily: 'Pretendard'),
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          initialRoute: '/',
          getPages: GetXRouter.route),
    ));
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}