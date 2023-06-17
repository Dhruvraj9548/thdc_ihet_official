import 'package:flutter/material.dart';

class events_window extends StatefulWidget {
  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<events_window> {
  List<Map<String, dynamic>> _events = [
    {"title": "Event 1", "date": "April 16, 2023", "location": "New York"},
    {"title": "Event 2", "date": "April 17, 2023", "location": "Los Angeles"},
    {"title": "Event 3", "date": "April 18, 2023", "location": "Chicago"},
    {"title": "Event 4", "date": "April 16, 2023", "location": "New York"},
    {"title": "Event 5", "date": "April 17, 2023", "location": "Los Angeles"},
    {"title": "Event 6", "date": "April 18, 2023", "location": "Chicago"},
    {"title": "Event 7", "date": "April 16, 2023", "location": "New York"},
    {"title": "Event 8", "date": "April 17, 2023", "location": "Los Angeles"},
    {"title": "Event 9", "date": "April 18, 2023", "location": "Chicago"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 10,
        title: Text('Events'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffff758), Color(0xffff7eb3)
            ]
            )
        ),
        child: ListView.builder(
          itemCount: _events.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                tileColor: Colors.pink.shade300,
                title: Text(_events[index]["title"]),
                subtitle: Text(_events[index]["date"] + " | " + _events[index]["location"]),
              ),
            );
          },
        ),
      ),
    );
  }
}