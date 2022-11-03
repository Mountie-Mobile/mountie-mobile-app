import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller = TextEditingController(text: "Settings");
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
              autofocus: true,
            ),
          ),
        ],
      ),
    );
  }
}
