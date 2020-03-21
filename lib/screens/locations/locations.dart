import 'package:flation/screens/location_detail/location_detail.dart';
import 'package:flation/screens/locations/location_item.dart';
import 'package:flutter/material.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final locations = Location.fetchAll();

    return Scaffold(

      appBar: AppBar(
        title: Text("Locations"),
      ),

      body: ListView(

        children: locations.map((location) =>

          GestureDetector(
            child: LocationItem(location.name, location.imagePath),
            onTap: () => _onLocationTap(context, location),
          )

        ).toList(growable: true),

      ),

    );
  }

  _onLocationTap(BuildContext context, Location loc){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocationDetail(loc)),
    );
  }
}