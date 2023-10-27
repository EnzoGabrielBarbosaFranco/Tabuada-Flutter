// tabuada_ui.dart
import 'package:flutter/material.dart';
import 'tabuada_logic.dart';

class TabuadaUI extends StatefulWidget {
  @override
  _TabuadaUIState createState() => _TabuadaUIState();
}

class _TabuadaUIState extends State<TabuadaUI> {
  final _numeroController = TextEditingController();
  final TabuadaLogic _tabuadaLogic = TabuadaLogic();
  List<String> tabuada = [];

  void _calcularTabuada() {
    final numero = int.tryParse(_numeroController.text) ?? 0;
    final novaTabuada = _tabuadaLogic.calcularTabuada(numero);
    setState(() {
      tabuada = novaTabuada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabuada'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _numeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite um número',
              ),
            ),
            ElevatedButton(
              onPressed: _calcularTabuada,
              child: Text('Calcular Tabuada'),
            ),
            SizedBox(height: 20),
            if (tabuada.isNotEmpty)
              Column(
                children: tabuada
                    .map((item) => Text(
                          item,
                          style: TextStyle(fontSize: 18),
                        ))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
