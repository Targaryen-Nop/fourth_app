import 'package:flutter/material.dart';

//สร้าง COntainer ต้นแบบ
class ContainerBox extends StatelessWidget {
  String title;
  Color color;
  double size;
  double border;
  double fontS;
  ContainerBox(this.title, this.color, this.size, this.border, this.fontS, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(border)),
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: fontS,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
