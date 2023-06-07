import 'package:ecommerce/utilities/constant.dart';
import 'package:ecommerce/utilities/routes/routesName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import '../utilities/widgets/bottomNavBar.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 64, left: 18, right: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          CupertinoIcons.back,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    Text(
                      "Explore",
                      style: GoogleFonts.firaSans(
                          fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
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
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 32),
                child: Container(
                    height: 57,
                    width: 359,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.signUpOptionColor),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for book, guiter and more...',
                          suffixIcon: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(22))),
                    )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0; i <= 10; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 4),
                        child: Container(
                          height: 30,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Color(0xff3C3C3C),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Books',
                              style: GoogleFonts.firaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffE2E2E2)),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 431,
                      width: 377,
                      decoration: const BoxDecoration(
                          color: AppColors.sidebarItemColor),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            height: 58,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(userImage),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cliff Hanger',
                                        style: GoogleFonts.firaSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'El Dorado',
                                        style: GoogleFonts.firaSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.43,
                                  ),
                                  const Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.more_vert),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 298,
                            width: 377,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/750x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 36.48,
                                  width: 36.48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.signUpOptionColor
                                          .withOpacity(0.7)),
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    size: 21.9,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cordoba Mini Guiter',
                                        style: GoogleFonts.firaSans(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Make: Cordoba',
                                            style: GoogleFonts.firaSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff747474)),
                                          ),
                                          Text(
                                            '|',
                                            style: GoogleFonts.firaSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff747474)),
                                          ),
                                          Text(
                                            'Year:2020',
                                            style: GoogleFonts.firaSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff747474)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    '₹ 25,000',
                                    style: GoogleFonts.firaSans(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
