import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'screens/events.dart';
import 'screens/search.dart';
import 'screens/calendar.dart';
import 'screens/settings.dart';
import 'screens/links.dart';

class PageScaffoldCustom extends StatefulWidget {
  const PageScaffoldCustom({Key? key}) : super(key: key);

  @override
  State<PageScaffoldCustom> createState() => _PageScaffoldCustomState();
}

class _PageScaffoldCustomState extends State<PageScaffoldCustom> {
  bool _isDrawerOpen = false;
  int _currentPage = 0;
  // 0 = events, 1 = search, 2 = calendar, 3 = settings, 4 = important links

  bool _eventsPage = true;
  bool _searchPage = false;

  bool _calendarPage = false;
  bool _settingsPage = false;
  bool _linksPage = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Stack(
        children: [
          //
          // PAGES CONTAINER
          //

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top +
                    MediaQuery.of(context).size.height * .075),
            //color: Color.fromARGB(255, 255, 0, 0),
            child: Stack(
              children: [
                if (_currentPage == 0) ...[
                  EventsPage(),
                ] else if (_currentPage == 1) ...[
                  SearchPage(),
                ] else if (_currentPage == 2) ...[
                  CalendarPage(),
                ] else if (_currentPage == 3) ...[
                  SettingsPage(),
                ] else if (_currentPage == 4) ...[
                  LinksPage(),
                ]
              ],
            ),
          ),

