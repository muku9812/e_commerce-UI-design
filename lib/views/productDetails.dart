import 'package:ecommerce/utilities/routes/routesName.dart';
import 'package:ecommerce/utilities/widgets/backArrow.dart';
import 'package:ecommerce/utilities/widgets/homePageCard.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../utilities/constant.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 74, right: 34),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 34,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BackArrow(),
                    Text(
                      appName,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3C3C3C)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 34, bottom: 15),
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.54,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWljcm9waG9uZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        'Shure podcast microPhone',
                        style: GoogleFonts.firaSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff3C3C3C)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          bottom: MediaQuery.of(context).size.height * 0.01),
                      child: Container(
                        height: 54,
                        width: 54,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: const Center(
                            child: Icon(
                          Ionicons.chatbox_outline,
                          color: Colors.white,
                          size: 26,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 34,
                ),
                child: Text(
                  '₹ 24,999',
                  style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff087E8B)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 34,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xff666666)),
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: GoogleFonts.firaSans(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 34,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Make: ',
                    style: GoogleFonts.firaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff4F4F4F)),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Shure',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: ' |',
                      ),
                      TextSpan(
                          text: ' Year:',
                          style: GoogleFonts.firaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4F4F4F))),
                      TextSpan(
                          text: ' 2020',
                          style: GoogleFonts.firaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff4F4F4F))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'With Warranty ',
                      style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xff4F4F4F)),
                    ),
                    const Icon(
                      Icons.done,
                      color: Colors.green,
                    ),
                    Text(
                      '. Original Packing ',
                      style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xff4F4F4F)),
                    ),
                    const Icon(
                      Icons.close,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 50, left: 34),
                child: Container(
                  height: 40,
                  width: 176,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.network(
                            googleImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            'Search Details',
                            style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, bottom: 10),
                child: Text(
                  'Similar products',
                  style: GoogleFonts.firaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color(0xff000000)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HomePageCard(
                    name: 'Tablet',
                    image:
                        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6502/6502014_sd.jpg',
                    price: '19,999',
                    date: '2023',
                    category: 'Electronics',
                    onTab: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductDetails()));
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 78,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              color: const Color(0xff727272),
              child: Center(
                child: Text(
                  'Save item',
                  style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffECECEC)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.purchases);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                color: const Color(0xffFF5A5F),
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.firaSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffECECEC)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
