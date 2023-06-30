import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              _studentStatusLayout(context,Icons.person_outline, 'TOTAL STUDENT', '47',
                  backroundColor: Colors.red),
              _studentStatusLayout(context, Icons.person_outline, 'TOTAL STUDENT', '47',
                  backroundColor: Colors.yellow),
             _studentStatusLayout(context, Icons.person_outline, 'TOTAL STUDENT', '47',
                  backroundColor: Colors.yellow),
              _studentStatusLayout(context, Icons.person_outline, 'TOTAL STUDENT', '47',
                  backroundColor: Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  _studentStatusLayout(context, icon, String status, String number,
      {Color backroundColor = Colors.white}) {
    return Container(
      width: MediaQuery.of(context).size.width/5,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: backroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
           BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 4), // changes position of shadow
        ),
      ]),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              status,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
