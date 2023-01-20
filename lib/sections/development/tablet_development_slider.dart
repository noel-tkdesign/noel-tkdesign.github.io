import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_web_site/components_tablet/tablet_section_title.dart';

class TabletDevelopmentSlider extends StatefulWidget {
  const TabletDevelopmentSlider({super.key});

  @override
  State<TabletDevelopmentSlider> createState() =>
      _TabletDevelopmentSliderState();
}

class _TabletDevelopmentSliderState extends State<TabletDevelopmentSlider> {
  int _current = 0;

  final List<String> images = [
    'assets/images/iosimage.png',
    'assets/images/flutterimage.png',
    'assets/images/FlutterwebApp.png',
    'assets/images/Icon image.png'
  ];

  final List<String> places = [
    'SwiftUI',
    'FlutterApp',
    'FlutterWeb',
    'Icon Design'
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            child: Image.asset(
              element,
              width: 500,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 600),
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        //color: Colors.grey[100],
        margin: EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          children: [
            TabletSectionTitle(
              color: Color.fromARGB(255, 0, 143, 252),
              subtitle: 'mobile & web',
              title: 'Development & Design',
            ),
            Column(
              children: [
                CarouselSlider(
                  items: generateImagesTiles(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 18 / 8,
                    onPageChanged: (index, other) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.map((url) {
                      int index = images.indexOf(url);
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
