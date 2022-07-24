import 'package:flutter/cupertino.dart';

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
}
