import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class MyAccountView extends StatefulWidget {
  const MyAccountView({super.key});

  @override
  State<MyAccountView> createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyAccountView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = userFullName;
    emailController.text = useremail;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 75.h, left: 32.w, right: 28.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 53.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 96.h,
                      width: 96.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: CircleAvatar(
                        radius: 45.5,
                        backgroundImage: NetworkImage(userImage),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          userFullName,
                          style: GoogleFonts.firaSans(
                              fontSize: 24.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          useremail,
                          style: GoogleFonts.firaSans(
                              fontSize: 14.sp, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Ionicons.close_outline,
                        size: 50.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Text(
                  'My Account',
                  style: GoogleFonts.firaSans(
                      fontWeight: FontWeight.w700, fontSize: 24.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, bottom: 6.h, left: 8.w),
                child: Text(
                  'Name:-',
                  style: GoogleFonts.firaSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3c3c3c)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Container(
                  height: 43.h,
                  width: 349.w,
                  decoration: BoxDecoration(
                      color: AppColors.signUpOptionColor,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Ionicons.create_outline),
                      hintText: userFullName,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, bottom: 6.h, left: 8.w),
                child: Text(
                  'Email:-',
                  style: GoogleFonts.firaSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3c3c3c)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Container(
                  height: 43.h,
                  width: 349.w,
                  decoration: BoxDecoration(
                      color: AppColors.signUpOptionColor,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Ionicons.create_outline),
                      hintText: useremail,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, bottom: 6.h, left: 8.w),
                child: Text(
                  'Phone:-',
                  style: GoogleFonts.firaSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3c3c3c)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 32.h),
                child: Container(
                  height: 43.h,
                  width: 349.w,
                  decoration: BoxDecoration(
                      color: AppColors.signUpOptionColor,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Ionicons.create_outline),
                      hintText: userPhone,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 44,
                width: 165,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.settings),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Text(
                        'Settings',
                        style: GoogleFonts.firaSans(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
