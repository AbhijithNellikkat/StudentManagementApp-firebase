import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_management_app_firebase/features/user-authentication/ui/pages/login_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // FirebaseAuth.instance.signOut();
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const LoginPage(),
              //     ));
            },
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HomePage"),
            const SizedBox(height: 60),
            ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                child: const Text("Sign Out"))
          ],
        ),
      ),
    );
  }
}
