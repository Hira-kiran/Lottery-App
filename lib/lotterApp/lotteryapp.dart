// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: x == 6
              ? const Color.fromARGB(255, 133, 132, 132)
              : const Color.fromARGB(255, 16, 150, 165),
          title: const Text(
            "Lottery App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Text(
            "Lottery winning number is 6",
            style: TextStyle(
                color: x == 6
                    ? const Color.fromARGB(255, 29, 28, 28)
                    : const Color.fromARGB(255, 16, 150, 165),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: x == 6
                      ? const Color.fromARGB(255, 170, 166, 166)
                      : const Color.fromARGB(255, 16, 150, 165),
                ),
                height: x == 6 ? 400 : 250,
                width: MediaQuery.of(context).size.width * 0.9,
                child: x == 6
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          const Icon(
                            Icons.done_all,
                            color: Color.fromARGB(255, 32, 125, 35),
                            size: 35,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Congragulations you won the lottery,your number is $x",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: x == 6 ? Colors.black : Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Batter luck next time, your number is $x, \n Try again",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ],
                      )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            x == 6 ? Colors.grey : const Color.fromARGB(255, 16, 150, 165),
        onPressed: () {
          x = random.nextInt(10);
          print(x);
          setState(() {});
        },
        child: Icon(
          Icons.refresh,
          size: 27,
          color: x == 6 ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
