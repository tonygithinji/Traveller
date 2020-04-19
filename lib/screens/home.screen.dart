import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveller/widgets/top_destinations.widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
          color: index == _selectedIndex
              ? Theme.of(context).accentColor
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(35.0),
        ),
        child: Icon(
          _icons[index],
          size: 22.0,
          color: index == _selectedIndex
              ? Theme.of(context).primaryColor
              : Colors.grey[400],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 80.0),
              child: Text(
                "What would you like to find?",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),
            TopDestinations(),
          ],
        ),
      ),
    );
  }
}
