import 'package:flation/screens/location_detail/text_section.dart';
import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {

  final String _place;
  final String _imagePath;

  LocationItem(this._place, this._imagePath);

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints.expand(
        height: 300.0,
      ),

      padding: EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),

      decoration: BoxDecoration(

        image: DecorationImage(
          image: AssetImage(_imagePath),
          fit: BoxFit.cover,
        ),

      ),

      child: Stack(

        children: <Widget>[

          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: TextSection(_place, Colors.white),
          ),

        ],

      ),

      margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),

    );
  }

}