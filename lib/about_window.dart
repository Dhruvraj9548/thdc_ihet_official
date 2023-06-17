import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class about_window extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 10,
        title: Text('About'),
      ),

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffff758), Color(0xffff7eb3)
            ]
            )
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'THDC-IHET',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView(
                      shrinkWrap: true,
                        children: [
                          CarouselSlider(
                            items: [

                              //1st Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage('https://thdcihet.ac.in/extra-images/gallery/gallery%20(6).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //2nd Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage('https://thdcihet.ac.in/extra-images/gallery/gallery%20(13).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //3rd Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage('https://thdcihet.ac.in/extra-images/gallery/gallery%20(15).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //4th Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage('https://thdcihet.ac.in/extra-images/gallery/gallery%20(23).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //5th Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage('https://thdcihet.ac.in/extra-images/gallery/gallery%20(22).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                            ],

                            //Slider Container properties
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child: Expanded(
                    child: Text('THDC IHET was established in 2011 as a constituent institute of Uttarakhand Technical University. THDC Institute of Hydro Power Engineering and Technology is affiliated to Uttarakhand Technical University, Dehradun. The institute offers the B.Tech programme. The programme is approved by the All India council for Technical Education (AICTE). THDC IHET has collaborations with National Institute of Electronics and Information Technology (NIELIT) Haridwar. THDC Institute of Hydro Power Engineering and Technology also has many clubs and committees like Computer Club, Literary Club, Fine Arts Club, etc. Ample facilities like boys hostel, girls hostel, library, IT infrastructure, laboratories, sports, gym, etc are available at the institute.',
                    style: TextStyle(fontSize: 15, color: Colors.black87),)
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
