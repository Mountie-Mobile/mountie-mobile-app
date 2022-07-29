import 'package:flutter/cupertino.dart';

class LinksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Stack(
        children: [
          Center(
            child: Text('links'),
          ),
        ],
      ),
    );
  }
}
