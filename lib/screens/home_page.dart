import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/beeline/internet_paketlar.dart';
import 'package:flutter_application_1/screens/beeline/setting.dart';
import 'package:flutter_application_1/screens/mobiuz/internet_paketlar.dart';
import 'package:flutter_application_1/screens/ucell/internet_paketlar.dart';
import 'package:flutter_application_1/screens/uzmobile/internet_paketlar.dart';
import 'package:flutter_application_1/utils/beeline_constants.dart';
import 'package:flutter_application_1/utils/mobiuz_constants.dart';
import 'package:flutter_application_1/utils/ucell_constants.dart';
import 'package:flutter_application_1/utils/uzmobile_constants.dart';
import 'package:flutter_application_1/widgets/beeline/beelineCardWidget.dart';
import 'package:flutter_application_1/widgets/homePageButtonWidget.dart';
import 'package:flutter_application_1/widgets/beeline/beeButtomCardWidget.dart';
import 'package:flutter_application_1/widgets/beeline/beelineBottomNavBarWidget.dart';
import 'package:flutter_application_1/widgets/mobiuz/mobiBottomNavBarWidget.dart';
import 'package:flutter_application_1/widgets/ucell/ucellBottomNavBarWidget.dart';
import 'package:flutter_application_1/widgets/uzmobile/uzmoBottomNavBarWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? bgColor = const Color.fromARGB(255, 250, 231, 255);
  int selectedPage = 0;
  int currentIndex = 0;
  bool isSelected = false;
  dynamic narxdColor;
  dynamic textColor;
  String? compImage;
  int screenIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // Color(0xFFFAF8EC),
      body: _buildBody(context),
      bottomNavigationBar: screenIndex == 0
          ? BottomNavBarWidget2(
              onTappItem: (int index) {
                setState(
                  () {
                    selectedPage = index;
                  },
                );
              },
            )
          : screenIndex == 1
              ? BottomNavBarWidget3(
                  onTappItem: (int index) {
                    setState(
                      () {
                        selectedPage = index;
                      },
                    );
                  },
                )
              : screenIndex == 2
                  ? BottomNavBarWidget(
                      onTappItem: (int index) {
                        setState(
                          () {
                            selectedPage = index;
                          },
                        );
                      },
                    )
                  : BottomNavBarWidget4(
                      onTappItem: (int index) {
                        setState(
                          () {
                            selectedPage = index;
                          },
                        );
                      },
                    ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return selectedPage == 0
        ? SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: buildCrousel(carouselItems),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 194,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 14.0),
                              child: Text(
                                "Ommabop paketlar",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "Barchasi",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: textColor,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 121,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: BeelineCardWidget(
                                  cardColor2: screenIndex == 2
                                      ? Colors.black
                                      : const Color(0xFFFFBE00),
                                  companyImage: compImage,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                _buildCategoriesGrid(
                  screenIndex == 0
                      ? ucellButtonList
                      : screenIndex == 1
                          ? mobiButtonList
                          : screenIndex == 2
                              ? beelineButtonList
                              : uzmobileButtonList,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          )
        : selectedPage == 1 && screenIndex == 0
            ? const UcellInternetPaketlarScreen()
            : selectedPage == 1 && screenIndex == 1
                ? const MobiInternetPaketlarScreen()
                : selectedPage == 1 && screenIndex == 2
                    ? const InternetPaketlarScreen()
                    : selectedPage == 1 && screenIndex == 3
                        ? const UzmobileInternetPaketlarScreen()
                        : const SettingScreen();
  }

  Widget _buildCategoriesGrid(List<Map<String, dynamic>> data) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: data.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = data[index];
        return BeeButtomWidget(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => item["page"],
              ),
            );
          },
          buttonText: item["name"] ?? "",
          iconPath: item["image"] ?? "",
        );
      },
    );
  }

  Widget buildCrousel(List<Map<String, dynamic>> data) {
    return CarouselSlider.builder(
      itemCount: data.length,
      itemBuilder: (_, index, realIndex) {
        final item = data[index];
        return ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardWidget(
              ImagePath: item["imagePath"] ?? "",
              cardColor: item["cardColor"] ?? "",
            ),
            // Add more CardWidget instances here if needed
          ],
        );
      },
      options: CarouselOptions(
        height: 90,
        viewportFraction: 0.7,
        initialPage: screenIndex,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          setState(() {
            screenIndex = index;
            if (index == 0) {
              compImage = 'images/img/ucellCardback.png';
              bgColor = const Color.fromARGB(255, 250, 231, 255);
              textColor = const Color(0xFF652D86);
            } else if (index == 1) {
              compImage = 'images/img/mobiCardBack.png';
              bgColor = const Color.fromARGB(255, 255, 237, 234);
              textColor = const Color(0xFFE30613);
            } else if (index == 2) {
              compImage = 'images/img/beeCardBack.png';
              bgColor = const Color(0xFFFAF8EC);
              textColor = const Color(0xFFFFBE00);
            } else {
              compImage = 'images/img/uzmoCardback.png';
              bgColor = const Color.fromARGB(255, 236, 243, 250);
              textColor = const Color(0xFF0073FF);
            }
          });
        },
      ),
    );
  }
}
