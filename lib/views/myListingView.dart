import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import '../utilities/routes/routesName.dart';
import '../utilities/widgets/bottomNavBar.dart';

class MyListingView extends StatefulWidget {
  const MyListingView({super.key});

  @override
  State<MyListingView> createState() => _MyListingViewState();
}

class _MyListingViewState extends State<MyListingView> {
  List<String> image = [
    'https://s.hdnux.com/photos/01/32/65/34/23811845/3/1200x0.jpg',
    'https://cdn.mos.cms.futurecdn.net/25Hj7D6Hni9q4BJtfhwY3W.jpg',
    'https://i.ytimg.com/vi/ZH7dIxVf5uE/hqdefault.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 64, left: 32, right: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          CupertinoIcons.back,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      'Listings items',
                      style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.sideBar);
                      },
                      child: const Icon(
                        Icons.menu,
                        size: 33,
                      ),
                    ),
                  ],
                ),
              ),
              for (int j = 0; j <= 10; j++)
                for (int i = 2; i >= 0; i--)
                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 9),
                    child: Container(
                      height: 114,
                      width: 349,
                      decoration: BoxDecoration(
                          color: AppColors.sidebarItemColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(image[i]),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Apple Airpods pro',
                                style: GoogleFonts.firaSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff616161)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Views: 1K',
                                    style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff898989)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    child: Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.email,
                                            size: 20,
                                          ),
                                          Text(
                                            '$j',
                                            style: GoogleFonts.firaSans(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '₹ 8,999',
                                    style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff616161)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    child: Text(
                                      '21 may 1999',
                                      style: GoogleFonts.firaSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromARGB(
                                              255, 179, 54, 54)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.white),
                                      child: const Center(
                                          child: Icon(
                                        Icons.visibility_off,
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
