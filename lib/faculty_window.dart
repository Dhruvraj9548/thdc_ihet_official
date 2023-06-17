import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class faculty_window extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 10,
        title: Text('Faculty'),
      ),

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffff758), Color(0xffff7eb3)
            ]
            )
        ),

        child: ListWheelScrollView(
          overAndUnderCenterOpacity: 0.5,
          physics: const FixedExtentScrollPhysics(),

          itemExtent: 100,
          children: [
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
            contactList(),
          ],
        ),
      ),
    );
  }

  Widget contactList(){
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      color: Colors.pink,
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('assets/images/About.png'),
                SizedBox(width: 100,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('NAME'),
                    Text('Contact No.')
                  ],
                )
              ],
            ),
          )
      ),);
  }

}