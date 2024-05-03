import 'package:course2/utils/string_extensions.dart';
import 'package:course2/widgets/homework_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CourseApp());
}

class CourseApp extends StatelessWidget {
  static const primaryColor = Color(0xFF36377B);
  static const textColor = Color(0xFF777AA2);

  List<Map<String, dynamic>> days = [
    {
      "dayOfWeek": "Tue",
      "day": 22,
      "isSelected": false,
    },
    {
      "dayOfWeek": "Tue",
      "day": 23,
      "isSelected": false,
    },
    {
      "dayOfWeek": "Wed",
      "day": 24,
      "isSelected": true,
    },
    {
      "dayOfWeek": "Thu",
      "day": 25,
      "isSelected": false,
    },
    {
      "dayOfWeek": "Fri",
      "day": 26,
      "isSelected": false,
    },
    {
      "dayOfWeek": "Sat",
      "day": 27,
      "isSelected": false,
    },
    {
      "dayOfWeek": "Sun",
      "day": 27,
      "isSelected": false,
    }
  ];

  Widget getDay(String dayOfWeek, int day, bool isSelected) {
    return Column(
      children: [
        Text(
          dayOfWeek,
          style: TextStyle(
            color: isSelected ? primaryColor : textColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : Colors.white,
            border: Border.all(
              color: Colors.grey.shade400,
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            day.toString(),
            style: TextStyle(
              color: isSelected ? Colors.white : textColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              side: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            icon: const Icon(
              CupertinoIcons.back,
            ),
          ),
          title: Text(
            "Homework".capitalize(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey.shade400,
                ),
              ),
              icon: const Icon(Icons.more_horiz_rounded),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var i = 0; i < days.length; i++)
                      getDay(
                        days[i]['dayOfWeek'],
                        days[i]['day'],
                        days[i]['isSelected'],
                      ),
                  ],
                ),
                const SizedBox(height: 40),
                HomeWorkItem(primaryColor, textColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
