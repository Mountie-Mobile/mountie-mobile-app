import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksPage extends StatelessWidget {
  /*Uri uri = Uri(
      scheme: 'https',
      host:
          'hac20.esp.k12.ar.us/HomeAccess20/Account/LogOn?ReturnUrl=%2fHomeAccess20');*/

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: const Center(
              child: Text(
                "Important Links",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 6),

          //
          // HAC BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl(
                  'https://hac20.esp.k12.ar.us/HomeAccess20/Account/LogOn?ReturnUrl=%2fHomeAccess20');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('HAC (Grade Viewer)')),
            ),
          ),
          SizedBox(height: 8),

          //
          // MyPaymentsPlus BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://www.mypaymentsplus.com/welcome');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('MyPaymentsPlus')),
            ),
          ),
          SizedBox(height: 8),

          //
          // WIFI BUTTON ********* NEED CHECK ON IPHONE
          CupertinoButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('WIFI'),
                content: const Text('GUEST\nPassword: honor500'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('WIFI')),
            ),
          ),
          SizedBox(height: 8),

          //
          // ACT BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://www.act.org/');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('ACT')),
            ),
          ),
          SizedBox(height: 8),

          //
          // SAT BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://satsuite.collegeboard.org/sat');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('SAT')),
            ),
          ),
          SizedBox(height: 8),

          //
          // Google Classroom BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://classroom.google.com/u/0/');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('Google Classroom')),
            ),
          ),
          SizedBox(height: 8),

          //
          // AP Classroom BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl(
                  'https://apstudents.collegeboard.org/?navId=satsuite-aps');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('AP Classroom')),
            ),
          ),
          SizedBox(height: 8),

          //
          // RHS Website BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://www.rogersschools.net/rhs');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('Rogers High School Website')),
            ),
          ),
          SizedBox(height: 8),

          //
          // RHS Athletic Website BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://www.rogersmounties.com/');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('Rogers High School Athletics')),
            ),
          ),
          SizedBox(height: 8),

          //
          // RHS Counselor Website BUTTON
          CupertinoButton(
            onPressed: () {
              _launchUrl('https://www.rogersschools.net/Page/1334');
            },
            color: const Color.fromARGB(255, 0, 47, 255),
            padding: const EdgeInsets.all(4),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: const Center(child: Text('Find your counselor')),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'ERROR';
    }
  }
}
