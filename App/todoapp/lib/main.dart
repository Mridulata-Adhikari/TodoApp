import 'package:flutter/material.dart';
import 'package:todoapp/UI/Intray/intray_page.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),  
      home: MyHomePage(title: 'Todo App'),
    );
  } 
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.yellow,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: [
                    IntrayPage(),
                    new Container(
                      color: Colors.orange,
                    ),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Intray",
                        style: intrayTitleStyle,
                      ),
                      Container(),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(
                      top: 125,
                      left: MediaQuery.of(context).size.width * 0.5 - 35),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 45,
                    ),
                    backgroundColor: redColor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              elevation: 0,
              title: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
