import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Favourites Screen"),
      ),
    );
  }
}
