import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  // final String color;
  final String title;
  // final String asset;

  const CategoriesList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              // margin: EdgeInsets.only(left: 15),
              height: 80,
              width: 80,
              padding: EdgeInsets.all(10), // set icon size
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(5, 5))
                  ],
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Icon(Icons.access_alarm_outlined),
              // child: Image.asset('assets/images/medicine.png'), // assets image wkkw error
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(this.title),
            ),
          ],
        ),
      ],
    );
  }
}
