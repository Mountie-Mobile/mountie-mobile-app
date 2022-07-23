import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MountieMobileAppMain());
}

class MountieMobileAppMain extends StatefulWidget {
  @override
  State<MountieMobileAppMain> createState() => _MountieMobileAppState();
}

class _MountieMobileAppState extends State<MountieMobileAppMain> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        barBackgroundColor: Color.fromARGB(255, 34, 34, 34),
        primaryColor: Color.fromARGB(255, 20, 24, 255),
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            middle: Image(image: AssetImage('mountie_icon.png'))),
        child: Center(child: Icon(CupertinoIcons.ant)),
      ),
    );
  }
}
