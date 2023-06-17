import 'package:flutter/material.dart';
import 'package:thdc_ihet_official/about_window.dart';
import 'package:thdc_ihet_official/departments_window.dart';
import 'package:thdc_ihet_official/events_window.dart';
import 'package:thdc_ihet_official/faculty_window.dart';
import 'package:thdc_ihet_official/gallery_window.dart';
import 'package:thdc_ihet_official/introSplashScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: introSplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var cardTextStyle =
      TextStyle(fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 10,
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Text('Drawer Header'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffff758), Color(0xffff7eb3)]
              )
            ),),
            ListTile(
              title: Text('Tile 1'),
            ),
            ListTile(
              title: Text('Tile 2'),
            ),
            ListTile(
              title: Text('Tile 3'),
            ),
            ListTile(
              title: Text('Tile 4'),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Desktop Background trial.jpg'),
              fit: BoxFit.fill,
            ),
            gradient:
                LinearGradient(colors: [Color(0xffFFFEFF), Color(0xffD7FFFE)])),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          primary: false,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => about_window(),
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(99.0))),
                elevation: 10,
                margin: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff758), Color(0xffff7eb3)])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/About.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'About',
                        style: cardTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => gallery_window(),
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(99.0))),
                elevation: 10,
                margin: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff758), Color(0xffff7eb3)])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Gallery.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'Gallery',
                        style: cardTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => events_window(),
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(99.0))),
                elevation: 10,
                margin: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff758), Color(0xffff7eb3)])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Events.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'Events',
                        style: cardTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => departments_window(),
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(99.0))),
                elevation: 10,
                margin: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff758), Color(0xffff7eb3)])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Department.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'Departments',
                        style: cardTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => faculty_window(),
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(99.0))),
                elevation: 10,
                margin: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff758), Color(0xffff7eb3)])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Faculty.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'Faculty',
                        style: cardTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(99.0))),
              elevation: 10,
              margin: EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffff758), Color(0xffff7eb3)])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Schedule.png',
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      'Schedule',
                      style: cardTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
