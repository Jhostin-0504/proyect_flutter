import 'package:flutter/material.dart';
import 'package:proyect/Widgets/widgets.dart';

class CardeScreen extends StatelessWidget {
  const CardeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Witget card"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          children: const [
            Tarjeta_1(),
            SizedBox(
              height: 10,
            ),
            Tarjeta_2(
              url:
                  "https://www.insideasiatours.com/sites/default/files/styles/metatag_twitter/public/2020-10/VIETNAM%20LANDSCAPES%20HERO%202843338_1920.jpg?itok=IVUC1DuR",
              name: 'Foto #1',
            ),
            Tarjeta_2(
              url:
                  'https://discover-your-south-america.com/blog/wp-content/uploads/2019/11/Cocora-Valley.jpg',
              name: 'Foto #2',
            ),
            Tarjeta_2(
              url:
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/screen-shot-2018-07-11-at-5-10-02-pm-1531412351.png',
              name: 'Foto #3',
            ),
            Tarjeta_2(
              url:
                  'https://d36tnp772eyphs.cloudfront.net/blogs/1/2015/04/Mount-Taranaki-volcano-in-New-Zealand.jpg',
              name: 'Foto #4',
            ),
          ],
        ));
  }
}
