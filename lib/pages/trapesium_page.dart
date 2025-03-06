import 'package:flutter/material.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final TextEditingController _alas1Controller = TextEditingController();
  final TextEditingController _alas2Controller = TextEditingController();
  final TextEditingController _sisiMiringController = TextEditingController();
  double _tinggi = 0;
  double _luas = 0;
  double _keliling = 0;

  void _hitung(){
    double alas1 = double.parse(_alas1Controller.text);
    double alas2 = double.parse(_alas2Controller.text);
    double sisiMiring = double.parse(_sisiMiringController.text);;
    _tinggi = _pythagoras(alas1, alas2, sisiMiring);
    _luas = ((alas1 + alas2)/2)*_tinggi;
    _keliling = alas1 + alas2 + (2*_tinggi);
    setState(() {
      
    });
  }

  double _pythagoras(double a, double b, double c){
    double alas = (a - b).abs();
    double d = (c*c) - (alas * alas);
    return d;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hitung Trapesium Sama Sisi')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _alas1Controller, decoration: InputDecoration(labelText: 'Panjang Alas 1')),
            TextField(controller: _alas2Controller, decoration: InputDecoration(labelText: 'Panjang Alas 2')),
            TextField(controller: _sisiMiringController, decoration: InputDecoration(labelText: 'Sisi Miring')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _hitung, child: Text('Hitung')),
            SizedBox(height: 20),
            Text('Luas: $_luas'),
            Text('Keliling: $_keliling'),
          ],
        ),
      ),
    );
  }
}