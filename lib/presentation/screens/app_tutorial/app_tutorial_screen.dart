import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Order', 'Exercitation voluptate cillum eu aute dolor irure aliquip.', 'assets/images/1.png'),
  SlideInfo('Wait for delivery', 'Ullamco ullamco duis labore quis occaecat culpa laborum id incididunt.', 'assets/images/2.png'),
  SlideInfo('Enjoy your meal!', 'Ea officia exercitation voluptate nostrud amet esse ut exercitation deserunt est enim est.', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title: slideData.title,
            caption: slideData.caption,
            imageUrl: slideData.imageUrl
          )
        ).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}