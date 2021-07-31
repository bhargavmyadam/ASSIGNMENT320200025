import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? value = 'Name';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2FC4B2),
        ),
        bottomNavigationBar: BottomNavBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // options Text
            Container(
              child: Text(
                'Your Home Bio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                        value: 'Name',
                        groupValue: this.value,
                        onChanged: (String? val) {
                          setState(() {
                            this.value = val;
                          });
                        },
                      ),
                      Text('Name'),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                        value: 'ID',
                        groupValue: this.value,
                        onChanged: (String? val) {
                          setState(() {
                            this.value = val;
                          });
                        },
                      ),
                      Text('ID'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
