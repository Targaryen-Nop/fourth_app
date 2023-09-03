import 'package:flutter/material.dart';

//สร้าง COntainer ต้นแบบ
// ignore: must_be_immutable
class ContainerBox2 extends StatelessWidget {
  String name;
  String major;
  String phone;
  String image;
  Color color;
  double size;
  double border;
  ContainerBox2(
    this.name,
    this.major,
    this.phone,
    this.image,
    this.color,
    this.size,
    this.border,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(border)),
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Image.asset(
              '${image}',
              width: 150,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    major,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    phone,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
