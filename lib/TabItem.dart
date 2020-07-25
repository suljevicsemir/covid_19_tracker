import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {

  final String text;
  final IconData iconData;
  final bool isSelected;
  final Function onTap;


  TabItem({Key key, this.text, this.iconData, this.isSelected, this.onTap}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue[600] : Colors.transparent,
                  borderRadius:BorderRadius.circular(20.0)
                ),
                child: Icon(iconData, color: isSelected ? Colors.white:Colors.grey[600])
              )
            ],
          ),
        ),

      onTap: onTap,
    );
  }
}
