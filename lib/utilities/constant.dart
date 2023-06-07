import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

const String appName = 'ReBuy';

String userName = 'Mukesh';
// String userName = _auth.currentUser!.displayName!.split(' ')[0];
String userFullName = 'Mukesh Mandal';
// String userFullName = _auth.currentUser!.displayName.toString();
String useremail = _auth.currentUser!.email.toString();
String userImage =
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
// String userImage = _auth.currentUser!.photoURL.toString();
String userPhone = _auth.currentUser!.phoneNumber.toString();
