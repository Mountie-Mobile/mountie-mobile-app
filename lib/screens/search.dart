import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:mountie_mobile_app/custom_widgets/events_list.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController controller = TextEditingController(text: "");
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: 'initial text');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: CupertinoSearchTextField(
                controller: controller,
                placeholder: "Search Mountie Events...",
              ),
            ),
            EventList()
          ],
        ),
      ),
    );
  }
}
