import 'package:demo_app/models/converter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BinaryToDecimal extends StatelessWidget {
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  onPressed: () => Provider.of<ConverterModel>(context, listen: false).addDigito(1),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  onPressed: () => Provider.of<ConverterModel>(context, listen: false).addDigito(0),
                ),
              ),
            ),
          ]),
    );
  }
}