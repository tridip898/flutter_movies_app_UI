import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 8.0, top: 12, right: 8, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.grey.shade700, width: 1.5)),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Image.asset(
                "lib/icons/smart-tv.png",
                height: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "MovieOnline",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )
            ],
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("lib/images/profile.jpg"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
