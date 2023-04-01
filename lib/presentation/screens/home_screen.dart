import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dio = Dio();

  @override
  Widget build(BuildContext context) {

    List<Widget> _buildCells(int count) {
      return List.generate(
        count,
        (index) => Container(
          alignment: Alignment.center,
          width: 120.0,
          height: 60.0,
          color: Colors.white,
          margin: const EdgeInsets.all(4.0),
          child: Text(
            "${index + 1}",
          ),
        ),
      );
    }
    List<Widget> _buildRows(int count) {
      return List.generate(
        count,
        (index) => Row(
          children: _buildCells(10),
        ),
      );
    }

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
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildCells(20),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildRows(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
