import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'home_screen.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Color(0xff2FC4B2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconData(
                0xe0ef,
                fontFamily: 'MaterialIcons',
              ),
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return HomeScreen();
                  },
                ),
              );
            },
            icon: Icon(
              IconData(
                0xe318,
                fontFamily: 'MaterialIcons',
              ),
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SettingsScreen();
                  },
                ),
              );
            },
            icon: Icon(
              IconData(0xe57f, fontFamily: 'MaterialIcons'),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
