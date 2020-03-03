import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Icon icon = Icon(
    Icons.monetization_on,
    size: 120,
    color: Colors.blue,
  );

  TextFormField formPessoas = TextFormField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: "Quantidade de pessoas",
      labelStyle: TextStyle(color: Colors.blue)
    ),
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.blue, fontSize: 18),
  );

  TextFormField formConta = TextFormField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
        labelText: "Valor da conta",
        labelStyle: TextStyle(color: Colors.blue)
    ),
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.blue, fontSize: 18),
  );

  RaisedButton botaoCalcular = RaisedButton(
    onPressed: () {},
    color: Colors.blue,
  );

  Text textoValorPessoa = Text(
    "Valor por pessoa",
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.blue, fontSize: 18),
  );

}
