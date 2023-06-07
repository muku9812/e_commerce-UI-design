import 'package:ecommerce/utilities/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../utilities/constant.dart';
import '../utilities/routes/routesName.dart';
import '../utilities/utilities.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();

class SideBarView extends StatefulWidget {
  const SideBarView({super.key});

  @override
  State<SideBarView> createState() => _SideBarViewState();
}

class _SideBarViewState extends State<SideBarView> {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signOutGoogle() async {
    try {
      await _googleSignIn.signOut();
      print("User signed out successfully");
    } catch (e) {
      print("Error occurred while signing out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 71, left: 25, right: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      appName,
                      style: GoogleFonts.dosis(
                          fontSize: 32, fontWeight: FontWeight.w800),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Ionicons.close_outline,
                        size: 60,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75, bottom: 10),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.account);
                    },
                    child: Container(
                      height: 88,
                      width: 346,
                      decoration: BoxDecoration(
                        color: AppColors.sidebarItemColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Ionicons.person_outline,
                              size: 50,
                            ),
                          ),
                          title: Text(
                            'My Account',
                            style: GoogleFonts.firaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: AppColors.sidebarTextColor),
                          ),
                          subtitle: Text(
                            'Edit your details, account settings',
                            style: GoogleFonts.firaSans(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.order);
                    },
                    child: Container(
                      height: 88,
                      width: 346,
                      decoration: BoxDecoration(
                        color: AppColors.sidebarItemColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: const Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Ionicons.bag_handle_outline,
                              size: 50,
                            ),
                          ),
                          title: Text(
                            'My Order',
                            style: GoogleFonts.firaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: AppColors.sidebarTextColor),
                          ),
                          subtitle: Text(
                            'View all your order',
                            style: GoogleFonts.firaSans(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.listings);
                    },
                    child: Container(
                      height: 88,
                      width: 346,
                      decoration: BoxDecoration(
                        color: AppColors.sidebarItemColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: const Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Icons.list,
                              size: 50,
                            ),
                          ),
                          title: Text(
                            'My Listings',
                            style: GoogleFonts.firaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: AppColors.sidebarTextColor),
                          ),
                          subtitle: Text(
                            'View your product listings for sale',
                            style: GoogleFonts.firaSans(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 46),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.like);
                    },
                    child: Container(
                      height: 88,
                      width: 346,
                      decoration: BoxDecoration(
                        color: AppColors.sidebarItemColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: const Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Ionicons.heart_outline,
                              size: 50,
                            ),
                          ),
                          title: Text(
                            'Liked Items',
                            style: GoogleFonts.firaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: AppColors.sidebarTextColor),
                          ),
                          subtitle: Text(
                            'see the products you have wishlisted',
                            style: GoogleFonts.firaSans(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 44,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                            child: Text(
                          'feedback',
                          style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          auth.signOut().then((value) {
                            Navigator.restorablePushNamedAndRemoveUntil(
                                context, RoutesName.login, (route) => false);
                            setState(() {});
                          }).then((value) {
                            Utils.snackBar("Logout successfully.", context);
                          }).onError((error, stackTrace) {
                            Utils.flushBarErrorMessage(
                                error.toString(), context);
                          });
                        },
                        child: Container(
                          height: 44,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Color(0xff3c3c3c),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: Text(
                              'Sign out',
                              style: GoogleFonts.firaSans(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
