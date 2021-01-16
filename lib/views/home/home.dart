import 'package:flutter/material.dart';
import 'package:tallybook/views/profile/profile.dart';
import 'package:tallybook/views/records/records.dart';
import 'package:tallybook/components/tabbar.dart';

import 'index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent),
        home: ContentBody());
  }
}

class ContentBody extends StatefulWidget {
  @override
  _ContentBodyState createState() => _ContentBodyState();
}

class _ContentBodyState extends State<ContentBody> {
  int _currindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currindex,
        items: [
          TabbarItem(Icon(Icons.home), "首页"),
          TabbarItem(Icon(Icons.edit), "记一笔"),
          TabbarItem(Icon(Icons.bar_chart), "总览")
        ],
        onTap: (int val) {
          setState(() {
            _currindex = val;
          });
        },
      ),
      body: IndexedStack(
        index: _currindex,
        children: [Index(), Records(), Profile()],
      ),
    );
  }
}
