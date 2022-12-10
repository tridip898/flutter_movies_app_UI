import 'package:flutter/material.dart';

class ShareIcon extends StatelessWidget {
  final String icon;
  const ShareIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300.withOpacity(0.2),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade900,width: 1.5)
        ),
        padding: EdgeInsets.all(7),
        child: Image.asset(icon,height: 17,)
    );
  }
}
