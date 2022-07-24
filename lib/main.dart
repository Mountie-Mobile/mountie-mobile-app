import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MountieMobileAppMain());
}

class MountieMobileAppMain extends StatefulWidget {
  @override
  State<MountieMobileAppMain> createState() => _MountieMobileAppState();
}
/*
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
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.ant)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.game_controller))
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: ((context) {
              return const CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Image(
                    image: AssetImage('assets/mountie_icon.png'),
                    //height: 50,
                  ),
                  //padding: EdgeInsetsDirectional.all(4),
                ),
                child: Center(child: const Icon(CupertinoIcons.ant)),
              );
            }),
          );
        },
      ),
    );
  }
}*/

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
                ),
                body: Center(child: const Icon(CupertinoIcons.ant)),
              );
            }),
          );
        },
      ),
    );
  }
}
