import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movies_app_ui/joker_detail.dart';

class PopularPage extends StatelessWidget {
  PopularPage({Key? key}) : super(key: key);
  final imgList = [
    'lib/images/deadpool.jpg',
    'lib/images/joker.jpg',
    'lib/images/venom1.jpg',
    'lib/images/iron_man.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JokerDetail()));
      },
      child: Container(
        child: CarouselSlider.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = imgList[index];
              return buildImages(urlImage, index);
            },
            options: CarouselOptions(
              autoPlay: true,
                initialPage: 1,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 10),
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayAnimationDuration: Duration(seconds: 2),
                height: 270)),
      ),
    );
  }

  Widget buildImages(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(imgList[index]), fit: BoxFit.fill)
        ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.orange.shade300,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                )
              ),
              child: Center(
                child: Text("HD",style: TextStyle(fontSize: 18,color: Colors.grey.shade900,fontWeight: FontWeight.w600),),
              ),
            )
          ],
        ),
      ],
    ),
      );
}
