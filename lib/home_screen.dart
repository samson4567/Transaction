import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transaction/Reciept.dart';
import 'package:transaction/cash.dart';
import 'package:transaction/model/transaction.dart';
import 'package:transaction/utils/app_color.dart';
import 'package:transaction/utils/dimention.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 169,
            width: 400,
            color: kSECCOLOUR,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Column(
                children: [
                  const Climax(),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.search, color: Colors.blue),
                                 Padding(
                                  padding: const EdgeInsets.only(right: 128),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  const Cash())),
                                    child: const Text("Search")),
                                ),
                                Image.asset("assets/images/frame.png")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Receipt())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "All",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Credit",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange),
                ),
                Text(
                  "Debit",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: const [
              Transaction(
                  transact: "Transfer-Charge",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#15.00'),
              Transaction(
                  transact: "Bank Transfer",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#15.630.00'),
              Transaction(
                  transact: "Bill Payment",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#2,500.00'),
              Transaction(
                  transact: "Withdrawal",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#50,000.00'),
              Transaction(
                  transact: "Loan Repayment",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#9,200.00'),
              Transaction(
                  transact: "Withdrawal",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#230,000.00'),
              Transaction(
                  transact: "Reversal",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#130,000.00'),
              Transaction(
                  transact: "Bill Payment",
                  date: '23,Apr 2022, 12:00:32',
                  amount: '-#130,000,00')
            ],
          )),
        ],
      ),
    );
  }
}

class Climax extends StatelessWidget {
  const Climax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/back.png"),
        const SizedBox(
          width: 70,
        ),
        const Text(
          "Transactions",
          style: TextStyle(
              fontSize: 23,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
  // InkWell(
  //           onTap: () {
  //             Navigator.push(context,
  //                 MaterialPageRoute(builder: (context) => const Heading()));