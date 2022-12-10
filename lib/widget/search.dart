import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 05),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade800,
      ),
      padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 18, color: Colors.white),
            prefixIcon: Icon(
              Icons.search,
              size: 40,
              color: Colors.orange,
            )),
      ),
    );
  }
}
