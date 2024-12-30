import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:share_plus/share_plus.dart';
import 'package:task/general_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'file_page.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool showHeart = false;
  int posi = 0;
  List a = [
    " I Radiate Positivity and Attract joy into My Life. Today, I choose Happiness and Embrace the Beauty Around me",
    "I Radiate Positivity and Attract joy into My Life. Today, I choose Happiness and Embrace the Beauty Around me.",
    "I am Capable, Confident, and Ready to take on any Challenge that Comes My Way.",
    "My relationship is filled with trust, love, and mutual understanding.",
    "My relationship is filled with trust, love, and mutual understanding.",
    " I Radiate Positivity and Attract joy into My Life. Today, I choose Happiness and Embrace the Beauty Around me",
    "I Radiate Positivity and Attract joy into My Life. Today, I choose Happiness and Embrace the Beauty Around me.",
    "I am Capable, Confident, and Ready to take on any Challenge that Comes My Way.",
    "My relationship is filled with trust, love, and mutual understanding.",
    "My relationship is filled with trust, love, and mutual understanding."
  ];

  List<String> themeImages = [
    "assets/theme/theme1.png",
    "assets/theme/theme2.png",
    "assets/theme/theme3.png",
    "assets/theme/theme4.png",
    "assets/theme/theme5.png",
    "assets/theme/theme6.png",
    "assets/theme/theme1.png",
    "assets/theme/theme2.png",
    "assets/theme/theme3.png",
    "assets/theme/theme4.png",
    "assets/theme/theme5.png",
    "assets/theme/theme6.png",
  ];
  int selectedTheme = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(themeImages[selectedTheme]),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 60, left: 20),
                            child: Container(
                              height: 38,
                              width: 89,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black26),
                              child: Center(
                                  child: Text(
                                "General",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GeneralPage()));
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 150),
                          child: SizedBox(
                            height: 38,
                            width: 120,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: Image.asset(
                                        "assets/png_images/Calendar.png"),
                                    onTap: () {
                                      showDialog<void>(
                                        context: context,
                                        // false = user must tap button, true = tap outside dialog
                                        builder: (BuildContext dialogContext) {
                                          return Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Container(
                                                height: 546,
                                                width: 386,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        SizedBox(
                                                          height: 28,
                                                          width: 28,
                                                          child: IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                                Icons.cancel),
                                                            color: Colors.white,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 22),
                                                      child: Container(
                                                        height: 408,
                                                        width: 386,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        31)),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          child: Column(
                                                            children: [
                                                              Center(
                                                                  child:
                                                                      Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            30),
                                                                child: Text(
                                                                  "A new daily habit",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          24,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Color(
                                                                          0XFF2D2D2D)),
                                                                ),
                                                              )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 40,
                                                                        left:
                                                                            30,
                                                                        right:
                                                                            30),
                                                                child: Text(
                                                                  "You just completed your daily goal of 10 affirmations. It’s the first step towards a more positive life!",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Color(
                                                                        0xFF2D2D2D),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 40,
                                                                        left:
                                                                            30,
                                                                        right:
                                                                            30),
                                                                child: Text(
                                                                    "Practice 3 days in a row to complete the challenge",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: Color(
                                                                            0XFF2D2D2D))),
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 39,
                                                                        left:
                                                                            20,
                                                                        right:
                                                                            40),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        CircleAvatar(
                                                                          backgroundColor:
                                                                              Color(0xFF00AF00),
                                                                          child:
                                                                              Text("1"),
                                                                        ),
                                                                        _buildLine(),
                                                                        CircleAvatar(
                                                                          backgroundColor:
                                                                          Color(0xFFECECEC),
                                                                          child:
                                                                              Text("2"),
                                                                        ),
                                                                        _buildLine(),
                                                                        CircleAvatar(
                                                                          backgroundColor:
                                                                              Color(0xFFECECEC),
                                                                          child:
                                                                              Text("3"),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 16),
                                                      child: Container(
                                                        height: 66,
                                                        width: 386,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14),
                                                            color: Color(
                                                                0xFF00AF00)),
                                                        child: Center(
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            child: Text(
                                                              "I’m all in for tomorrow",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xFFFFFFFF),
                                                                  fontSize: 24,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: Image.asset(
                                        "assets/png_images/folder.png"),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FilePage()));
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: Image.asset(
                                        "assets/png_images/theme 1.png"),
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder:
                                              (BuildContext dialogContext) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                top: 100,
                                              ),
                                              child: Container(
                                                height: 166,
                                                width: 400,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(22),
                                                            topRight:
                                                                Radius.circular(
                                                                    22)),
                                                    color: Colors.white),
                                                child: Stack(children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 40,
                                                            right: 100),
                                                    child: Row(
                                                      children: [
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down,
                                                              size: 25,
                                                              color: Color(
                                                                  0xFF666666),
                                                            )),
                                                        Material(
                                                            color: Colors
                                                                .transparent,
                                                            child: Text(
                                                              "Theme",
                                                              style: GoogleFonts.share(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Color(
                                                                      0xFF2D2D2D)),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 50,
                                                            left: 20,
                                                            right: 20),
                                                    child: GridView.builder(
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    3,
                                                                crossAxisSpacing:
                                                                    10,
                                                                mainAxisSpacing:
                                                                    10),
                                                        itemCount:
                                                            themeImages.length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                selectedTheme =
                                                                    index;
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  height: 200,
                                                                  width: 122,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: AssetImage(themeImages[
                                                                            index]),
                                                                        fit: BoxFit
                                                                            .cover),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    border: Border.all(
                                                                        color: selectedTheme ==
                                                                                index
                                                                            ? Colors
                                                                                .green
                                                                            : Colors
                                                                                .transparent,
                                                                        width:
                                                                            2),
                                                                  ),
                                                                ),
                                                                if (selectedTheme ==
                                                                    index)
                                                                  Container(
                                                                    height: 24,
                                                                    width: 24,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                50),
                                                                        color: Color(
                                                                            0xFF00AF00)),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/theme/Vector (1).png"),
                                                                  ),
                                                              ],
                                                            ),
                                                          );
                                                        }),
                                                  ),
                                                ]),
                                              ),
                                            );
                                          });
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: DotsIndicator(
                        position: posi,
                        dotsCount: a.length,
                        decorator: DotsDecorator(
                            color: Colors.brown,
                            activeColor: Colors.white,
                            shape: Border(),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(50)))),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: CarouselSlider.builder(
                          itemCount: a.length,
                          options: CarouselOptions(
                              scrollDirection: Axis.vertical,
                              height: 500,
                              enlargeCenterPage: true,
                              aspectRatio: 17 / 9,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  posi = index;
                                });
                              }),
                          itemBuilder:
                              (BuildContext context, int index, int realIndex) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: SizedBox(
                                    height: 210,
                                    width: 336,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(a[index],
                                              style: GoogleFonts.alkatra(
                                                fontSize: 26,
                                                letterSpacing: 1,
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                    )),
                              ),
                            );
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 135, top: 10),
                      child: Row(
                        children: [
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Image.asset(
                                        "assets/png_images/heart.png")),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                showHeart = true;
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Stack(
                                        children: [
                                          Center(
                                            child: SizedBox(
                                              height: 80,
                                              width: 80,
                                              child: Image.asset(
                                                "assets/png_images/heart (1).png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              });
                            },
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Image.asset(
                                        "assets/png_images/download-02.png")),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Image.asset(
                                        "assets/png_images/ShareFat.png")),
                              ),
                            ),
                            onTap: () {
                              Share.share(themeImages[selectedTheme]);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

Widget _buildLine() {
  return Container(
    width: 50,
    height: 5,
    color: Colors.grey[300],
  );
}
