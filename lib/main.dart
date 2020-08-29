import 'package:flutter/material.dart';

Widget addOption(IconData img, String text, context) {
  return ListTile(
    title: Row(
      children: [
        Icon(
          img,
          color: Colors.grey[800],
        ),
        Text(
          '      $text',
          style: TextStyle(color: Colors.grey[800]),
        )
      ],
    ),
    onTap: () {
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
      appBar: AppBar(
          title: Text(
        'Gmail Drawer',
      )),
      body: Center(child: Text('Hello')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 90.0,
              child: DrawerHeader(
                child: Text(
                  'Gmail',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30.0,
                      fontFamily: 'Noto Sans SC'),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            addOption(Icons.inbox, 'Primary', context),
            addOption(Icons.group, 'Social', context),
            addOption(Icons.local_offer, 'Promotions', context),
            addOption(Icons.info_outline, 'Updates', context),
            addOption(Icons.forum, 'Forums', context),
            Text(
              '      ALL LABELS',
              style: TextStyle(color: Colors.grey[850]),
              //textAlign: TextAlign.left,
            ),
            addOption(Icons.star, 'Starred', context),
            addOption(Icons.access_time, 'Snoozed', context),
            addOption(Icons.label, 'Important', context),
            addOption(Icons.send, 'Sent', context),
            addOption(Icons.near_me, 'Scheduled', context),
            addOption(Icons.assignment_return, 'Outbox', context),
            addOption(Icons.drafts, 'Drafts', context),
          ],
        ),
      ),
    );
  }
}
