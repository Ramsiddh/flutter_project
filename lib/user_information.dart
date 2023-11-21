import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  final String name;
  final String about;
  final String bio;

  UserInformation({
    required this.name,
    required this.about,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 4),
        Text(
          about,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Text(
          bio,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
