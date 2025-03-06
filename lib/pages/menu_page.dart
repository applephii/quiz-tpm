import 'package:flutter/material.dart';
import 'package:quiz_tpm/pages/data_page.dart';
import 'package:quiz_tpm/pages/hari_page.dart';
import 'package:quiz_tpm/pages/kubus_page.dart';
import 'package:quiz_tpm/pages/trapesium_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrapesiumPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromRGBO(251, 180, 72, 1),
                    // foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Trapesium',
                  style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KubusPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromRGBO(251, 180, 72, 1),
                    // foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Kubus',
                  style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HariPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromRGBO(251, 180, 72, 1),
                    // foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Hari',
                  style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromRGBO(251, 180, 72, 1),
                    // foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Data',
                  style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ),
            ),
        ],
      ),
    );
  }
}