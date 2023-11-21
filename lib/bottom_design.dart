import 'package:flutter/material.dart';

class BottomDesign extends StatefulWidget {
  @override
  _BottomDesignState createState() => _BottomDesignState();
}

class _BottomDesignState extends State<BottomDesign> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Share to your community',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Off',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: switchValue ? Colors.grey : Colors.black,
              ),
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Text(
              'On',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: switchValue ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 100.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Post',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10.0),
            Icon(Icons.arrow_forward),
          ],
        ),
      ],
    );
  }
}
