import 'package:flutter/material.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({super.key});

  @override
  State<KubusPage> createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final TextEditingController _sisiController = TextEditingController();
  double _volume = 0;
  double _luasPermukaan = 0;
  double _kelilingKubus = 0;

  void _hitung(){
    double sisi = double.parse(_sisiController.text);
    _volume = sisi * sisi * sisi;
    _kelilingKubus = sisi * 4;
    _luasPermukaan = 6 * (sisi * sisi);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hitung Kubus')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _sisiController, decoration: InputDecoration(labelText: 'Panjang Sisi')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _hitung, child: Text('Hitung')),
            SizedBox(height: 20),
            Text('Volume: $_volume'),
            Text('Luas Permukaan: $_luasPermukaan'),
            Text('Keliling Kubus: $_kelilingKubus'),
          ],
        ),
      ),
    );
  }
}