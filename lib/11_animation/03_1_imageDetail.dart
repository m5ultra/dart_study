import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  final imgUrl;

  const ImageDetail({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: imgUrl,
          child: Image.asset(
            imgUrl,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
  }
}
