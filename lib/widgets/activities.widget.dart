import 'package:flutter/material.dart';
import 'package:traveller/models/activity.model.dart';

class Activities extends StatelessWidget {
  final List<Activity> activities;
  Activities({this.activities});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (BuildContext context, int index) {
          final activity = activities[index];
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(50.0, 5.0, 20.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: double.infinity,
                height: 170.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(activity.name),
                        Text('\$${activity.price}'),
                      ],
                    ),
                    Text(activity.type),
                    // _buildRatingStars(activity.rating),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 8.0,
                          ),
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            activity.startTimes[0],
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 8.0,
                          ),
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            activity.startTimes[1],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage(activity.imageUrl),
                    height: 150.0,
                    width: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
