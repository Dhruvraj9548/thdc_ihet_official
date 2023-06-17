import 'package:flutter/material.dart';

class departments_window extends StatelessWidget {
  final List<String> images = [
    'assets/images/Department.png',
    'assets/images/Department.png',
    'assets/images/Department.png',
    'assets/images/Department.png',
    'assets/images/Department.png'
  ];
  final List<String> titles = [
    'COMPUTER SCIENCE AND ENGINEERING',
    'MECHANICAL ENGINEERING',
    'CIVIL ENGINEERING',
    'ELECTRICAL ENGINEERING',
    'ELECTRONICS & COMM ENGINEERING',
    'APPLIED SCIENCE & HUMANITIES'

  ];
  final List<String> subtitles = [
    'Department of Computer Science & Engineering',
    'Department of Mechanical Engineering',
    'Department of Civil Engineering',
    'Department of Electrical Engineering',
    'Department of Electronics & Comm Engineering',
    'Department of Applied Science & Humanities'

  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 400,
      child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 10,
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    child: Image.asset(
                      images[index],
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titles[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          subtitles[index],
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
    );
  }
}