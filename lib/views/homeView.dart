import 'package:ecommerce/utilities/widgets/bottomNavBar.dart';
import 'package:ecommerce/views/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import '../utilities/constant.dart';
import '../utilities/routes/routesName.dart';
import '../utilities/widgets/homePageCard.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 52.h, bottom: 37.h, left: 27.w, right: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90.h,
                    width: 86.w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                          child: CircleAvatar(
                            radius: 40.r,
                            backgroundImage: NetworkImage(userImage),
                          ),
                        ),
                        Positioned(
                            bottom: 0.h,
                            right: 0.w,
                            child: CircleAvatar(
                              radius: 15.r,
                              backgroundColor: AppColors.signUpOptionColor,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.account);
                                },
                                child: const Icon(
                                  Icons.menu,
                                  color: Colors.grey,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Hey $userName',
                      style: GoogleFonts.firaSans(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '\nWelcome back!',
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 24.sp,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.sideBar);
                    },
                    child: Icon(
                      Icons.menu,
                      size: 34.sp,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 57.h,
                width: 359.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          borderRadius: BorderRadius.circular(15.r))),
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: 30.h, bottom: 4.h, left: 5.w, right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New arrivals',
                    style: GoogleFonts.firaSans(
                        fontSize: 24.sp, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'view more',
                    style: GoogleFonts.firaSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff898989)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: HomePageCard(
                name: 'Batman toy',
                image:
                    'https://ae01.alicdn.com/kf/Hb9dfbb5469464b20af1ffe965a854718w/1-32-Beijing-JEEP-Toy-Car-Metal-Toy-Alloy-Car-Diecasts-Toy-Vehicles-Car-Model-Wolf.jpg',
                price: '899',
                date: '2018',
                category: 'FunSkool',
                onTab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetails()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 30.h, bottom: 4.h, left: 5.w, right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recently viewed',
                    style: GoogleFonts.firaSans(
                        fontSize: 24.sp, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'view more',
                    style: GoogleFonts.firaSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff898989)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HomePageCard(
                  name: 'Holly book',
                  image:
                      'https://cdn.shopify.com/s/files/1/0039/7282/5134/products/AKBA_Racism_Cover_db369bb1-d208-421c-b327-93db46fa052b.png?v=1665006228',
                  price: '599',
                  date: '2019',
                  category: 'Book',
                  onTab: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetails()));
                  },
                )),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
