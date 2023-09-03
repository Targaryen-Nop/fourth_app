import 'package:flutter/material.dart';
import 'package:fourth_app/boxcontainer.dart';
import 'package:fourth_app/boxcontainer2.dart';
import 'package:fourth_app/menu.dart';

void main() {
  var app = CSCM();
  runApp(app);
}

class CSCM extends StatelessWidget {
  const CSCM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSCM - CPU Database",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Menu> data = [
    Menu("End Game", "300 \฿", "8:30 27/7/2023", "assets/images/endgame.png"),
    Menu("Dark Knight", "200 \฿", "10:45 27/7/2023",
        "assets/images/Darkknight_cd.jpg"),
    Menu("Inception", "180 \฿", "12:45 27/7/2023",
        "assets/images/inception.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "CSCM - CPU Database",
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ContainerBox(
                  "Computer Science and Technology", Colors.red, 100, 10, 24),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Number of Teacher", 10, Colors.red, 70),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Number of Student", 50, Colors.orange, 70),
              SizedBox(
                height: 10,
              ),
              ContainerBox("รายชื่อนักศึกษาคณะวิทย์ฯ", Colors.red, 35, 10, 15),
            ],
          ),
        ));
  }
}
