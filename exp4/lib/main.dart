// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation Over Screens',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
// //      home: MainPage(),

//       // Declare routes
//       routes: {
//         // Main initial route
//         '/': (context) => MainPage(),
//         // Second route
//         '/second': (context) => SecondPage(),
//       },
//       initialRoute: '/',
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) =>
//       Scaffold(
//         appBar: AppBar(
//           title: Text('Navigation over screens'),
//         ),
//         body: Container(
//           child: Column(
//             children: <Widget>[
//               // Navigate using declared route name
//               ElevatedButton(
//                 onPressed: () => Navigator.pushNamed(context, '/second'),
//                 child: Text('Navigate using routes'),
//               ),
//               // Navigate using simple push method
//               ElevatedButton(
//                 onPressed: () =>
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => SecondPage()),
//                     ),
//                 child: Text('Navigate using push method'),
//               )
//             ],
//           ),
//         ),
//       );
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second screen'),
//       ),
//       body: Container(
//         child: ElevatedButton(
//           onPressed: () => Navigator.pop(context),
//           child: Text('Back'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gestures Example',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gestures Example Post lab '),
        centerTitle: true,
      ),
      body: new Center(
          child: GestureDetector(
              onTap: () {
                print('Hey u CLicked meee!');
              },
              child: Container(
                height: 60.0,
                width: 120.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(child: Text(' Click Me')),
              ))),
    );
  }
}
