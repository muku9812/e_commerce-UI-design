import 'package:ecommerce/utilities/routes/routesName.dart';
import 'package:ecommerce/views/accountView.dart';
import 'package:ecommerce/views/exploreView.dart';
import 'package:ecommerce/views/homeView.dart';
import 'package:ecommerce/views/loginView.dart';
import 'package:ecommerce/views/mainView.dart';
import 'package:ecommerce/views/myListingView.dart';
import 'package:ecommerce/views/myOrderView.dart';
import 'package:ecommerce/views/registerView.dart';
import 'package:ecommerce/views/sideBar.dart';
import 'package:flutter/material.dart';

import '../../views/myLikesView.dart';
import '../../views/splashView.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());
      case RoutesName.register:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Registerview());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RoutesName.main:
        return MaterialPageRoute(builder: (BuildContext context) => MainView());
      case RoutesName.sideBar:
        return MaterialPageRoute(
            builder: (BuildContext context) => SideBarView());
      case RoutesName.account:
        return MaterialPageRoute(
            builder: (BuildContext context) => MyAccountView());
      case RoutesName.order:
        return MaterialPageRoute(
            builder: (BuildContext context) => MyOrderView());
      case RoutesName.explore:
        return MaterialPageRoute(
            builder: (BuildContext context) => ExploreView());
      case RoutesName.like:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyLikeList());
      case RoutesName.listings:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyListingView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route defined."),
            ),
          );
        });
    }
  }
}
