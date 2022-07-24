/*import 'package:flutter/cupertino.dart';

class CustomNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: const Image(
        image: AssetImage('assets/mountie_icon.png'),
      ),
      padding: const EdgeInsetsDirectional.all(2),
      trailing: CupertinoButton(
        onPressed: () => print('test'),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: const Icon(
          //.bars or .line_horizontal_3
          CupertinoIcons.line_horizontal_3,
          color: CupertinoColors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            icon: Icon(CupertinoIcons.bars),
            color: Color.fromARGB(255, 255, 255, 255),
            iconSize: 46,
            padding: EdgeInsets.all(6))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}

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