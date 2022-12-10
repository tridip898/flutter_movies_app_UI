import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  final String image;
  final String text;
  const MovieList({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 5),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.27,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                )
            ),
          ),
          SizedBox(height: 3,),
          Text(text,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
