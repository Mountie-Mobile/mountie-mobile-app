import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget
    implements ObstructingPreferredSizeWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
          padding: EdgeInsets.all(4),
          child: const Image(
            image: AssetImage('assets/mountie_icon.png'),
            height: 54,
          )),
      primary: true,
      centerTitle: true,
      backgroundColor: Color.fromARGB(200, 0, 47, 255),
      toolbarHeight: 62,
      /*actions: [   (MIGHT COME BACK LATER)
        CupertinoButton(
          onPressed: () => setState(() => isDrawerOpen = !isDrawerOpen),
          //color: Color.fromARGB(255, 255, 255, 255),
          minSize: 46,
          padding: EdgeInsets.all(4),
          child: const Icon(
            CupertinoIcons.bars,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 46,
          ),
        ),
      ],*/
    );
  }
}


// TO DELETE BELOW AFTER WE FIGURE OUT SIDE BAR SWITCHING PAGES

/*tool bar increase size
  bool isDrawerOpen = false;
  //var arrowIcon =
  //isDrawerOpen ? CupertinoIcons.chevron_up : CupertinoIcons.chevron_down;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
          padding:
              EdgeInsets.only(right: 6, top: 4, bottom: isDrawerOpen ? 142 : 4),
          child: const Image(
            image: AssetImage('assets/mountie_icon.png'),
            height: 54,
          )),
      primary: true,
      centerTitle: true,
      backgroundColor: Color.fromARGB(200, 0, 47, 255),
      //titleSpacing: 50,
      toolbarHeight: isDrawerOpen ? 200 : 62,
      actions: [
        CupertinoButton(
          onPressed: () => setState(() => isDrawerOpen = !isDrawerOpen),
          //color: Color.fromARGB(255, 255, 255, 255),
          minSize: 46,
          padding:
              EdgeInsets.only(right: 6, top: 8, bottom: isDrawerOpen ? 146 : 8),
          child: const Icon(
            CupertinoIcons.bars,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 46,
          ),
        ),
      ],
      bottom: ,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}*/


/*
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
          top: 0,
          bottom: 0,
          left: _isDrawerOpen
              ? 0.0
              : -(MediaQuery.of(context).size.width / 3) * 2,
          child: Container(
            width: (MediaQuery.of(context).size.width / 3) * 2,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: 
          ),
        ),
*/
/*appBar: AppBar(
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
              );*/

              /*
              AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
            top: 0.0,
            bottom: 0.0,
            left: isDrawerOpen
                ? 0.0
                : -(MediaQuery.of(context).size.width / 3) * 2,
            child: Container(
              width: (MediaQuery.of(context).size.width / 3) * 2,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20.0,
                  ),
                ],
              ),
            ),
          ),
          CupertinoButton(
            onPressed: () => setState(() => isDrawerOpen = !isDrawerOpen),
            //color: Color.fromARGB(255, 255, 255, 255),
            minSize: 46,
            padding: EdgeInsets.all(4),
            child: const Icon(
              CupertinoIcons.bars,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 46,
            ),
          ),*/