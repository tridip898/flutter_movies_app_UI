import 'package:flutter/material.dart';

class RecommendMovie extends StatelessWidget {
  final String image;
  const RecommendMovie({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
        ),
      ),
    );
  }
}
