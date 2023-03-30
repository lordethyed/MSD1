import 'package:flutter/material.dart';

class MagazineScreen extends StatelessWidget {
  const MagazineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF4D67C3),
        elevation: 0,
        title: const Text(
          '-=MSD1=-',
          style: TextStyle(
            fontFamily: "Roboto",
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(),
    );
  }
}