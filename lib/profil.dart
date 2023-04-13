import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class profilPage extends StatelessWidget {
  const profilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 //background
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/wallpaper3.jpg'), fit: BoxFit.fill),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
          ),

 //foto profil dan keterangan
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 18,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/fotog.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle),
                    ),
                    Text(
                      'Ahmad Pahrurrozi',
                      style: GoogleFonts.acme(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Mobile Application Developer',
                      style: GoogleFonts.acme(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
 // container untuk button collection dan category
              Positioned(
                top: 185,
                left: 0,
                right: 0,
                child: Stack(
                  children: [
                    Container(
                        height: 28,
                        width: double.infinity,
                        decoration:
                            BoxDecoration(color: Colors.grey.withOpacity(0.3))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '99 Collection',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Container(
                              height: 3,
                              width: 90,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        Text(
                          '99+ History',
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
 // 4 container box             
              Positioned(
                top: 240,
                left: 10,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 13),
                            height: 120,
                            width: 138,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 156, 197, 216),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 4,
                                      blurRadius: 6,
                                      offset: const Offset(0, 2))
                                ]),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'asset/plant_light_blue_bg.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Plant Choice',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 13),
                            height: 120,
                            width: 138,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 249, 250, 250),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 4,
                                      blurRadius: 6,
                                      offset: const Offset(0, 2))
                                ]),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'asset/lamp_light_gray_bg.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Best Lamps',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 13),
                            height: 120,
                            width: 138,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 247, 248, 248),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 4,
                                      blurRadius: 6,
                                      offset: const Offset(0, 2))
                                ]),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'asset/chair_white_bg.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Best Chairs',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 13),
                            height: 120,
                            width: 138,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 199, 193),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 4,
                                      blurRadius: 6,
                                      offset: const Offset(0, 2))
                                ]),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'asset/chair_light_orange_bg.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    'Best Chairs',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