          //
          // NAV BAR
          //

          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * .003),
                child: Image(
                  image: AssetImage('assets/mountie_icon.png'),
                  height: MediaQuery.of(context).size.height * .069,
                ),
              ),
              primary: true,
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 0, 47, 255),
              toolbarHeight: MediaQuery.of(context).size.height * .075,
              actions: [
                CupertinoButton(
                  onPressed: () => setState(() => _isDrawerOpen = true),
                  //color: Color.fromARGB(255, 255, 255, 255),
                  minSize: MediaQuery.of(context).size.height * .069,
                  padding: EdgeInsets.all(4),
                  child: Icon(
                    CupertinoIcons.bars,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: MediaQuery.of(context).size.height * .061,
                  ),
                ),
              ],
            ),
          ),

          //
          // BLACK BOX ABOVE NAV BAR
          //
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).padding.top,
            //padding: EdgeInsets.all(0),
            color: Colors.black,
            alignment: Alignment.topCenter,
          ),

          //
          // SIDE BAR FADE BOX BEHIND IT
          //
          AnimatedPositioned(
            duration: const Duration(milliseconds: 0),
            curve: Curves.linear,
            top: 0.0,
            bottom: 0.0,
            right: _isDrawerOpen ? 0 : -MediaQuery.of(context).size.width,
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails) =>
                  setState(() => _isDrawerOpen = false),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(150, 0, 0, 0),
                ),
              ),
            ),
          ),

          //
          // SIDE BAR
          //

          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linearToEaseOut,
            //easeOutQuint
            top: MediaQuery.of(context).padding.top,
            bottom: 0.0,
            right: _isDrawerOpen
                ? 0
                : -(MediaQuery.of(context).size.width / 3) * 2,
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails) =>
                  setState(() => _isDrawerOpen = false),
              child: Container(
                width: (MediaQuery.of(context).size.width / 3) * 2,
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: _isDrawerOpen
                          ? Colors.black.withOpacity(0.2)
                          : Colors.black.withOpacity(0),
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      //
                      // BACK BUTTON
                      //
                      Container(
                        padding: const EdgeInsets.all(0),
                        color: Color.fromARGB(49, 255, 255, 255),
                        child: Stack(
                          children: [
                            Positioned(
                              top: ((MediaQuery.of(context).size.height *
                                      .0375) -
                                  (MediaQuery.of(context).size.height * .0305)),
                              right: MediaQuery.of(context).size.width * .01,
                              // need to replace with cupertino button
                              child: GestureDetector(
                                onTap: () =>
                                    setState(() => _isDrawerOpen = false),
                                child: Icon(
                                  CupertinoIcons.chevron_forward,
                                  color: Color.fromARGB(255, 153, 153, 153),
                                  size:
                                      MediaQuery.of(context).size.height * .061,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      // LIST OF BUTTONS CONTAINER
                      //
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          //color: Color.fromARGB(117, 44, 44, 44),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: (MediaQuery.of(context).size.height *
                                    .075)),
                            child: Column(
                              children: <Widget>[
                                //
                                // SIDE BAR EVENT BUTTON
                                //
                                CupertinoButton(
                                  //color: Color.fromARGB(255, 153, 153, 153),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      /*Image(
                                      image: AssetImage(
                                          'assets/side_bar_mountie_icon.png'),
                                      color: _eventsPage
                                          ? Color.fromARGB(255, 0, 47, 255)
                                          : Color.fromARGB(255, 153, 153, 153),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .07,
                                    ),*/
                                      Icon(CupertinoIcons.bell,
                                          color: _eventsPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .05),
                                      SizedBox(width: 8),
                                      Text(
                                        'Events',
                                        style: TextStyle(
                                          color: _eventsPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() => _currentPage = 0);
                                    setState(() => _isDrawerOpen = false);
                                    setState(() => _eventsPage = true);
                                    setState(() => _searchPage = false);
                                    setState(() => _calendarPage = false);
                                    setState(() => _settingsPage = false);
                                    setState(() => _linksPage = false);
                                  },
                                ),
                                //
                                // SIDE BAR SEARCH BUTTON
                                //
                                CupertinoButton(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(CupertinoIcons.search,
                                          color: _searchPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .05),
                                      SizedBox(width: 8),
                                      Text(
                                        'Search',
                                        style: TextStyle(
                                          color: _searchPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() => _currentPage = 1);
                                    setState(() => _isDrawerOpen = false);
                                    setState(() => _eventsPage = false);
                                    setState(() => _searchPage = true);
                                    setState(() => _calendarPage = false);
                                    setState(() => _settingsPage = false);
                                    setState(() => _linksPage = false);
                                  },
                                ),
                                //
                                // SIDE BAR CALENDAR BUTTON
                                //
                                CupertinoButton(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(CupertinoIcons.calendar,
                                          color: _calendarPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .05),
                                      SizedBox(width: 8),
                                      Text(
                                        'Calendar',
                                        style: TextStyle(
                                          color: _calendarPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() => _currentPage = 2);
                                    setState(() => _isDrawerOpen = false);
                                    setState(() => _eventsPage = false);
                                    setState(() => _searchPage = false);
                                    setState(() => _calendarPage = true);
                                    setState(() => _settingsPage = false);
                                    setState(() => _linksPage = false);
                                  },
                                ),
                                //
                                // SIDE BAR SETTINGS BUTTON
                                //
                                CupertinoButton(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(CupertinoIcons.gear,
                                          color: _settingsPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .05),
                                      SizedBox(width: 8),
                                      Text(
                                        'Settings',
                                        style: TextStyle(
                                          color: _settingsPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() => _currentPage = 3);
                                    setState(() => _isDrawerOpen = false);
                                    setState(() => _eventsPage = false);
                                    setState(() => _searchPage = false);
                                    setState(() => _calendarPage = false);
                                    setState(() => _settingsPage = true);
                                    setState(() => _linksPage = false);
                                  },
                                ),
                                //
                                // SIDE BAR LINKS BUTTON
                                //
                                CupertinoButton(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      Icon(CupertinoIcons.link,
                                          color: _linksPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .04),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .005 +
                                              8),
                                      Text(
                                        'Important Links',
                                        style: TextStyle(
                                          color: _linksPage
                                              ? Color.fromARGB(255, 0, 47, 255)
                                              : Color.fromARGB(
                                                  255, 153, 153, 153),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() => _currentPage = 4);
                                    setState(() => _isDrawerOpen = false);
                                    setState(() => _eventsPage = false);
                                    setState(() => _searchPage = false);
                                    setState(() => _calendarPage = false);
                                    setState(() => _settingsPage = false);
                                    setState(() => _linksPage = true);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/side_bar_mountie_icon.png'),
                                    color:
                                        const Color.fromARGB(255, 0, 47, 255),
                                    height: MediaQuery.of(context).size.height *
                                        .07,
                                  ),
                                  const Text(
                                    'Events',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 47, 255),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),



navigationBar: CupertinoNavigationBar(
            backgroundColor: Color.fromARGB(255, 252, 0, 126),
            border: Border.all(
              style: BorderStyle.none,
            ),
            //actionsForegroundColor: Colors.white,
            leading: CupertinoButton(
              onPressed: () => setState(() => _isDrawerOpen = true),
              //color: Color.fromARGB(255, 255, 255, 255),
              minSize: 46,
              padding: EdgeInsets.all(4),
              child: const Icon(
                CupertinoIcons.bars,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 46,
              ),
            ),
          ),
          child: Stack(
            children: const [
              Center(
                child: Text('temp_text'),
              ),
            ],
          ),
        ),
        Container(
          // This is how the side bar overlaps everything else ;)
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(),
          child: AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInQuint,
            top: 0,
            bottom: 0,
            left: _isDrawerOpen ? 0 : 100,
            child: Container(
              width: 100,
              height: double.infinity,
              color: Colors.amber,
            ),
          ),
        ),*/
