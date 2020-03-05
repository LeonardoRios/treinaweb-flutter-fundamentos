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
  TextEditingController quantidadePessoasController = TextEditingController();
  TextEditingController valorContaController = TextEditingController();

  String _valorPessoa = "Informe seus dados";

  void _calcular() {
    double quantidadePessoas = double.parse(quantidadePessoasController.text);
    double valorConta = double.parse(valorContaController.text);

    double valorDividido = valorConta / quantidadePessoas;

    setState(() {
      _valorPessoa = "Valor por pessoa: ${valorDividido.toStringAsPrecision(3)}";
    });    
  }

  void _limparCampos() {
    setState(() {
      _valorPessoa = "Informe seus dados";
      quantidadePessoasController.text = "";
      valorContaController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raxa Conta"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){
              _limparCampos();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  Icons.monetization_on,
                  size: 120,
                  color: Colors.blue,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantidadePessoasController,
                  decoration: InputDecoration(
                      labelText: "Quantidade de pessoas",
                      labelStyle: TextStyle(color: Colors.blue)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: valorContaController,
                  decoration: InputDecoration(
                      labelText: "Valor da conta",
                      labelStyle: TextStyle(color: Colors.blue)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 40,
                    child: RaisedButton(
                          onPressed: () {
                            _calcular();
                          },
                          color: Colors.blue,
                          child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 18),),
                        )
                  ),
                ),

                Text(
                  _valorPessoa,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                )
              ],
            )),
          ),
        )         
      ),
    );
  }
}
