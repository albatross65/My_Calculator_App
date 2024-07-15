import 'package:flutter/material.dart';
import 'Widgets/calculator_button.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnValue == '+/-') {
      if (textToDisplay.isNotEmpty && textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnValue == '<-') {
      if (textToDisplay.isNotEmpty) {
        res = textToDisplay.substring(0, textToDisplay.length - 1);
      }
    } else if (btnValue == '+' || btnValue == '-' || btnValue == 'x' || btnValue == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnValue).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF311B92),
            ),
          ),
          backgroundColor: Color(0xFF81C784),
        ),
        backgroundColor: Color(0xFFA5D6A7),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: TextStyle(fontSize: 24),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    textToDisplay,
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '<-',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '8',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '7',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: 'x',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '5',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '4',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '-',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '2',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '1',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '+',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '0',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '00',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                  CalculatorButton(
                    text: '=',
                    fillColor: Color(0xFF81C784),
                    textSize: 20,
                    callBack: btnOnClick,
                    textColor: Color(0xFF311B92),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
