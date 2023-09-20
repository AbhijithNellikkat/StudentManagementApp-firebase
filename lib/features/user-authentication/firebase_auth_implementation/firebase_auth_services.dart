import 'dart:developer';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } catch (e) {
      log("some error occured");
    }

    return null;
  }

    Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } catch (e) {
      log("some error occured");
    }

    return null;
  }
}





// ====================== signInWithGoogle =============================

// Future<UserCredential> signInWithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
