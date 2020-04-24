import 'package:flutter/material.dart';
import 'package:traveller/models/destinations.model.dart';
import 'package:traveller/widgets/activities.widget.dart';
import 'package:traveller/widgets/destination_hero.widget.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DestinationHero(destination: widget.destination),
            SizedBox(height: 20.0),
            Activities(activities: widget.destination.activities),
          ],
        ),
      ),
    );
  }
}
