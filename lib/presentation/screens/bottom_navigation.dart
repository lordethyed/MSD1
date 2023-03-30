import 'package:flutter/material.dart';
import 'package:msd1/presentation/screens/home_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  @override
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: 'Главная',
            backgroundColor: Color(0xFF6780DC),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.upload,
              size: 20,
            ),
            label: 'Загрузка',
            backgroundColor: Color(0xFF6780DC),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 20,
            ),
            label: 'Журнал',
            backgroundColor: Color(0xFF6780DC),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 20,
            ),
            label: 'Пользователи',
            backgroundColor: Color(0xFF6780DC),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFFFFFFF),
      ),
    );
  }
}
