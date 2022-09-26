import 'package:flutter/cupertino.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: const CupertinoSearchTextField(
              placeholder: "Search Mountie Events...",
            ),
          ),
        ],
      ),
    );
  }
}
