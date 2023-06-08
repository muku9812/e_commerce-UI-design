import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/constant.dart';
import 'package:ecommerce/utilities/widgets/backArrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasesForm extends StatefulWidget {
  const PurchasesForm({super.key});

  @override
  State<PurchasesForm> createState() => _PurchasesFormState();
}

class _PurchasesFormState extends State<PurchasesForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 64.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 34.w, right: 34.w, bottom: 42.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BackArrow(),
                  Text(
                    appName,
                    style: GoogleFonts.dosis(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff3C3C3C)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
              width: 218.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 26.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 4.w),
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: EdgeInsets.all(1.5.sp),
                      child: CircleAvatar(
                        radius: 6.r,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 68.w,
                    child: const Divider(
                      thickness: 5,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 26.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 4.w),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 68.w,
                    child: const Divider(
                      thickness: 5,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 26.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 4.w),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 124.h,
              width: 344.w,
              decoration: BoxDecoration(color: AppColors.sidebarItemColor),
            )
          ],
        ),
      ),
    );
  }
}
