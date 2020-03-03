import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raxa Conta"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: (Column(
            children: <Widget>[
              Icon(
                Icons.monetization_on,
                size: 120,
                color: Colors.blue,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Quantidade de pessoas",
                    labelStyle: TextStyle(color: Colors.blue)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Valor da conta",
                    labelStyle: TextStyle(color: Colors.blue)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text("Calcular"),
              ),
              Text(
                "Valor por pessoa",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 18),
              )
            ],
          )),
        ),
      ),
    );
  }
}
