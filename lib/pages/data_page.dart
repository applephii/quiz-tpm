import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Diri"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                'NIM: 123220022',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10), 
              Text(
                'Nama: R.A. Kurnia Haqiki',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10), 
              Text(
                'Kelas: IF-H',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10), 
              Text(
                'Hobi:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10), 
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('1. Membaca buku fiksi', style: TextStyle(fontSize: 20)),
                    ),
                    ListTile(
                      title: Text('2. Menonton drama', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Image.asset('assets/foto.png'),
          ],
        ),
      ),
    );
  }
}
