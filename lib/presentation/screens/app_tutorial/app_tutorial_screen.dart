import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl
              )
            ).toList(),
          ),
          
      Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Exit'),
              onPressed: () => context.pop(),
            )
          ),
        ],
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

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 20,),
            Text(caption, style: captionStyle,),

          ],
        ),
      ),
    );
  }
}