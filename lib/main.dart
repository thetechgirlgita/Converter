import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Converter(),
    );
  }
}

class Converter extends StatefulWidget {
  const Converter({
    Key? key,
  }) : super(key: key);

  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
   String dropdownvalue = 'Values';

   var items = [
     'Length',
     'Currency Exchange'
     'Time Zone'
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Converter",
          style: TextStyle(
              color: accentHexColor, fontWeight: FontWeight.w500, fontSize: 30),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width /2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: mainHexColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: mainHexColor,
                            offset: Offset(4, 4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: accentHexColor,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),]),
                          child: DropdownButton(
                            value: dropdownvalue,

                            icon : const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
    onChanged: (String? newValue) {
      setState(() {
        dropdownvalue = newValue!;
      });
    }),
        ),]
      ),])],),),
    );
  }
}
