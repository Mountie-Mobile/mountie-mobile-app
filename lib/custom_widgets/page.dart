import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './custom_nav_bar.dart';

class PageTemplate extends StatelessWidget {
  String pageText;

  PageTemplate(this.pageText);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomNavBar(),
      child: Center(child: Text(pageText)),
    );
  }
}
