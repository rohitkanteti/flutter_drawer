import 'package:flutter/material.dart';

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
            ListTile(
              title: Row(
                children: [Icon(Icons.inbox), Text('Primary')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.group), Text('Social')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.local_offer), Text('Promotions')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.info_outline), Text('Updates')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.forum), Text('Forums')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Text('All Labels'),
            ListTile(
              title: Row(
                children: [Icon(Icons.star), Text('Starred')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.access_time), Text('Snoozed')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.label), Text('Important')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.send), Text('Sent')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.near_me), Text('Scheduled')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.assignment_return), Text('Outbox')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.drafts), Text('Drafts')],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
