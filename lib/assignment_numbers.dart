import 'package:flutter/material.dart';

class AssignmentNumbers extends StatefulWidget {
  @override
  _AssignmentNumbersState createState() => _AssignmentNumbersState();
}

class _AssignmentNumbersState extends State<AssignmentNumbers> {
  final List<int> numbs = [1, 2, 3, 4, 5, 6];
  int? value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(10),
      color: Colors.grey[100],
      child: DropdownButton<int>(
        value: this.value,
        items: this
            .numbs
            .map(
              (int val) => DropdownMenuItem<int>(
                child: Text(
                  val.toString(),
                ),
                value: val,
              ),
            )
            .toList(),
        onChanged: (int? val) {
          setState(() {
            this.value = val;
          });
        },
        isExpanded: true,
      ),
    );
  }
}
