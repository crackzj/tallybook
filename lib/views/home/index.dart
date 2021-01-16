import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.dehaze_outlined),
        //   tooltip: "我的",
        //   onPressed: () => print('world'),
        // ),
        title: Text("首页"),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => print("hello"),
          )
        ],
      ),
      drawer: _drawer,
    );
  }

  get _drawer => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Center(
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    child: Text('Z'),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("退出"),
              onTap: () => {Navigator.pop(context, "login")},
            ),
          ],
        ),
      );
}
