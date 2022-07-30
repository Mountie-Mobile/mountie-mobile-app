import 'package:flutter/cupertino.dart';

class HomeEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Stack(
        children: [
          Center(
            child: Text('Home'),
          ),
        ],
      ),
    );
  }
}
