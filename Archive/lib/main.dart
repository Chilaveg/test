import 'dart:async';
import 'package:forestvpn_test/repositories/Screens/main_screen.dart';
import 'package:forestvpn_test/repositories/news/mock_news_repository.dart';
import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/news/abstract_news_repository.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';
import 'package:forestvpn_test/repositories/Screens/second_screen.dart';

// void main() {
//   runApp(const ForestVPNTestApp());
// }
//
// class ForestVPNTestApp extends StatelessWidget {
//   const ForestVPNTestApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'ForestVPN test',
//       home: Scaffold(
//         body: Center(
//           child: Text('News screen'),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(Application());
}

class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.blue[200]
      ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/second_screen' : (context) => SecondScreen(),
      },
    );
    throw UnimplementedError();
  }
}



















// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//         title: Text('MyApp'),
//       ),
//         body: Center(
//           child: Stack(
//             children: <Widget>[
//               Image.network("https://picsum.photos/250?image=9"),
//             ],
//           ),
//         ),
//     ),
//     );
//     throw UnimplementedError();
//   }
// }









// void main() {
//   runApp(MyFirstApp());
// }
//
// class MyFirstApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyFirstAppState();
//   }
// }
//
// class _MyFirstAppState extends State<MyFirstApp> {
//   bool _loading = false;
//   double _progressValue = 0.0;
//   @override
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.indigo,
//         appBar: AppBar(
//           title: Text('My first app'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Container(
//             padding: EdgeInsets.all(16),
//             child: _loading
//                 ? Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       LinearProgressIndicator(value: _progressValue,),
//                       Text(
//                         '${_progressValue * 100.round()}%',
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       ),
//                     ],
//                   )
//                 : Text(
//                     'Press Button to download',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _loading = !_loading;
//               _updateProgress();
//             });
//           },
//           child: Icon(Icons.cloud_download),
//         ),
//       ),
//     );throw UnimplementedError();
//   }
//   void _updateProgress() {
//     const oneSec = const Duration(seconds: 1);
//     Timer.periodic(oneSec, (Timer t) {
//       setState(() {
//         _progressValue += 0.2;
//
//         if (_progressValue.toStringAsFixed(1) == '1.0')
//           {
//             _loading = false;
//             t.cancel();
//             _progressValue = 0.0;
//             return;
//           }
//       });
//     });
//   }
// }