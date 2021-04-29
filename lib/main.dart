import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Color.fromRGBO(115, 253, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TheCodingPapa"),),
      body: Center(child: Text('My Page!'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("here"),
              duration: Duration(
                seconds: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: _color,
              ),
            ),
            ListTile(
              title: Text("Hello"),
              onTap: (){
                setState(() {
                  _color = Colors.amber;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("World"),
              onTap: (){
                setState(() {
                  _color = Color.fromRGBO(115, 253, 255, 1);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
