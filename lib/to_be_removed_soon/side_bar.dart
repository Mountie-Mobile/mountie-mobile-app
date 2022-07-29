import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SideBar extends StatefulWidget {
  //bool isDrawerOpenJ;

  SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => SideBarState();
}

class SideBarState extends State<SideBar> {
  //Widget.isDrawerOpenJ(isDrawerOpenL)
  bool _isDrawerOpenJ = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutQuint,
          top: 0.0,
          bottom: 0.0,
          right:
              _isDrawerOpenJ ? 0 : -(MediaQuery.of(context).size.width / 3) * 2,
          child: Container(
            width: (MediaQuery.of(context).size.width / 3) * 2,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              boxShadow: [
                BoxShadow(
                  color: _isDrawerOpenJ
                      ? Colors.black.withOpacity(0.8)
                      : Colors.black.withOpacity(0),
                  blurRadius: 200.0,
                ),
              ],
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * .0001,
              //height: MediaQuery.of(context).size.height -
              //(kBottomNavigationBarHeight + 54),
              //color: Color.fromARGB(31, 0, 255, 8),
              //padding:
              margin: EdgeInsets.only(
                top: kBottomNavigationBarHeight +
                    MediaQuery.of(context).size.height * .065,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    color: Color.fromARGB(50, 39, 39, 39),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/side_bar_mountie_icon.png'),
                          color: const Color.fromARGB(255, 0, 47, 255),
                          height: MediaQuery.of(context).size.height * .07,
                        ),
                        const Text(
                          'Events',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 47, 255),
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        /*CupertinoButton(
          onPressed: () => setState(() => isDrawerOpen = !isDrawerOpen),
          //color: Color.fromARGB(255, 255, 255, 255),
          //minSize: MediaQuery.of(context).size.height * .061,
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(),
          child: Icon(
            isDrawerOpen ? CupertinoIcons.chevron_forward : CupertinoIcons.bars,
            color: isDrawerOpen
                ? Color.fromARGB(255, 153, 153, 153)
                : Color.fromARGB(255, 255, 255, 255),
            size: MediaQuery.of(context).size.height * .061,
          ),
        ),*/
      ],
    );
  }
}
