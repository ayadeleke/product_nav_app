// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  void _setRatingAsFour() {
    setState(() {
      _rating = 4;
    });
  }

  // void _setRatingAsFive() {
  //   setState(() {
  //     _rating = 5;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double size = 20;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(Icons.star, size: size)
                : Icon(Icons.star_border, size: size)),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(Icons.star, size: size)
                : Icon(Icons.star_border, size: size)),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(Icons.star, size: size)
                : Icon(Icons.star_border, size: size)),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 4
                ? Icon(Icons.star, size: size)
                : Icon(Icons.star_border, size: size)),
            color: Colors.red[500],
            onPressed: _setRatingAsFour,
            iconSize: size,
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(0),
        //   child: IconButton(
        //     icon: (_rating >= 5
        //         ? Icon(Icons.star, size: size)
        //         : Icon(Icons.star_border, size: size)),
        //     color: Colors.red[500],
        //     onPressed: _setRatingAsFive,
        //     iconSize: size,
        //   ),
        // ),
      ],
    );
  }
}
