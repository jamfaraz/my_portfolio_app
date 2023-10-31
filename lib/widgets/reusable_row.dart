import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  final String num, type;
  const ReusableRow({super.key, required this.num, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(num,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              type,
              style: const TextStyle(),
            ))
      ],
    );
  }
}
