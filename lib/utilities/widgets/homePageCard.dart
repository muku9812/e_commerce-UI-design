import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class HomePageCard extends StatelessWidget {
  String name;
  String image;
  String price;
  String date;
  String category;
  HomePageCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.date,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int i = 0; i < 20; i++)
        Container(
          height: 244,
          width: 268,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 174,
                      width: 268,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.fill)),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black12)),
                          child: CircleAvatar(
                            backgroundColor:
                                AppColors.signUpOptionColor.withOpacity(0.6),
                            child: const Icon(
                              Icons.favorite_outline,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.firaSans(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                date,
                                style: GoogleFonts.firaSans(
                                    fontSize: 14,
                                    color: const Color(0xffc1839f)),
                              ),
                              Text(
                                '|',
                                style: GoogleFonts.firaSans(
                                    fontSize: 14,
                                    color: const Color(0xffc1839f)),
                              ),
                              Text(
                                category,
                                style: GoogleFonts.firaSans(
                                    fontSize: 14,
                                    color: const Color(0xffc1839f)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '₹ $price',
                          style: GoogleFonts.firaSans(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    ]);
  }
}
