import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    required this.transact,
    required this.date,
    required this.amount,
    super.key,
  });
  final String transact;
  final String date;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.zero),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.1))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/arrow.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transact,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  amount,
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
