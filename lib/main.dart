import 'package:flutter/material.dart';
import './episodes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int experience = 3;

  List<Episode> episodes = [
    Episode(title: "Roller Coaster Murder Case", releaseDate: "1996‑01‑08"),
    Episode(
        title: "Company President's Daughter Kidnapping Case",
        releaseDate: "1996‑01‑15"),
    Episode(
        title: "An Idol's Locked Room Murder Case", releaseDate: "1996‑01‑22"),
  ];

  Widget episodeCard(Episode episode) {
    return Card(
        color: Colors.grey[900],
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.album,
                color: Colors.grey,
              ),
              title: Text(
                episode.title,
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 2.0,
                    fontSize: 20.0),
              ),
              subtitle: Text(
                episode.releaseDate,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                    child: const Text('WATCH'),
                    onPressed: () {/* ... */},
                    style: TextButton.styleFrom(primary: Colors.teal)),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            backgroundColor: Colors.grey[850],
            appBar: AppBar(
              title: Text("Proj-b2"),
              centerTitle: true,
              backgroundColor: Colors.grey[900],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  experience += 1;
                });
              },
              backgroundColor: Colors.grey[800],
            ),
            body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://studybreaks.com/wp-content/uploads/2020/06/detective_conan-e1590990428884.jpeg'),
                      radius: 50.0,
                    ),
                  ),
                  Divider(
                    height: 60.0,
                    color: Colors.grey[800],
                  ),
                  Text(
                    "NAME",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Conan Edogawa",
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        fontWeight: FontWeight.w100,
                        letterSpacing: 2.0,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "EXPERIENCE",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "$experience years",
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        fontWeight: FontWeight.w100,
                        letterSpacing: 2.0,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10.0),
                      Text("conanedogawa8@gmail.com",
                          style: TextStyle(
                              color: Colors.grey[400],
                              letterSpacing: 1.0,
                              fontSize: 18.0)),
                    ],
                  ),
                  Divider(
                    height: 60.0,
                    color: Colors.grey[800],
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                        child: Text("EPISODES",
                            style: TextStyle(
                                color: Colors.grey[600],
                                letterSpacing: 2.0,
                                fontSize: 23.0)),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        children: episodes
                            .map((episode) => episodeCard(episode))
                            .toList(),
                      )
                    ],
                  )
                ],
              ),
            ))));
  }
}
