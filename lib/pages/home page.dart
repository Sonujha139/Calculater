import 'package:calculator/widgets/Constant.dart';
import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        style: const TextStyle(fontSize: 30, color: whiteColors),
                      ),
                    ),
                   const SizedBox(height: 10,),
                  
                    Text(
                      answer.toString(),
                      style: const TextStyle(fontSize: 30, color: whiteColors),
                    ),
                    const  Divider( color: whiteColors,),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          Title: 'AC',
                          color: greyColors,
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '+/-',
                          color: greyColors,
                          onPress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '%',
                          color: greyColors,
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '/',
                          color: orangeColors,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          Title: '7',
                          color: greyColors,
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        Button(
                            Title: '8',
                            color: greyColors,
                            onPress: () {
                              userInput += '8';
                              setState(() {});
                            }),
                        Button(
                            Title: '0',
                            color: greyColors,
                            onPress: () {
                              userInput += '0';
                              setState(() {});
                            }),
                        Button(
                          Title: 'X',
                          color: orangeColors,
                          onPress: () {
                            userInput += 'X';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          Title: '4',
                          color: greyColors,
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '5',
                          color: greyColors,
                          onPress: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '6',
                          color: greyColors,
                          onPress: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '-',
                          color: orangeColors,
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          Title: '1',
                          color: greyColors,
                          onPress: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '2',
                          color: greyColors,
                          onPress: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '3',
                          color: greyColors,
                          onPress: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '+',
                          color: orangeColors,
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          Title: '0',
                          color: greyColors,
                          onPress: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '.',
                          color: greyColors,
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: 'DEL',
                          color: greyColors,
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        Button(
                          Title: '=',
                          color: orangeColors,
                          onPress: () {
                            equalPres();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPres() {
    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
