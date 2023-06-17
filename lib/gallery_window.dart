import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class gallery_window extends StatelessWidget{
  final List<String> photos = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzbj8UVxkW76cJSxGXE6ZtAWvMM2RmIzKuMQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRLhUXIPpdFlpL3uESqOG9JVbBRPy7-7nBmA&usqp=CAU',
    'https://thdcihet.ac.in/extra-images/cri6.jpg',
    'https://thdcihet.ac.in/extra-images/gallery/gallery%20(6).jpg',
    'https://thdcihet.ac.in/extra-images/gallery/gallery%20(13).jpg',
    'https://thdcihet.ac.in/extra-images/gallery/gallery%20(15).jpg',
    'https://thdcihet.ac.in/extra-images/gallery/gallery%20(22).jpg',
    'https://thdcihet.ac.in/extra-images/gallery/gallery%20(23).jpg',
    'https://thdcihet.ac.in/extra-images/gallery/gallery%20(3).jpg',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 10,
        title: Text('Gallery'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffff758), Color(0xffff7eb3)
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: photos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) {
              return Image.network(
                photos[index],
                  fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }

}