import 'package:flutter/cupertino.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Stack(
        children: [
          Center(
            child: Text('seach thign'),
          ),
        ],
      ),
    );
  }
}
