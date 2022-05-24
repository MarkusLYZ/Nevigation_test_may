import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      home: Locations(),   

    );
  }

  RouteFactory _routes(){
    return (settings){
      
      final arguments = settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch(settings.name){
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}