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
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOutQuint,
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
            child: Container(
              width: 2,
              //height: MediaQuery.of(context).size.height -
              //(kBottomNavigationBarHeight + 54),
              //color: Color.fromARGB(31, 0, 255, 8),
              //padding:
              margin: const EdgeInsets.only(
                top: kBottomNavigationBarHeight + 54,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    color: Color.fromARGB(50, 39, 39, 39),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage('assets/side_bar_mountie_icon.png'),
                          color: Color.fromARGB(255, 0, 47, 255),
                          height: 60,
                        ),
                        Text(
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
