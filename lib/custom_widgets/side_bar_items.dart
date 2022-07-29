import 'package:flutter/cupertino.dart';

//
///
////
/////
////// MIGHT SWITCH TO, UNSURE IF WE CAN BUT YE....

class MenuItem extends StatelessWidget {
  final Icon icon;
  final String label;

  MenuItem({
    required this.icon,
    required this.label,
  })  : assert(icon != null),
        assert(label != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //NEED TO CHANGE PADDING AHHHHH
      padding: const EdgeInsets.only(bottom: 42.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon.icon,
            color: Color(0xFFB42827),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
