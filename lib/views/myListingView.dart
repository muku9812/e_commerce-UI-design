import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import '../utilities/routes/routesName.dart';

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
                      'Liked items',
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
                              Text(
                                '21 may 2023',
                                style: GoogleFonts.firaSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff898989)),
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
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    child: const Center(
                                        child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )),
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
      // bottomNavigationBar: const BottomNavBar(),
    );
  }
}
