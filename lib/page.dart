import 'package:flutter/cupertino.dart';

class PageTemplate extends StatelessWidget {
  String pageText;

  PageTemplate(this.pageText);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Image(
          image: AssetImage('assets/mountie_icon.png'),
        ),
        padding: EdgeInsetsDirectional.all(2),
        trailing: CupertinoButton(
          onPressed: () => print('test'),
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: const Icon(
            //.bars or .line_horizontal_3
            CupertinoIcons.line_horizontal_3,
            color: CupertinoColors.white,
          ),
        ),
      ),
      child: Center(child: Text(pageText)),
    );
  }
}
