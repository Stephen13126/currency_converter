// import 'package:currency_converter/currency_converter_material_page.dart';
// import 'package:flutter/cupertino.dart';
import './currency_converter_material_page.dart';
import 'package:flutter/material.dart';

// Void main funtion is where our application begins. In a nutshell the app when loading it searches by default for main.dart files and then begins here
void main() {
  // The runApp fuction is a function for running our app
  // The parenthesis of the runApp function requires a  widgets which are building blocks for user interface/ UI
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyConverterMateriaPage());
    // return CupertinoApp();
  }
}
// Incase of navigation we need a materialApp/ cupertinoApp function to navigate through
// Three lines comments is a documentation
// There are three types of widgets: StatelessWidget(adta is immutable/| cannot be changed ), StatefullWidget(mutable or changes over time dure to interaction of the user) and InheritedWidegets
// State is the data that determines how the data would look like

 