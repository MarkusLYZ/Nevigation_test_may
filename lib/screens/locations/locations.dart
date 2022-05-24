import 'package:flutter/material.dart';
import 'package:untitled/app.dart';
import 'package:untitled/models/location.dart';


class Locations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Cats'),
      ),
      body: ListView(
        children: locations
          .map((location) => GestureDetector(
            child: Text(location.name),
            onTap: () => _onLocationTap(context, location.id),
        ))
        .toList(),
    ));
  }
  _onLocationTap(BuildContext context, int locationID){
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {"id":locationID});
  }
}