import 'package:flutter/material.dart';
import './Modules/CICamera/CICameraScreen.dart';
import 'Modules/CILocation/CILocation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),

        debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Integration Demo'),
        backgroundColor: Color(0xFF444444),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CICameraScreen()),
              );
            }, child: Text("Camera"), color: Colors.amberAccent),
            FlatButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CILocationScreen()),
              );
            }, child: Text("Location"),color: Colors.amberAccent
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      )
    );
  }
}
