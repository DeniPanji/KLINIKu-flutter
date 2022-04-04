import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Container categoryDoctor(String img, String title) {
  return Container(
    width: 130,
    child: Column(
      children: <Widget>[
        Image.asset('assets/image/category/$img'),
        Text(
          "$title",
          style: TextStyle(fontWeight: FontWeight.w800),
        )
      ],
    ),
  );
}
