import 'package:flutter/cupertino.dart';

class PageTemplate extends StatelessWidget {
  String pageText;

  PageTemplate(this.pageText);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Image(
          image: AssetImage('assets/mountie_icon.png'),
        ),
        padding: EdgeInsetsDirectional.all(2),
      ),
      child: Center(child: Text(pageText)),
    );
  }
}
