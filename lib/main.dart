import 'package:flutter/material.dart';
import 'package:flutter_appeadproject/FindEvent.dart';
import './home.dart';
import './addorder.dart';
import './settings.dart';
import './FindEvent.dart';

void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    addOrderPage(),
    StatsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        appBar:AppBar(
          title: Text('Cachycourier'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications123()),
              );
                // do something
              },
            )
          ],
        ),

        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              title: Text('New Order'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }}

