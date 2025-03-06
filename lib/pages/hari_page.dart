import 'package:flutter/material.dart';

class HariPage extends StatefulWidget {
  const HariPage({super.key});

  @override
  State<HariPage> createState() => _HariPageState();
}

class _HariPageState extends State<HariPage> {
  final TextEditingController _jumlahHariTambah = TextEditingController();
  final TextEditingController _hariSekarang = TextEditingController();
  String _hasilFuture = '';

  void _hitungHari(){
    String sekarang = _hariSekarang.text.trim().toLowerCase();
    int tambah = int.parse(_jumlahHariTambah.text);

    int hariSekarang = getIndexHari(sekarang);
    if (hariSekarang == -1) {
      setState(() {
        _hasilFuture = 'Hari tidak valid. Masukkan hari (Senin, Selasa, dll.)';
      });
      return;
    }

    int futureIndex = (hariSekarang + tambah) % 7;
    String masaDepan = getNamaHari(futureIndex);

    setState(() {
      _hasilFuture = '$tambah hari dari $sekarang adalah: $masaDepan';
    });

  }

  int getIndexHari(String day) {
    switch (day) {
      case 'senin':
        return 0;
      case 'selasa':
        return 1;
      case 'rabu':
        return 2;
      case 'kamis':
        return 3;
      case 'jumat':
        return 4;
      case 'sabtu':
        return 5;
      case 'minggu':
        return 6;
      default:
        return -1;
    }
  }

  String getNamaHari(int index) {
    switch (index) {
      case 0:
        return 'Senin';
      case 1:
        return 'Selasa';
      case 2:
        return 'Rabu';
      case 3:
        return 'Kamis';
      case 4:
        return 'Jumat';
      case 5:
        return 'Sabtu';
      case 6:
        return 'Minggu';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perhitungan Hari'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _hariSekarang,
              decoration: InputDecoration(
                labelText: 'Masukkan hari (Senin, Selasa, dll.)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _jumlahHariTambah,
              decoration: InputDecoration(
                labelText: 'Berapa hari dari sekarang dimasa depan?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungHari,
              child: Text('Hitung Hari'),
            ),
            SizedBox(height: 20),
            if (_hasilFuture.isNotEmpty) ...[
              Text(
                _hasilFuture,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ],
        ),
      ),
    );
  }
}