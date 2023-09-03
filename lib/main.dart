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
      theme: ThemeData(primarySwatch: Colors.red),
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
              ContainerBox("Computer Science and Technology", Colors.orange,
                  100, 10, 24),
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
              SizedBox(
                height: 10,
              ),
              ContainerBox2(
                  "Nopparat Munsuwan",
                  "Computer Scinence",
                  "099-218-xxxx",
                  "assets/images/profile.jpg",
                  Colors.white,
                  100,
                  10),
              SizedBox(
                height: 5,
              ),
              ContainerBox2(
                  "Tony Munsuwan",
                  "Computer Multimedia",
                  "089-288-xxxx",
                  "assets/images/Darkknight_cd.jpg",
                  Colors.white,
                  100,
                  10),
              SizedBox(
                height: 5,
              ),
              ContainerBox2(
                  "Janata Duangcomjan",
                  "Computer Multimedia",
                  "059-698-xxxx",
                  "assets/images/inception.jpg",
                  Colors.white,
                  100,
                  10),
              SizedBox(
                height: 5,
              ),
              ContainerBox2(
                  "Prayut JanOCha",
                  "Computer Science",
                  "068-236-xxxx",
                  "assets/images/logo.png",
                  Colors.white,
                  100,
                  10),
            ],
          ),
        ));
  }
}
