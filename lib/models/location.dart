import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Arashiyama Bamboo Grove', 'assets/images/kiyomizuDera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Mount Fuji', 'assets/images/fuji.jpg', [
        LocationFact('Summary', 'Japan\'s Mt. Fuji is an active volcano about 100 kms southwest of Tokyo.'),
        LocationFact('Did you know?', 'There are 3 cities that surround Mt. Fuji: Gotemha')
      ]),
      Location(3, 'Bamboo Groove', 'assets/images/bamboo_groove.jpg', [
        LocationFact('Summary', 'While we could go out for ethereal glow....'),
        LocationFact('How to get there?', 'Kyoto airport, with several terminals is located 16 kms away from the groove.')
      ])
    ];
  }

}
