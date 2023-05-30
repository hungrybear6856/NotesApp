import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.tiltle, required this.iconData});

  final String tiltle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Text(
          tiltle.toUpperCase(),
          style: TextStyle(fontSize: 20, fontFamily: "Pacifico"),
        ),
        Spacer(),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(16)),
            child: IconButton(onPressed: () {}, icon: Icon(iconData)))
      ],
    );
  }
}
