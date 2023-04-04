import 'package:biznugget/core/common/models/user_model/user_model.dart';
import 'package:biznugget/profile/Profile_Page/Business/business_profile.dart';
import 'package:biznugget/profile/Profile_Page/Freelance/freelance_profile.dart';
import 'package:biznugget/profile/Profile_Page/Job_creator/job_creator_profile.dart';
import 'package:biznugget/profile/Profile_Page/Service_Provider/service_provider_profile.dart';
import 'package:biznugget/profile/Profile_Page/Vendor/vendor_profile.dart';
import 'package:biznugget/profile/Profile_Page/consumer_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {
  // For Authentication related functions you need an instance of FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //  This getter will be returning a Stream of User object.
  //  It will be used to check if the user is logged in or not.
  Stream<User?> get authStateChange => _auth.authStateChanges();

// SignUp the user using Email and Password
  Future<void> signUpWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then(
        (value) {
          if (UserType == UserType.consumer) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ConsumerProfile()),
            );
          } else if (User == UserType.business) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BusinessProfile()),
            );
          } else if (User == UserType.freelance) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FreelanceProfile()),
            );
          } else if (User == UserType.vendor) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => VendorProfile()),
            );
          } else if (User == UserType.jobCreator) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => JobCreatorProfile()),
            );
          } else if (User == UserType.serviceProvider) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ServiceProviderProfile()),
            );
          } else {
            return ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please select an account type!!')),
            );
          }
        },
      );
    } on FirebaseAuthException catch (e) {
      await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                  title: const Text('Error Occured'),
                  content: Text(e.toString()),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: const Text("OK"))
                  ]));
    } catch (e) {
      if (e == 'email-already-in-use') {
        // print('Email already in use.');
      } else {
        // print('Error: $e');
      }
    }
  }

  //  SigIn the user using Email and Password
  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      await showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Error Occured'),
          content: Text(e.toString()),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text("OK"))
          ],
        ),
      );
    }
  }

  //  SignOut the current user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
