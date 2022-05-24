import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll(){
    return[
      Location(1, 'Cat1', 'assets/images/cat1.jpg', [
        LocationFact('Smol cat', 'This cat is staring at u')]),
      Location(2, 'Cat2', 'assets/images/cat2.jpg', [
        LocationFact('Medium cat', 'This cat is smart')])
    ];

  }
 static Location? fetchByID(int locationID){
    List<Location> locations = Location.fetchAll();
    for(var i = 0; i<locations.length;i++){
      if(locations[i].id == locationID){
        return locations[i];
      }
    }
    return null;
  }
}
