import 'package:city_picker_demo/city_picker_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String city = "";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("城市选择器Demo"),
     ),
     body: Center(
       child: GestureDetector(
         onTap: (){
           cityPickerDialog(context, (area){
             print("选择的城市：$area");
             setState(() {
               city = area.name;
             });
           });
         },
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Text(
             city.isEmpty ? "点击选择城市" : city,
             style: TextStyle(
               fontSize: 18
             ),
           ),
         ),
       ),
     ),
   );
  }
}
