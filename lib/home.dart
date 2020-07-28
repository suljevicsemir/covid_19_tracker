import 'package:covid_19_tracker/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedPosition = 0;
    var top = 0.0;

    _funkcija() {
      if( top == MediaQuery.of(context).padding.top + kToolbarHeight) {
        return Text('Covid19');

      }

      return Text('');
    }

  _nested() {
    return NestedScrollView(
      headerSliverBuilder: (context, isScrolled) {
        return <Widget>[
            SliverAppBar(
              backgroundColor: Palette.primaryColor,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0)
                  )
              ),
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  top = constraints.biggest.height;
                  print(top.toString());
                 return  FlexibleSpaceBar(
                   centerTitle: true,
                    title: _funkcija(),
                    background: Container(
                      decoration: BoxDecoration(color: Palette.primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60.0),
                              bottomLeft: Radius.circular(80.0)
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          AppBar(
                            leading: IconButton(icon: Icon(Icons.menu), color: Colors.white, onPressed: () {  },),
                            elevation: 0.0,
                            backgroundColor: Palette.primaryColor,
                            actions: <Widget>[
                              IconButton(icon: Icon(Icons.notifications_none), color: Colors.white, onPressed: () {  },),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  'Covid-19', style: TextStyle(color: Colors.white),
                                ),
                              ),
                              //ovdje ide dropdown button
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text('izaberi drzavu', style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                          Text(
                            'Osjećate se malaksalo?', style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Ako se osjećate neki od simptoma covid-19 nazovite ili pošaljite SMS za pomoć.',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox( height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)
                                ),
                                color: Colors.red, onPressed: () {}, label: Text('Pozovi odma', style: TextStyle(color: Colors.white),), icon: Icon(Icons.call, color: Colors.white,),

                              ),
                              RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)
                                ),
                                color: Colors.blueAccent , onPressed: () {  }, icon: Icon(Icons.message, color: Colors.white,), label: Text('Posalji poruku', style: TextStyle(color: Colors.white),),

                              )
                            ],
                          )

                        ],
                      ),

                    ),
                  );
                }
              )


            ),

        ];
      },
      body: Center(
        child: Text('New York'),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _nested(),

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
