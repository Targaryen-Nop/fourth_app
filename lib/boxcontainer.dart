import 'package:flutter/material.dart';

//สร้าง COntainer ต้นแบบ
class MoneyBox extends StatelessWidget {
  String title;
  int amount;
  Color color;
  double size;
  MoneyBox(this.title, this.amount, this.color, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Text(
                '${amount}',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      ),
    );
  }
}
