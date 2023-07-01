import 'package:flutter/material.dart';
import 'package:transaction/model/transationalModel.dart';
import 'package:transaction/utils/app_color.dart';

class Receipt extends StatefulWidget {

  const Receipt({super.key, });
 

  @override
  State<Receipt> createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
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
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Row(
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
                    ),
                  ),
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
                                const Padding(
                                  padding: EdgeInsets.only(right: 128),
                                  child: Text("Search"),
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
          Row(
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
        ],
      ),
    );
  }
}
