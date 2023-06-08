import 'package:ecommerce/utilities/widgets/bottomNavBar.dart';
import 'package:ecommerce/views/productDetails.dart';
import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.only(
                  top: 52, bottom: 37, left: 27, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                    width: 86,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(userImage),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: AppColors.signUpOptionColor,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.account);
                                },
                                child: Icon(
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
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '\nWelcome back!',
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 24,
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
                    child: const Icon(
                      Icons.menu,
                      size: 33,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
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
                          borderRadius: BorderRadius.circular(15))),
                )),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30, bottom: 4, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New arrivals',
                    style: GoogleFonts.firaSans(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'view more',
                    style: GoogleFonts.firaSans(
                        fontSize: 14,
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
              padding:
                  const EdgeInsets.only(top: 30, bottom: 4, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recently viewed',
                    style: GoogleFonts.firaSans(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'view more',
                    style: GoogleFonts.firaSans(
                        fontSize: 14,
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
                            builder: (context) => ProductDetails()));
                  },
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
