import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  Future login(String email, String password) async {
    isLoading = true;
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    isLoading = false;
    notifyListeners();
  }

  Future register(String email, String password) async {
    isLoading = true;
    _auth.createUserWithEmailAndPassword(email: email, password: password);
    isLoading = false;
    notifyListeners();
  }
}
