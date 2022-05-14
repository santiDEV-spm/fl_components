import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdtVkWn0u7cLm0iqBNM5fslKP8rQa6A66_sg&usqp=CAU',
              name: 'Un hermoso paisaje',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl: 'https://wallpaperaccess.com/full/3208117.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://c0.wallpaperflare.com/preview/749/573/180/spain-palma-sky-night.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2019/03/14/03/25/sunset-4054137_640.jpg',
              name: 'Atardecer en la playa',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
