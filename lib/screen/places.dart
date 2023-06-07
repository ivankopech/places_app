import 'package:flutter/material.dart';
import 'package:great_places_app/screen/add_place.dart';
import '../widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AddPlaceScreen(),
                ),
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: PlacesList(
        places: [],
      ),
    );
  }
}
