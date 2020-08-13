import 'package:calculator_app/calculate_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  calculate(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already conatains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "X") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Text(
                output,
                style: TextStyle(fontSize: 50, color: Colors.orange),
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.98,
              height: MediaQuery.of(context).size.height * 0.58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () => calculate("CLEAR"),
                          text: "C",
                          textColor: Colors.orange,
                        ),
                        CalculatorButton(
                          onPressed: () {},
                          text: "DEL",
                          textColor: Colors.orange,
                        ),
                        CalculatorButton(
                          onPressed: () {},
                          text: "%",
                          textColor: Colors.orange,
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("/"),
                          text: "/",
                          textColor: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () => calculate("9"),
                          text: "9",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("8"),
                          text: "8",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("7"),
                          text: "7",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("*"),
                          text: "x",
                          textColor: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () => calculate("6"),
                          text: "6",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("5"),
                          text: "5",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("4"),
                          text: "4",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("-"),
                          text: "-",
                          textColor: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () => calculate("3"),
                          text: "3",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("2"),
                          text: "2",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("1"),
                          text: "1",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("+"),
                          text: "+",
                          textColor: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CalculatorButton(
                          onPressed: () => calculate("0"),
                          text: "0",
                        ),
                        CalculatorButton(
                          onPressed: () => calculate(","),
                          text: ",",
                        ),
                        CalculatorButton(
                          onPressed: () {},
                          text: "AC",
                          textColor: Colors.orange,
                        ),
                        CalculatorButton(
                          onPressed: () => calculate("="),
                          text: "=",
                          backGroundColor: Colors.orange,
                        ),
                      ],
                    ),
                  ])),
        ],
      ),
    );
  }
}
