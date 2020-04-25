import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "";
  String _decimal =
      "0"; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);
  bool estado = false;
  bool estado1 = true;

  void _onPressed(int k) {
    setState(() {
      switch (k) {
        case 0:
          _binary = _binary + "0";
          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
          break;
        case 1:
          _binary = _binary + "1";
          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
          break;
        case 2:
          _binary = "";
          _decimal = "";
          break;
        case 10:
          _decimal = _decimal + "0";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 11:
          _decimal = _decimal + "1";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 12:
          _decimal = _decimal + "2";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 13:
          _decimal = _decimal + "3";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 14:
          _decimal = _decimal + "4";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 15:
          _decimal = _decimal + "5";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 16:
          _decimal = _decimal + "6";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 17:
          _decimal = _decimal + "7";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 18:
          _decimal = _decimal + "8";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 19:
          _decimal = _decimal + "9";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 5:
          if (estado) {
            _binary = "";
            _decimal = "";
            estado1 = true;
            estado = false;
          } else {
            _binary = "";
            _decimal = "";
            estado1 = false;
            estado = true;
          }
          break;
      }
    });
  }

  Widget binary2decimal(bool state) {
    return Visibility(
      visible: state,
      child: Expanded(
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
                onPressed: () {
                  _onPressed(1);
                },
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
                onPressed: () {
                  _onPressed(0);
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget decimal2binary(bool state) {
    return Visibility(
      visible: state,
      child: Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(children: <Widget>[
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
                      onPressed: () {
                        _onPressed(11);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(12);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(13);
                      },
                    ),
                  ),
                ),
              ]),
              Row(children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(14);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(15);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "6",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(16);
                      },
                    ),
                  ),
                ),
              ]),
              Row(children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(17);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(18);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "9",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      onPressed: () {
                        _onPressed(19);
                      },
                    ),
                  ),
                ),
              ]),
              Row(children: <Widget>[
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
                      onPressed: () {
                        _onPressed(10);
                      },
                    ),
                  ),
                ),
              ]),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: MaterialButton(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Binary -> Decimal",
                  style:
                      TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
                ),
                onPressed: () {
                  _onPressed(5);
                },
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                      fontSize: 35),
                )),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                '$_decimal',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              ),
            ),
            binary2decimal(estado),
            decimal2binary(estado1),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                    onPressed: () {
                      _onPressed(2);
                    },
                    child: Text("Reset",
                        style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ))),
              ),
            ),
          ]),
    );
  }
}
