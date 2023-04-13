import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/profil.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

// widget category
  Widget CategorySlide() {
    Widget category(String img, String text) {
      return Stack(children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(right: 13),
            height: 100,
            width: 135,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 18),
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        size: 22,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Category',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                category('asset/plant_white_bg.png', 'Plant'),
                category('asset/lamp_white_bg.png', 'Lamp'),
                category('asset/chair_white_bg.png', 'Chair'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Widget gridVieww() {
  //   Widget gridItem(String img, String text, String harga) {
  //     return GridView.builder(
  //       physics: const NeverScrollableScrollPhysics(),
  //       shrinkWrap: true,
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
  //       itemCount: 6,
  //       itemBuilder: (context, index) {
  //         Container(
  //           margin: const EdgeInsets.only(right: 18),
  //           child: Stack(
  //             children: [
  //               Container(
  //                 width: 130,
  //                 height: 150,
  //                 decoration: BoxDecoration(
  //                     image: DecorationImage(
  //                         fit: BoxFit.cover, image: AssetImage(img))),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 100),
  //                 child: Container(
  //                   alignment: Alignment.bottomCenter,
  //                   height: 55,
  //                   width: 130,
  //                   decoration:
  //                       BoxDecoration(color: Colors.black54.withOpacity(0.4)),
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(3.0),
  //                     child: Column(
  //                       children: [
  //                         Row(
  //                           mainAxisAlignment: MainAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               text,
  //                               style: GoogleFonts.poppins(
  //                                   fontSize: 16,
  //                                   color: const Color(0xffFFFFFF)),
  //                             ),
  //                           ],
  //                         ),
  //                         Text(
  //                           harga,
  //                           style: GoogleFonts.poppins(
  //                               fontSize: 16, color: const Color(0xffFFFFFF)),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     );
  //   }

  //   return Container();
  // }


// widget Hot Item 
  Widget hotItem() {
    Widget list(String img, String text, String harga) {
      return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 22),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 145,
              height: 185,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: const Offset(0, 2))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.bottomCenter,
                height: 55,
                width: 145,
                decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            text,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.7)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          harga,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xffFFFFFF).withOpacity(0.7)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
          width: 5,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Hot Item',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  list('asset/favorite_img_4.jpg', 'Cactus', '\$19'),
                  list('asset/favorite_img_1.jpg', 'Elegant Lamp', '\$25'),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              list('asset/favorite_img_2.jpg', 'Traditional Chair', '\$42'),
              list('asset/favorite_img_3.jpeg', 'Wooden Chair', '\$37'),
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              list('asset/favorite_img_5.jpg', 'Plants', '\$10'),
              list('asset/favorite_img_6.jpg', 'Architectural', '\$28'),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 241, 240, 240),
//appbar
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5),
            ],
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 153, 144, 59),
              Color.fromARGB(255, 221, 202, 115),
            ]),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 28,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Discover',
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 28,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

//text field
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: CupertinoColors.systemGrey,
                                size: 30,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CupertinoColors.systemGrey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CupertinoColors.systemGrey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'What are you looking for?',
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: CupertinoColors.systemGrey),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(140), // ukuran maksimal dari appbar
      ),

// isi dari main menu, menyimpan widget yg telah dibuat sebelumnya
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, 
           child: CategorySlide(), //widget category
           ),
            const SizedBox(
              height: 10,
            ),
            hotItem(), //widget hot item

            // gridVieww()
          ],
        ),
      )),
    );
  }
}

// class bottom NavBar dan page controller
class tapTap extends StatefulWidget {
  const tapTap({super.key});

  @override
  State<tapTap> createState() => _tapTapState();
}

class _tapTapState extends State<tapTap> {
  List<Widget> hal = [mainPage(), profilPage()];
  int _currentIndex = 0;

  late PageController pageController;
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //floating icon (favorite icon)
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 250, 100, 60),
                    Color.fromARGB(255, 250, 63, 49)
                  ])),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: pageController,
        children: hal,
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color:
                        const Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  pageController.animateToPage(index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                });
              },
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
              showUnselectedLabels: true,
              iconSize: 35,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
