import 'package:flutter/material.dart';
import '03_1_imageDetail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: const HeroAnimation(),
    );
  }
}

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

Widget checkUrl(String url) {
  try {
    return Image.network(
        url,
        height: 70.0,
        width: 70.0,
        fit: BoxFit.cover);
  } catch (e) {
    return const Icon(Icons.image);
  }
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
      return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
        children: List.generate(20, (index) {
          String imgUrl = 'images/001.jpg';
          return GestureDetector(
            child: Hero(
              tag: imgUrl,
              child: Image.asset(imgUrl),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext ctx) {
                  return ImageDetail(
                    imgUrl: imgUrl,
                  );
                }),
              );
            },
          );
        }),
      );
  }
}
