import 'package:flutter/material.dart';
import 'package:transaction/home_screen.dart';
import 'package:transaction/utils/dimention.dart';

class Cash extends StatefulWidget {
  const Cash({super.key});

  @override
  State<Cash> createState() => _CashState();
}

class _CashState extends State<Cash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              const Climax(),
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Image.asset("assets/images/lexus.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 24),
                    child: Image.asset("assets/images/var.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "N1,000.00",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 300, top: 100),
                child: Text(
                  "Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const link(time: 'Date and Time',status: '22/05/2023 15:20:26', ),
               const link(time: 'Reference',status: 'TRF2023225768308856', ),
              const link(time: 'Type', status: 'Debit',),
              const link(time: 'Balance', status: 'N2500',),
              const link(time: 'Narration ', status: 'Debola',),
              const SizedBox(
                height: 100,
              ),
              Image.asset("assets/images/signuo.png"),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Share With Bankly Assistant",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 18, 10, 94)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class link extends StatelessWidget {
  const link({
    required this.time,
    required this.status,
    super.key,
  });
  final String time;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.zero),
          boxShadow: [
            BoxShadow(
                blurRadius: 9,
                color: Color.fromARGB(255, 216, 207, 207).withOpacity(0.07))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
              Text(
                status,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
