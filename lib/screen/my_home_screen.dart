import 'package:flutter/material.dart';
import 'package:dex_text/screen/screens.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
   int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _screenList = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourScreen(),
  ];
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: _screenList[_selectedIndex],
      backgroundColor: Colors.cyan[900],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[900],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'Crypto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_gas_station_rounded),
            label: 'Gas_Fee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.repeat_outlined ),
            label: 'Dex',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lime[500],
        onTap: _onItemTapped,
      )
    );
  }
}
