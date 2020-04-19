import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveller/models/destinations.model.dart';

class TopDestinations extends StatelessWidget {
  Widget _buildDestination(Destination destination) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 270.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            child: Container(
              height: 150.0,
              width: 270.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${destination.activities.length} activities',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      destination.description,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    height: 240.0,
                    width: 240.0,
                    image: AssetImage(destination.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        destination.city,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
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
                            size: 10.0,
                            color: Colors.grey[300],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            destination.country,
                            style: TextStyle(
                              color: Colors.grey[300],
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Destinations",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 370.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildDestination(destinations[index]);
            },
          ),
        ),
      ],
    );
  }
}
