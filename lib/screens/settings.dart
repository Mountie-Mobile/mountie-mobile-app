import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Stack(
        children: [
          Center(
            child: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
