//Contains the widgets that will be used for Mobile layout for home
//Portrait and landscape
import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/app_drawer.dart';
class HomeMobilePortrait extends StatelessWidget {
    final GlobalKey<ScaffoldState> _scaffoldKey= GlobalKey<ScaffoldState>();
  HomeMobilePortrait({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: Icon(Icons.menu, size: 30,),
              onPressed: (){
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          )
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AppDrawer(),
        ],
      ),
    );
  }
}