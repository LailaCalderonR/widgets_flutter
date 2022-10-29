import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white10),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: SafeArea(
          child: Scaffold(
              body: Column(children: <Widget>[
        parchisWitget(context),
      ]))),
    );
  }

  Widget parchisWitget(BuildContext context) {
    const double size01 = 20.0;
    const double size02 = 25.0;

    return Expanded(
        child: Column(
      children: <Widget>[
        Expanded(
            child: Container(
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("Widgets",
                          style: TextStyle(
                              fontSize: size01, fontWeight: FontWeight.bold)),
                    ]))), // Text Top

        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: Container(
                  color: Colors.purple[100],
                  child: const Center(
                      child: Text("Color 1",
                          style: TextStyle(fontSize: size02))))),
          Expanded(
              child: Container(
                  color: Colors.yellow[100],
                  child: const Center(
                      child: Text("Color 2",
                          style: TextStyle(fontSize: size02))))),
        ])), //Row 1/2

        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: Container(
                  color: Colors.green[100],
                  child: const Center(
                      child: Text("Color 3",
                          style: TextStyle(fontSize: size02))))),
          Expanded(
              child: Container(
                  color: Colors.red[100],
                  child: const Center(
                      child: Text("Color 4",
                          style: TextStyle(fontSize: size02))))),
        ])), //Row 2/2
        Expanded(
            child: Container(
                color: Colors.blue[100],
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("Laila Calderon",
                          style: TextStyle(
                              fontSize: size01, fontWeight: FontWeight.bold))
                    ]))), // Text Bottom
      ],
    ));
  }
}
