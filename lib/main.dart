import 'package:flutter/material.dart';
import 'package:mpesa/mpesa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Mpesa _mpesa = Mpesa(
    clientKey: "",
    clientSecret: "",
    passKey: "",
    initiatorPassword: "Safaricom007@",
    environment: "sandbox",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("PAY"),
            onPressed: () {
              _mpesa
                  .lipaNaMpesa(
                    phoneNumber: "254...",
                    amount: 1,
                    businessShortCode: "174379",
                    callbackUrl: "",
                  )
                  .then((result) {})
                  .catchError((error) {});
            },
          ),
        ),
      ),
    );
  }
}
