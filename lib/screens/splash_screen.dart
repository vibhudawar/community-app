import 'dart:async';
import 'package:community_social_app/utils/next_screen.dart';
import 'package:community_social_app/providers/sign_in_provider.dart';
import 'package:community_social_app/screens/home_screen.dart';
import 'package:community_social_app/screens/login_screen.dart';
import 'package:community_social_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final signInProvider = context.read<SignInProvider>();
    super.initState();

    Timer(const Duration(seconds: 2), () {
      signInProvider.isSignedIn == false
          ? nextScreen(context, LoginScreen())
          : nextScreenReplace(context, const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            appIcon,
            height: 80,
            width: 80,
          ),
        ),
      ),
    );
  }
}
