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
                title: const Text(
                  'WIFI',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                content: const Text('Name: GUEST\nPassword: honor500'),
                actions: <Widget>[
                  CupertinoButton(
                    //color: Color.fromARGB(255, 0, 47, 255),
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text(
                      'OK',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
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
          SizedBox(height: 6),

          //
          // RHS Social Media Buttons
          //

          Container(
            margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: const Center(
              child: Text(
                "RHS Social Media",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {
                  _launchUrl('https://www.instagram.com/rhsmounties/');
                },
                //color: Color.fromARGB(255, 255, 255, 255),
                minSize: MediaQuery.of(context).size.height * .069,
                padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                child: Image(
                  image: const AssetImage(
                      'assets/social_media_icons/instagram.png'),
                  height: MediaQuery.of(context).size.width * .14,
                  width: MediaQuery.of(context).size.width * .14,
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  _launchUrl('https://twitter.com/RHSMounties');
                },
                //color: Color.fromARGB(255, 255, 255, 255),
                minSize: MediaQuery.of(context).size.height * .069,
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: Image(
                  image:
                      const AssetImage('assets/social_media_icons/twitter.png'),
                  height: MediaQuery.of(context).size.width * .14,
                  width: MediaQuery.of(context).size.width * .14,
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  _launchUrl('https://m.facebook.com/100063684754371/');
                },
                //color: Color.fromARGB(255, 255, 255, 255),
                minSize: MediaQuery.of(context).size.height * .069,
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: Image(
                  image: const AssetImage(
                      'assets/social_media_icons/facebook.png'),
                  height: MediaQuery.of(context).size.width * .14,
                  width: MediaQuery.of(context).size.width * .14,
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  _launchUrl('https://www.youtube.com/@rogershighschooltv3168');
                },
                //color: Color.fromARGB(255, 255, 255, 255),
                minSize: MediaQuery.of(context).size.height * .069,
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                child: Image(
                  image:
                      const AssetImage('assets/social_media_icons/youtube.png'),
                  height: MediaQuery.of(context).size.width * .14,
                  width: MediaQuery.of(context).size.width * .14,
                ),
              ),
            ],
          )
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
