import 'package:ecommerce/views/exploreView.dart';
import 'package:ecommerce/views/homeView.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../controller/mainscreenProvider.dart';
import '../utilities/widgets/bottomNavBar.dart';
import 'myLikesView.dart';

// ignore: must_be_immutable
class MainView extends StatelessWidget {
  MainView({super.key});
  List<Widget> pageList = const [
    HomeView(),
    ExploreView(),
    MyLikeList(),
    MyLikeList(),
    MyLikeList()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNavBar(),
      );
    });
  }
}
