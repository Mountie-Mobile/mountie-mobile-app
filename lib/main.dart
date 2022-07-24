import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'custom_widgets/page.dart';

void main() => runApp(MountieMobileAppMain());

class MountieMobileAppMain extends StatefulWidget {
  @override
  State<MountieMobileAppMain> createState() => _MountieMobileAppState();
}

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
        barBackgroundColor: Color.fromARGB(255, 0, 47, 255),
        primaryColor: Color.fromARGB(255, 0, 47, 255),
        //brightness: Brightness.dark,
      ),
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book_fill),
              label: "Academia",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.double_music_note),
              label: "Arts",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.sportscourt_fill),
              label: "Athletics",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.ellipsis),
              label: "Misc",
            ),
          ],
          currentIndex: 2,
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: ((context) {
              if (index == 0) {
                return PageTemplate("FirstPage");
              }
              if (index == 1) {
                return PageTemplate("SecondPage");
              }
              if (index == 2) {
                return PageTemplate("ThirdPage");
              }
              if (index == 3) {
                return PageTemplate("FourthPage");
              }
              return PageTemplate("FifthPage");
              // return index == 0
              //     ? PageTemplate("Hello World")
              //     : PageTemplate("Goodbye World");
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