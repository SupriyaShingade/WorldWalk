
import 'package:WorldWalk/pages/bottom_navigation/view/bottom_navigation_view.dart';
import 'package:WorldWalk/pages/home/binding/home_binding.dart';
import 'package:WorldWalk/pages/home/binding/map_binding.dart';
import 'package:WorldWalk/pages/home/binding/premium_binding.dart';
import 'package:WorldWalk/pages/home/binding/home_menu_binding.dart';
import 'package:WorldWalk/pages/home/binding/premium_info_binding.dart';
import 'package:WorldWalk/pages/home/binding/search_binding.dart';
import 'package:WorldWalk/pages/home/binding/search_tabbar_binding.dart';
import 'package:WorldWalk/pages/home/binding/tourist_info_binding.dart';

import 'package:WorldWalk/pages/home/view/home_view.dart';
import 'package:WorldWalk/pages/home/view/map_view.dart';
import 'package:WorldWalk/pages/home/view/premium_info_view.dart';
import 'package:WorldWalk/pages/home/view/premium_view.dart';
import 'package:WorldWalk/pages/home/view/home_menu_view.dart';
import 'package:WorldWalk/pages/home/view/search_tabbar_view.dart';
// import 'package:WorldWalk/pages/home/widget/search_tabbar_widget.dart';
import 'package:WorldWalk/pages/home/view/tourist_info_view.dart';
import 'package:WorldWalk/pages/introduction/bindings/introduction_binding.dart';
import 'package:WorldWalk/pages/introduction/view/introduction_view_page.dart';
import 'package:WorldWalk/pages/profile/binding/nickname_binding.dart';
import 'package:WorldWalk/pages/profile/binding/profile_binding.dart';
import 'package:WorldWalk/pages/profile/view/nickname_view.dart';
import 'package:WorldWalk/pages/profile/view/profile_view.dart';
import 'package:WorldWalk/pages/signup/binding/signup_binding.dart';
import 'package:WorldWalk/pages/signup/binding/signup_terms_condition_binding.dart';
import 'package:WorldWalk/pages/signup/controller/signup_controller.dart';
import 'package:WorldWalk/pages/signup/view/signup_terms_condition_view.dart';
import 'package:WorldWalk/pages/signup/view/signup_view.dart';
import 'package:WorldWalk/pages/translation/bindings/translation_binding.dart';
import 'package:WorldWalk/pages/translation/view/translation_view_page.dart';
import 'package:get/get.dart';

import '../pages/bottom_navigation/binding/bottom_navigation_binding.dart';
import '../pages/home/view/search_view.dart';
import '../pages/splash/bindings/splash_binding.dart';
import '../pages/splash/view/splash_view_page.dart';


class GetXRouter {
  static final route = [

    // GetPage(
    //     name: '/',
    //     page: () => const OnboardingScreen1View(),
    //     binding: OnboardingScreen1Binding(),
    //     popGesture: true,
    //   ),


    ///스플래시
    GetPage(
        name: '/',
        page: () => const SplashViewPage(),
        binding: SplashBinding(),
        popGesture: true),

    ///소개
    GetPage(
        name: '/introduction',
        page: () =>  IntroductionViewPage(),
        binding: IntroductionBinding(),
        popGesture: true),

    ///번역
    GetPage(
        name: '/translation',
        page: () =>  TranslationViewPage(),
        binding: TranslationBinding(),
        popGesture: true),

    GetPage(
      name: '/signup',
      page: () =>  SignupView(),
      binding: SignupBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/terms_conditions',
      page: () => const SignupTermsConditionView(),
      binding: SignupTermsConditionBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/bottom_navigation_bar',
      page: () => BottomNavigationView(),
      binding: BottomNavigationBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/home_view',
      page: () => HomeView(),
      binding: HomeBinding(),
      popGesture: true,
      ),
     GetPage(
      name: '/tourist_info_view',
      page: () => TouristInfoWidget(),
      binding: TouristInfoBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/search_view',
      page: () => const SearchView(),
      binding: SearchBinding(),
      popGesture: true,
      ),
      GetPage(
      name: '/tabbar_view',
      page: () => const SearchTabbarView(),
      binding: SearchTabbarBinding(),
      popGesture: true,
      ),
      GetPage(
      name: '/premium_view',
      page: () => PremiumView(),
      binding: PremiumBinding(),
      popGesture: true,
      ),
      GetPage(
      name: '/premium_info',
      page: () => PremiumInfoView(),
      binding:  PremiumInfoBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/nickname_view',
      page: () => const NickNameView(),
      binding: NickNameBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/profile_view',
      page: () => const ProfileView(),
      binding: ProfileBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/signup',
      page: () => const SignupView(),
      binding: SignupBinding(),
      popGesture: true,
      ),
    GetPage(
      name: '/translation', 
      page: () => TranslationViewPage(),
      binding: TranslationBinding(),
      popGesture: true,
    ),
     GetPage(
      name: '/home_menu_view', 
      page: () => HomeMenuView(),
      binding: HomeMenuBinding(),
      popGesture: true,
    ),
     GetPage(
      name: '/map_view', 
      page: () => MapView(),
      binding: MapBinding(),
      popGesture: true,
    ),
  ];
}
