import 'package:ecommerce/utilities/constant.dart';
import 'package:ecommerce/utilities/routes/routesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import '../utilities/widgets/backArrow.dart';
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
          padding: EdgeInsets.only(top: 64.h, left: 18.w, right: 18.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BackArrow(),
                    Text(
                      "Explore",
                      style: GoogleFonts.firaSans(
                          fontSize: 32.sp, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.sideBar);
                      },
                      child: Icon(
                        Icons.menu,
                        size: 33.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 32.h),
                child: Container(
                    height: 57.h,
                    width: 359.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: AppColors.signUpOptionColor),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for book, guiter and more...',
                          suffixIcon: Icon(
                            Icons.search,
                            size: 30.sp,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(22.r))),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 18.h, horizontal: 4.w),
                        child: Container(
                          height: 32.h,
                          width: 95.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff3C3C3C),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Center(
                            child: Text(
                              'Books',
                              style: GoogleFonts.firaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xffE2E2E2)),
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
                      height: 431.h,
                      width: 377.w,
                      decoration: const BoxDecoration(
                          color: AppColors.sidebarItemColor),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            height: 58.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4.0.sp),
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
                                            fontSize: 15.sp),
                                      ),
                                      Text(
                                        'El Dorado',
                                        style: GoogleFonts.firaSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp),
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
                            height: 298.h,
                            width: 377.w,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/750x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 36.48.h,
                                  width: 36.48.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.signUpOptionColor
                                          .withOpacity(0.7)),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    size: 21.9.sp,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 75.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                                            fontSize: 24.sp,
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
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff747474)),
                                          ),
                                          Text(
                                            '|',
                                            style: GoogleFonts.firaSans(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff747474)),
                                          ),
                                          Text(
                                            'Year:2020',
                                            style: GoogleFonts.firaSans(
                                                fontSize: 14.sp,
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
                                        fontSize: 24.sp,
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
