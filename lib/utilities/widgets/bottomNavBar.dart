import 'dart:io';

import 'package:ecommerce/utilities/routes/routesName.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

import '../../controller/mainscreenProvider.dart';
import 'bottomNavWidget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    if (pickedImage != null) {
      File imageFile = File(pickedImage.path);
      // Process or display the captured image as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BotomNavWidget(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.home);
                  mainScreenNotifier.pageIndex = 0;
                },
                icon: mainScreenNotifier.pageIndex == 0
                    ? Icons.home
                    : Icons.home_outlined,
              ),
              BotomNavWidget(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.explore);
                    mainScreenNotifier.pageIndex = 1;
                  },
                  icon: mainScreenNotifier.pageIndex == 1
                      ? Icons.explore
                      : Icons.explore_outlined),
              BotomNavWidget(
                onTap: () {
                  _takePhoto();
                  mainScreenNotifier.pageIndex = 2;
                },
                icon: mainScreenNotifier.pageIndex == 2
                    ? Ionicons.camera
                    : Ionicons.camera_outline,
              ),
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 3;
                  Navigator.pushNamed(context, RoutesName.like);
                },
                icon: mainScreenNotifier.pageIndex == 3
                    ? Ionicons.heart
                    : Ionicons.heart_outline,
              ),
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 4;
                },
                icon: mainScreenNotifier.pageIndex == 4
                    ? Ionicons.chatbox
                    : Ionicons.chatbox_outline,
              ),
            ],
          ),
        ),
      ));
    });
  }
}
