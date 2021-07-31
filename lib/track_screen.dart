import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'assignment_numbers.dart';
import 'score.dart';

class TrackScreen extends StatelessWidget {
  int? score;
  var score_list = AssignmentScore();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2FC4B2),
        ),
        bottomNavigationBar: BottomNavBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Assignment Number',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              AssignmentNumbers(),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: EdgeInsets.all(10),
                child: Text(
                  'Score',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your score',
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (String? value) {
                  this.score = int.parse(value!);
                },
                onSaved: (String? value) {
                  this.score = int.parse(value!);
                },
                validator: (String? value) {
                  if (value! == '') {
                    return 'Please enter your score';
                  }
                  return null;
                },
              ),
              // submit button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff2FC4B2),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
