import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'page.dart';

void main() => runApp(MountieMobileAppMain());

class MountieMobileAppMain extends StatefulWidget {
  @override
  State<MountieMobileAppMain> createState() => _MountieMobileAppState();
}

class _MountieMobileAppState extends State<MountieMobileAppMain> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        barBackgroundColor: Color.fromARGB(255, 0, 47, 255),
        primaryColor: Color.fromARGB(255, 20, 24, 255),
        //brightness: Brightness.dark,
      ),
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.ant)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.game_controller))
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: ((context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Image(
                    image: AssetImage('assets/mountie_icon.png'),
                    //height: 50,
                  ),
                  padding: EdgeInsetsDirectional.all(2),
                  trailing: CupertinoButton(
                    onPressed: () => print('test'),
                    child: Icon(
                      //.bars or .line_horizontal_3
                      CupertinoIcons.line_horizontal_3,
                      color: CupertinoColors.white,
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    //minSize: 100,
                    //color: CupertinoColors.white,
                  ),
                ),
                child: Center(child: Icon(CupertinoIcons.ant)),
              );
              return index == 0
                  ? PageTemplate("Hello World")
                  : PageTemplate("Goodbye World");
            }),
          );
        },
      ),
    );
  }
}

/*
class _MountieMobileAppState extends State<MountieMobileAppMain> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      theme: const CupertinoThemeData(
        //barBackgroundColor: Color.fromARGB(255, 0, 47, 255),
        primaryColor: Color.fromARGB(255, 0, 47, 255),
        //brightness: Brightness.dark,
      ),
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.ant)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.game_controller))
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: ((context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Image(
                    image: AssetImage('assets/mountie_icon.png'),
                    height: 54,
                  ),
                  centerTitle: true,
                  backgroundColor: Color.fromARGB(255, 0, 47, 255),
                  //titleSpacing: 50,
                  toolbarHeight: 62,
                  actions: [
                    IconButton(
                      onPressed: () => print('test'),
                      icon: Icon(CupertinoIcons.line_horizontal_3),
                      color: Color.fromARGB(255, 255, 255, 255),
                    )
                  ],
                ),
                body: Center(child: const Icon(CupertinoIcons.ant)),
              );
            }),
          );
        },
      ),
    );
  }
}*/
