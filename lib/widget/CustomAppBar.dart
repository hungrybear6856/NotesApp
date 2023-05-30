import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Text(
          ' Note '.toUpperCase(),
          style: TextStyle(fontSize: 20, fontFamily: "Pacifico"),
        ),
        Spacer(),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(16)),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)))
      ],
    );
  }
}
