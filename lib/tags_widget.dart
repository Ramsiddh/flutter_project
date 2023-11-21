import 'package:flutter/material.dart';

class TagsWidget extends StatefulWidget {
  @override
  _TagsWidgetState createState() => _TagsWidgetState();
}

class _TagsWidgetState extends State<TagsWidget> {
  List<String> tags = [
    'Achievement',
    'Got clarity',
    'Break Through',
    'Im Equiped',
    'Made Important decision',
    'New Behavoir',
    'New Mindset',
  ];

  int selectedTagIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              Icon(Icons.camera_alt),
              SizedBox(width: 5.0),
              Text(
                '+',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.0),
        Align(
          alignment: Alignment.centerRight,
          child: Wrap(
            spacing: 15.0,
            runSpacing: 8.0,
            children: List.generate(tags.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTagIndex = index;
                  });
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color:
                        selectedTagIndex == index ? Colors.black : Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    tags[index],
                    style: TextStyle(
                      color: selectedTagIndex == index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 20.0),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
      ],
    );
  }
}
