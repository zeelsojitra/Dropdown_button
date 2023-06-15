import 'package:flutter/material.dart';

class drop_down extends StatefulWidget {
  const drop_down({Key? key}) : super(key: key);

  @override
  State<drop_down> createState() => _drop_downState();
}

class _drop_downState extends State<drop_down> {
  String dropdown = "India";
  List country = [
    "India",
    "UK",
    "Canada",
    "London",
    "US",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: DropdownButton(
                value: dropdown,
                onChanged: (value) {
                  setState(() {
                    dropdown = value as String;
                  });
                },
                items: List.generate(
                  5,
                  (index) => DropdownMenuItem(
                    value: country[index],
                    child: Text(country[index]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
