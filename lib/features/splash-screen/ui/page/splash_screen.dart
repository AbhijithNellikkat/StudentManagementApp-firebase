import 'package:flutter/material.dart';
import 'package:student_management_app_firebase/features/user-authentication/ui/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
            (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome to Student Management App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
