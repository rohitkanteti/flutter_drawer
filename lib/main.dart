import 'package:flutter/material.dart';

Widget addOption(IconData img, String text) {
  return ListTile(
    title: Row(
      children: [Icon(img), Text('$text')],
    ),
    onTap: () {
      // Update the state of the app
      // ...
      // Then close the drawer
      BuildContext context;
      Navigator.pop(context);
    },
  );
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Gmail Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gmail Drawer')),
      body: Center(child: Text('Hello')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: DrawerHeader(
                child: Text(
                  'Gmail',
                  style: TextStyle(color: Colors.red, fontSize: 30.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            addOption(Icons.inbox, 'Primary'),
            addOption(Icons.group, 'Social'),
            addOption(Icons.local_offer, 'Promotions'),
            addOption(Icons.info_outline, 'Updates'),
            addOption(Icons.forum, 'Forums'),
            Text('All Labels'),
            addOption(Icons.star, 'Starred'),
            addOption(Icons.access_time, 'Snoozed'),
            addOption(Icons.label, 'Important'),
            addOption(Icons.send, 'Sent'),
            addOption(Icons.near_me, 'Scheduled'),
            addOption(Icons.assignment_return, 'Outbox'),
            addOption(Icons.drafts, 'Drafts'),
          ],
        ),
      ),
    );
  }
}
