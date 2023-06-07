import 'package:ecommerce/controller/authProvider.dart';
import 'package:ecommerce/utilities/routes/routesName.dart';
import 'package:ecommerce/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../utilities/colors.dart';
import '../utilities/constant.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late AuthProvider authProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      return userCredential;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    authProvider = Provider.of<AuthProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(
          top: height * 0.08,
          left: width * 0.05,
          right: width * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Icon(CupertinoIcons.back),
                  ),
                ),
                Text(
                  appName,
                  style: GoogleFonts.dosis(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: const Color(0XFF3C3C3C)),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.07, bottom: height * 0.03),
              child: Text(
                'Log in',
                style: GoogleFonts.dosis(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Login with one of the following option',
              style: GoogleFonts.dosis(color: Colors.black45),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.016, bottom: height * 0.04),
              child: SizedBox(
                height: 57,
                width: 344,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        final UserCredential? userCredential =
                            await signInWithGoogle();
                        if (userCredential != null) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamedAndRemoveUntil(
                              context, RoutesName.main, (route) => false);
                          Utils.toastMessage('Login successful');
                        } else {
                          // ignore: use_build_context_synchronously
                          Utils.flushBarErrorMessage(
                              'Something went wrong.', context);
                        }
                      },
                      child: Container(
                        height: 57,
                        width: 105,
                        decoration: BoxDecoration(
                          color: AppColors.signUpOptionColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                            child: Image(
                          image: const NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/588px-Google_%22G%22_Logo.svg.png'),
                          height: height * 0.04,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 57,
                        width: 105,
                        decoration: BoxDecoration(
                            color: AppColors.signUpOptionColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: Image(
                            image: const NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/1200px-Logo_of_Twitter.svg.png'),
                            height: height * 0.04,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 57,
                        width: 105,
                        decoration: BoxDecoration(
                            color: AppColors.signUpOptionColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: Image(
                            image: const NetworkImage(
                                'https://www.freepnglogos.com/uploads/apple-logo-png/file-apple-logo-black-svg-wikimedia-commons-1.png'),
                            height: height * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1.0,
                  ),
                ),
                Text('Or,'),
                Expanded(
                    child: Divider(
                  thickness: 1.0,
                  color: Colors.black,
                ))
              ],
            ),
            SizedBox(
              width: 344,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.signUpOptionColor,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  const BorderSide(color: Colors.black38),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, bottom: height * 0.019),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.signUpOptionColor,
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  const BorderSide(color: Colors.black38),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (emailController.text.isEmpty) {
                          Utils.flushBarErrorMessage(
                              'Please enter email.', context);
                        } else if (passwordController.text.isEmpty) {
                          Utils.flushBarErrorMessage(
                              'Please enter password.', context);
                        } else if (passwordController.text.length < 6) {
                          Utils.flushBarErrorMessage(
                              'Password must be of 6 character.', context);
                        } else {
                          authProvider
                              .login(
                                  emailController.text, passwordController.text)
                              .then((value) {
                            Navigator.pushNamedAndRemoveUntil(
                                    context, RoutesName.main, (route) => false)
                                .onError((error, stackTrace) {
                              Utils.flushBarErrorMessage(
                                  error.toString(), context);
                              return null;
                            });
                          });
                        }
                      },
                      child: Container(
                        height: 56,
                        width: 344,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFff5a5f),
                              Color(0xFFe77375),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Center(
                          child: authProvider.isLoading == false
                              ? Text(
                                  'Log in',
                                  style: GoogleFonts.dosis(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const CircularProgressIndicator(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.register);
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: GoogleFonts.dosis(fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
