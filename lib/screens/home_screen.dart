import 'package:community_social_app/providers/sign_in_provider.dart';
import 'package:community_social_app/screens/events_screen.dart';
import 'package:community_social_app/screens/favourites_screen.dart';
import 'package:community_social_app/screens/message_screen.dart';
import 'package:community_social_app/screens/profile_screen.dart';
import 'package:community_social_app/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:community_social_app/utils/config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Screen"),
    );
  }
}
