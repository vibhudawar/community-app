import 'package:community_social_app/providers/sign_in_provider.dart';
import 'package:community_social_app/screens/login_screen.dart';
import 'package:community_social_app/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final sp = context.read<SignInProvider>();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            sp.userSignOut();
            nextScreen(context, LoginScreen());
          },
          child: const Text("Sign Out"),
        ),
      ),
    );
  }
}
