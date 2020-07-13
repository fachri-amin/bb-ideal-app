import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BB Ideal App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController tinggi = new TextEditingController();
  double bbIdeal = 0;

  void hitung(String x) {
    setState(() {
      // int tb = int.parse(x);
      bbIdeal = (double.parse(x + '.0') - 100) -
          ((double.parse(x + '.0') - 100) * 0.1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BB Ideal App",
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Berat Badan ideal Anda adalah :",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  bbIdeal.toString() + " Kg",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: TextField(
                controller: tinggi,
                decoration: InputDecoration(
                  hintText: "Tinggi badan anda (cm)",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    hitung(tinggi.text);
                  },
                  child: Text(
                    "Hitung",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
