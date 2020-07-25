import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,

      ),
      bottomNavigationBar: _buildBottomAppBar(),

    );
  }

  _buildBottomAppBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedPosition,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0.0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: _selectedPosition == 0 ? Colors.blue[600]: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Icon(Icons.home),
            ),
            title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
            decoration: BoxDecoration(
                color: _selectedPosition == 1 ? Colors.blue[600]: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Icon(Icons.insert_chart),
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
            decoration: BoxDecoration(
                color: _selectedPosition == 2 ? Colors.blue[600]: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Icon(Icons.location_city),
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
            decoration: BoxDecoration(
                color: _selectedPosition == 3 ? Colors.blue[600]: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Icon(Icons.info),
          ),
          title: Text('Home'),
        )
      ],
      onTap: (index) {
        setState(() {
          _selectedPosition = index;
        });
      },
    );
  }

}
