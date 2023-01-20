import 'package:flutter/material.dart';
import 'package:my_web_site/components/hire_me_card.dart';
import 'package:my_web_site/components/section_title.dart';
import 'package:my_web_site/sections/contact/contact_section.dart';

class ContactImage extends StatelessWidget {
  const ContactImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            /*Container(
              color: Colors.grey,
              width: 1110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/Fukidasi.png",
                    height: 200,
                  ),
                  Image.asset(
                    'assets/images/contactimage.png',
                    height: 300,
                  ),
                  Image.asset(
                    "assets/images/Fukidasi.png",
                    height: 200,
                  ),
                ],
              ),
            ),*/

            SectionTitle(
              title: 'Contact',
              subtitle: 'お問い合わせはこちら',
              color: Color(0xFF07E24A),
            ),
            SizedBox(
              width: 200,
            ),
            HireMeCard(),
          ],
        ),
      ),
    );
  }
}
