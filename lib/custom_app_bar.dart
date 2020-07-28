import 'package:covid_19_tracker/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _prefferedHeight = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.primaryColor,
      height: _prefferedHeight,
      child: Row(
        children: <Widget>[
            Material(
              color: Palette.primaryColor,
              child: IconButton(
                icon: Icon(Icons.menu), onPressed: () {  },

              ),
            ),


          IconButton(
            icon: Icon(Icons.notifications_none), onPressed: () {  },
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_prefferedHeight);

}