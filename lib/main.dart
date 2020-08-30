import 'package:flutter/material.dart';

Widget addOption(IconData img, String text, context) {
  return ListTile(
    title: Row(
      children: [
        Icon(
          img,
          color: Colors.grey[800],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            '$text',
            style:
                TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onTap: () {
      Navigator.pop(context);
    },
  );
}

Widget addOption2(IconData img, String text, context) {
  return ListTile(
    title: Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.35),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Row(
        children: [
          Icon(
            img,
            color: Colors.red[800],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              '$text',
              style: TextStyle(
                  color: Colors.red[800], fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25.0,
            width: 180.0,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 80.0),
                child: Center(
                  child: Text(
                    '99+',
                    style: TextStyle(
                      color: Colors.red[800],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Noto Sans SC',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
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
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
            ),
            ListTile(
              title: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.35),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.inbox,
                      color: Colors.red[800],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Primary',
                        style: TextStyle(
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      width: 180.0,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 80.0),
                          child: Center(
                            child: Text(
                              '99+',
                              style: TextStyle(
                                color: Colors.red[800],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Noto Sans SC',
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            addOption(Icons.group, 'Social', context),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.local_offer, color: Colors.grey[800]),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Promotions',
                        style: TextStyle(
                            fontFamily: 'Product Sans',
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: SizedBox(
                      width: 60.0,
                      height: 25.0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Colors.green[700]),
                        child: Center(
                            child: Text(
                          '3 new',
                          style: (TextStyle(
                              fontFamily: 'Product Sans', color: Colors.white)),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.grey[800]),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Updates',
                        style: TextStyle(
                            fontFamily: 'Product Sans',
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 95.0),
                    child: SizedBox(
                      width: 65.0,
                      height: 25.0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Colors.yellow[700]),
                        child: Center(
                            child: Text(
                          '1 new',
                          style: (TextStyle(
                              fontFamily: 'Product Sans', color: Colors.white)),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            addOption(Icons.forum, 'Forums', context),
            Text(
              '      ALL LABELS',
              style: TextStyle(color: Colors.grey[850]),
              //textAlign: TextAlign.left,
            ),
            addOption(Icons.star, 'Starred', context),
            addOption(Icons.access_time, 'Snoozed', context),
            ListTile(
              title: Container(
                height: 50.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.label,
                      color: Colors.grey[800],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Important',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      width: 150.0,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 100.0),
                          child: Center(
                            child: Text(
                              '99+',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Noto Sans SC',
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            addOption(Icons.send, 'Sent', context),
            addOption(Icons.near_me, 'Scheduled', context),
            addOption(Icons.assignment_return, 'Outbox', context),
            // addOption(Icons.drafts, 'Drafts', context),
            ListTile(
              title: Container(
                height: 50.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.drafts,
                      color: Colors.grey[800],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Drafts',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                      width: 150.0,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Center(
                            child: Text(
                              '32',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Noto Sans SC',
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
