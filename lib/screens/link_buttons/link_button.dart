//import 'dart:io';

//import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String link;
  final String text;

  LinkButton({Key? key, required this.link, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        _launchUrl(link);
      },
      color: const Color.fromARGB(255, 0, 47, 255),
      padding: const EdgeInsets.all(4),
      child: Container(
        width: MediaQuery.of(context).size.width * .65,
        child: Center(child: Text(text)),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'ERROR';
    }
  }
}
