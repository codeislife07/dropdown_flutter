import 'package:dropdown_flutter/dropdowns/Dropdown_with_different_height.dart';
import 'package:dropdown_flutter/dropdowns/dropdown_as_multiple_dropdown_checkbox.dart';
import 'package:dropdown_flutter/dropdowns/dropdown_as_searchable.dart';
import 'package:flutter/material.dart';

import 'dropdowns/dropdown_as_popup_menu.dart';
import 'dropdowns/dropdown_few_style_customize.dart';
import 'dropdowns/dropdown_textfield.dart';
import 'dropdowns/dropdown_with_nostyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Dropdown With styles'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
       child: ListView(
         children: [
           Text("Dropdown with no style"),
           SizedBox(
               height: 100,
               child: DropDownWithNoStyle()),
           Divider(),
           Text("Dropdown with few styling and customization"),
           SizedBox(
               height: 100,
               child: DropdownFewStyleCustomize()),
           Divider(),
           Text("Dropdown with items of different heights like dividers"),
           SizedBox(
               height: 100,
               child: DropdownWithDifferentHeight()),
           Divider(),
           Text("Dropdown as Multiselect Dropdown with Checkboxes"),
           SizedBox(
               height: 100,
               child: DropDownAsMultipleDropdownCheckBox()),
           Divider(),
           Text("Dropdown as Searchable Dropdown"),
           SizedBox(
               height: 100,
               child: DropDownAsSerchable()),
           Divider(),
           Text("Dropdown as Popup menu button using customButton parameter:"),
           SizedBox(
               height: 100,
               child: DropdownPopUpMenu()),
           Divider(),
           Text("Dropdown Button FormField"),
           SizedBox(
             height: 500,
               child: DropdownTextField()),
           Divider(),
         ],
       ),
      ),
      );
  }
}
