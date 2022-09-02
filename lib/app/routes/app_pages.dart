import 'package:get/get.dart';

import 'package:eduapp/app/modules/authenticationscreen/bindings/authenticationscreen_binding.dart';
import 'package:eduapp/app/modules/authenticationscreen/views/authenticationscreen_view.dart';
import 'package:eduapp/app/modules/bottomnavigationscreen/bindings/bottomnavigationscreen_binding.dart';
import 'package:eduapp/app/modules/bottomnavigationscreen/views/bottomnavigationscreen_view.dart';
import 'package:eduapp/app/modules/detailsscreen/bindings/detailsscreen_binding.dart';
import 'package:eduapp/app/modules/detailsscreen/views/detailsscreen_view.dart';
import 'package:eduapp/app/modules/home/bindings/home_binding.dart';
import 'package:eduapp/app/modules/home/views/home_view.dart';
import 'package:eduapp/app/modules/homescreen/bindings/homescreen_binding.dart';
import 'package:eduapp/app/modules/homescreen/views/homescreen_view.dart';
import 'package:eduapp/app/modules/homescrren/bindings/homescrren_binding.dart';
import 'package:eduapp/app/modules/homescrren/views/homescrren_view.dart';
import 'package:eduapp/app/modules/profilescreen/bindings/profilescreen_binding.dart';
import 'package:eduapp/app/modules/profilescreen/views/profilescreen_view.dart';
import 'package:eduapp/app/modules/screenfive/bindings/screenfive_binding.dart';
import 'package:eduapp/app/modules/screenfive/views/screenfive_view.dart';
import 'package:eduapp/app/modules/screenfour/bindings/screenfour_binding.dart';
import 'package:eduapp/app/modules/screenfour/views/screenfour_view.dart';
import 'package:eduapp/app/modules/signupscreen/bindings/signupscreen_binding.dart';
import 'package:eduapp/app/modules/signupscreen/views/signupscreen_view.dart';
import 'package:eduapp/app/modules/slidablescreen/bindings/slidablescreen_binding.dart';
import 'package:eduapp/app/modules/slidablescreen/views/slidablescreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATIONSCREEN,
      page: () => AuthenticationscreenView(),
      binding: AuthenticationscreenBinding(),
    ),
    GetPage(
      name: _Paths.HOMESCREEN,
      page: () => HomescreenView(),
      binding: HomescreenBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATIONSCREEN,
      page: () => BottomnavigationscreenView(),
      binding: BottomnavigationscreenBinding(),
    ),
    GetPage(
      name: _Paths.HOMESCRREN,
      page: () => HomescrrenView(),
      binding: HomescrrenBinding(),
    ),
    GetPage(
      name: _Paths.DETAILSSCREEN,
      page: () => DetailsscreenView(),
      binding: DetailsscreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILESCREEN,
      page: () => ProfilescreenView(),
      binding: ProfilescreenBinding(),
    ),
    GetPage(
      name: _Paths.SCREENFOUR,
      page: () => ScreenfourView(),
      binding: ScreenfourBinding(),
    ),
    GetPage(
      name: _Paths.SCREENFIVE,
      page: () => ScreenfiveView(),
      binding: ScreenfiveBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPSCREEN,
      page: () => SignupscreenView(),
      binding: SignupscreenBinding(),
    ),
    GetPage(
      name: _Paths.SLIDABLESCREEN,
      page: () => SlidablescreenView(),
      binding: SlidablescreenBinding(),
    ),
  ];
}
