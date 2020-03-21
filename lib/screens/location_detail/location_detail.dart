import 'image_banner.dart';
import 'package:flutter/material.dart';
import 'text_section.dart';
import '../../models/location.dart';


class LocationDetail extends StatelessWidget {

  final Location _location;

  LocationDetail(this._location);

  @override
  Widget build(BuildContext context){


    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(

      appBar: AppBar(
        title: Text("Location Detail"),
//        backgroundColor: Colors.black12,

      ),

//      backgroundColor: Colors.blueGrey,

      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,

        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          ImageBanner(_location.imagePath),
        ]..addAll(textSections(_location)),

      )

    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => ExtendedTextSection(fact.title, fact.text))
        .toList();
  }
}
