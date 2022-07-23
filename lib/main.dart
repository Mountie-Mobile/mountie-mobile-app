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
    return const CupertinoApp(
      theme: CupertinoThemeData(
        barBackgroundColor: Color.fromARGB(255, 0, 47, 255),
        primaryColor: Color.fromARGB(255, 20, 24, 255),
        //brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Image(
            image: AssetImage('assets/mountie_icon.png'),
            //height: 50,
          ),
          //padding: EdgeInsetsDirectional.all(4),
        ),
        child: Center(child: Icon(CupertinoIcons.ant)),
      ),
    );
  }
}
