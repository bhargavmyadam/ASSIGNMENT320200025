import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'track_screen.dart';



class HomeScreen extends StatefulWidget {
  final String? name;
  HomeScreen({this.name});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Container(
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
                onPressed: () {},
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
        ),
        body: Column(
          children: [
            // greeting box
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10, 100, 10, 20),
              child: Text(
                'Hi ${widget.name} !',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //progress box
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                shape: BoxShape.rectangle,
                color: Color(0xFFB2DFDB),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Your Progress',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '3/6\nassignments done',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 108,
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2FC4B2),
                    ),
                    child: Center(
                      child: Text(
                        '50%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // score box
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Your Score',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff2FC4B2),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '25',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Color(0xff2FC4B2),
                    child: TextButton(
                      child: Text(
                        'TRACK',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return TrackScreen();
                            },
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            // /////////////
          ],
        ),
      ),
    );
  }
}
