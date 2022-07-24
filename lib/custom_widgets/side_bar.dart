import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
          top: 0.0,
          bottom: 0.0,
          right:
              isDrawerOpen ? 0 : -(MediaQuery.of(context).size.width / 3) * 2,
          child: Container(
            width: (MediaQuery.of(context).size.width / 3) * 2,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: isDrawerOpen
                      ? Colors.black.withOpacity(0.8)
                      : Colors.black.withOpacity(0),
                  blurRadius: 200.0,
                ),
              ],
            ),
            /*child: THIS WILL BE WHERE WE CAN PUT SIDE BAR BUTTONS AND ETC,*/
          ),
        ),
        CupertinoButton(
          onPressed: () => setState(() => isDrawerOpen = !isDrawerOpen),
          //color: Color.fromARGB(255, 255, 255, 255),
          minSize: 50,
          padding: EdgeInsets.only(
              top: kBottomNavigationBarHeight,
              left: MediaQuery.of(context).size.width - 50,
              right: 4),
          child: Icon(
            isDrawerOpen ? CupertinoIcons.chevron_forward : CupertinoIcons.bars,
            color: isDrawerOpen
                ? Color.fromARGB(255, 153, 153, 153)
                : Color.fromARGB(255, 255, 255, 255),
            size: 50,
          ),
        ),
      ],
    );
  }
}
