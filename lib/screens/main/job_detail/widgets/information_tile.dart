import 'package:flutter/material.dart';

class InformationTile extends StatelessWidget {
  final String info;

  const InformationTile({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xfff2f4ff),
      ),
      alignment: Alignment.center,
      child: Text(
        info,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          height: 1.58,
          color: Color(0xff2b48fb),
        ),
      ),
    );
  }
}
