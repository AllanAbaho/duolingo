import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Pair> pairs = [
    Pair('Homme', 'Man'),
    Pair('Voiture', 'Car'),
    Pair('Maison', 'House'),
    Pair('Ordinateur', 'Computer'),
    Pair('Manger', 'To Eat'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF141e24),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
        child: Column(
          children: [
            buildTopRow(),
            buildHeaderText(),
            buildPairs(),
            buildCheckButton(),
          ],
        ),
      ),
    );
  }

  Padding buildHeaderText() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 15),
      child: Row(
        children: [
          Text(
            'Tap the matching pairs',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Row buildTopRow() {
    return Row(
      children: const [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.close, size: 45, color: Color(0XFF54656d)),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: Colors.grey,
              color: Color.fromARGB(255, 226, 167, 84),
              minHeight: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 5),
          child: Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 235, 91, 94),
            size: 34,
          ),
        ),
        Text(
          '2',
          style: TextStyle(
            color: Color.fromARGB(255, 235, 91, 94),
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Padding buildCheckButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          minimumSize: MaterialStatePropertyAll(
            Size(MediaQuery.of(context).size.width, 50),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            Color(0XFF37464e),
          ),
        ),
        child: const Text(
          'CHECK',
          style: TextStyle(fontSize: 20, color: Color(0XFF52646c)),
        ),
      ),
    );
  }

  buildPairs() {
    return Padding(
      padding: const EdgeInsets.only(top: 75.0, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: pairs
                .map(
                  (pair) => Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.of(context).size.width * 0.42, 70),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0XFF141e24),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color(0XFF38474f), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        pair.question,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Column(
            children: pairs
                .map(
                  (pair) => Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.of(context).size.width * 0.42, 70),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0XFF141e24),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color(0XFF38474f), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        pair.answer,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class Pair {
  final String question;
  final String answer;

  Pair(this.question, this.answer);
}
