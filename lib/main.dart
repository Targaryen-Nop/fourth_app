import 'package:flutter/material.dart';
import 'package:fourth_app/boxcontainer.dart';
import 'package:fourth_app/boxcontainer2.dart';
import 'package:fourth_app/boxcontainer3.dart';
import 'package:fourth_app/menu.dart';

void main() {
  var app = const CSCM();
  runApp(app);
}

class CSCM extends StatelessWidget {
  const CSCM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSCM - CPU Database",
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "CSCM - CPU Database",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ContainerBox("Computer Science and Technology", Colors.lightBlue,
                  100, 10, 24),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Number of Teacher", 10, Colors.lightBlueAccent, 70),
              SizedBox(
                height: 5,
              ),
              MoneyBox("Number of Student", 50, Colors.lightBlue, 70),
              SizedBox(
                height: 10,
              ),
              ContainerBox("รายชื่อนักศึกษาคณะวิทยาศตร์และเทคโนโลยี", Colors.purple, 35, 10, 15),
              SizedBox(
                height: 10,
              ),
              ContainerBox2(
                  "Mongkhonrat Saisakun",
                  "Computer Scinence",
                  "082-250-xxxx",
                  "assets/images/kn1.jpg",
                  Colors.pinkAccent,
                  100,
                  10),
              SizedBox(
                height: 5,
              ),
              ContainerBox2(
                  "Jaruna pasu ",
                  "Computer Multimedia",
                  "082-123-xxxx",
                  "assets/images/kn2.jpg",
                  Colors.pinkAccent,
                  100,
                  10),
              SizedBox(
                height: 5,
              ),
              ContainerBox2(
                  "Phutah tomon",
                  "Computer Science",
                  "090-456-xxxx",
                  "assets/images/kn3.png",
                  Colors.pinkAccent,
                  100,
                  10),
              SizedBox(
                height: 5,
              ),
              ContainerBox2(
                  "Polo Yohs",
                  "Computer Science",
                  "087-789-xxxx",
                  "assets/images/kn4.jpg",
                  Colors.pinkAccent,
                  100,
                  10),
            ],
          ),
        ));
  }
}
