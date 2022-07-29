import 'package:flutter/cupertino.dart';

class PageTemplate extends StatelessWidget {
  String pageText;

  PageTemplate(this.pageText);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Stack(
        children: [
          Center(
            child: Text(pageText),
          ),
        ],
      ),
    );
  }
}
