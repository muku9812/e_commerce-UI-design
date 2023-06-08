import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import '../utilities/routes/routesName.dart';
import '../utilities/widgets/bottomNavBar.dart';

class MyLikeList extends StatefulWidget {
  const MyLikeList({super.key});

  @override
  State<MyLikeList> createState() => _MyLikeListState();
}

class _MyLikeListState extends State<MyLikeList> {
  List<String> image = [
    'https://cdn-ssl.s7.disneystore.com/is/image/DisneyShopping/1234041283631',
    'https://www.ikea.com/ph/en/images/products/jaettestor-soft-toy-elephant-gray__0710185_pe727388_s5.jpg?f=s',
    'https://cdn.monsterjam.com/s3fs-public/778988548264_0.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 64.h, left: 32.w, right: 28.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 46.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Icon(
                          CupertinoIcons.back,
                          size: 30.sp,
                        ),
                      ),
                    ),
                    Text(
                      'Liked items',
                      style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w700, fontSize: 32.sp),
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
              for (int j = 0; j <= 10; j++)
                for (int i = 2; i >= 0; i--)
                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 9),
                    child: Container(
                      height: 114.h,
                      width: 349.w,
                      decoration: BoxDecoration(
                          color: AppColors.sidebarItemColor,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Container(
                              height: 90.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
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
                                'Toys for kid',
                                style: GoogleFonts.firaSans(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff616161)),
                              ),
                              Text(
                                '21 may 2023',
                                style: GoogleFonts.firaSans(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff898989)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '₹ 999',
                                    style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff616161)),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 30.w,
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
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
