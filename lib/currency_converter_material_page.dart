import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyCoverterfull extends StatefulWidget {
  const CurrencyCoverterfull({super.key});
  @override
  State<CurrencyCoverterfull> createState() => CurrencyCoverterfull1();
}

class CurrencyCoverterfull1 extends State<CurrencyCoverterfull> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

double result = 0;
final TextEditingController textEditingController = TextEditingController();

// Move the stateful logic to a StatefulWidget
class CurrencyConverterMateriaPage extends StatefulWidget {
  @override
  State<CurrencyConverterMateriaPage> createState() =>
      _CurrencyConverterMateriaPageState();
}

class _CurrencyConverterMateriaPageState
    extends State<CurrencyConverterMateriaPage> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const MyOutLinedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide:
          BorderSide(color: Colors.blue, width: 2.0, style: BorderStyle.solid),
    );
    return Scaffold(
      // backgroundColor: Color.fromRGBO(255, 230, 0, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // When int -> string intergratable.toString();
              result.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.blue,
                ),
                decoration: const InputDecoration(
                    focusedBorder: MyOutLinedBorder,
                    enabledBorder: MyOutLinedBorder,
                    filled: true,
                    fillColor: Colors.black12,
                    // label: Text(
                    //   "Please enter the amount in Ksh",
                    //   style: TextStyle(color: Colors.red),
                    // ),
                    // floatingLabelStyle: TextStyle(color: Colors.brown)),
                    hintText: "  Please enter the amount in Ksh",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.monetization_on_sharp),
                    prefixIconColor: Colors.green),
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
              ),
            ),
            TextButton(
              onPressed: () {
                // if(kDebugMode){ print("Button Clicked");}
                // debugPrint(" Convert");
                // print(textEditingController.text);
                // print(double.parse(textEditingController.text) * 131);

                // To convert from sting we use double/int.parse()
                setState(() {
                  result = double.parse(textEditingController.text) * 131;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor:
                    const MaterialStatePropertyAll(Colors.amberAccent),
                minimumSize: const MaterialStatePropertyAll(
                  Size(double.infinity, 50),
                ),
              ),
              child: const Text(
                "Convert",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
