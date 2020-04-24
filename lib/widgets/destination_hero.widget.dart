import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveller/models/destinations.model.dart';

class DestinationHero extends StatelessWidget {
  final Destination destination;
  DestinationHero({this.destination});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0),
              ]),
          child: Hero(
            tag: destination.imageUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              child: Image(
                image: AssetImage(destination.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.arrowLeft),
                    iconSize: 20.0,
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.search),
                    iconSize: 20.0,
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.sortAmountDownAlt),
                    iconSize: 20.0,
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 30.0,
          left: 20.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    destination.city,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                      shadows: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 15.0,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        destination.country,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white70,
                          shadows: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 30.0,
          child: Icon(
            Icons.location_on,
            size: 30.0,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
