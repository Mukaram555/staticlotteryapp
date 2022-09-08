import 'dart:math';
import 'package:flutter/material.dart';

import 'constant/container_result.dart';

class LotteryApp extends StatefulWidget {
  static const String id = 'LotteryApp';

  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  TextEditingController check = TextEditingController();
  Random randomNo = Random();
  int x = 0;
  int number = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(80),
          ),
        ),
        title: const Text(
          "Lottery App",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Rubik-Medium',
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              x.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.2),
                border: Border.all(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(10),
              ),
              child: x == number
                  ? const ContainerResult(
                      text: "Congratulation You have Guss the Correct Answer",
                      newIcon: Icon(
                        Icons.done_all,
                        size: 40,
                        color: Colors.green,
                      ),
                      textColor: Colors.green,
                    )
                  : const ContainerResult(
                      text:
                          "Failed You have Not Guss the Correct Answer Try Again",
                      newIcon: Icon(
                        Icons.error_outlined,
                        size: 40,
                        color: Colors.red,
                      ),
                      textColor: Colors.red,
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = randomNo.nextInt(10);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

