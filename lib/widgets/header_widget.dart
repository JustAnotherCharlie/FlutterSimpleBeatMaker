import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Color(0xff06002B),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        )
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: const [
          Image(image: AssetImage("assets/ic_rhythm.png")),
          SizedBox(width: 10),
          Text(
            "Flutter Beat Maker",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}