import 'package:flutter/material.dart';
import '../models/tugas.dart';
import './tugasharian.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  late List<Tugas> _listTugas; // Declare _listTugas here

  List<Widget> tabs = []; // Declare tabs as an empty list

  @override
  void initState() {
    _listTugas = [
      Tugas(id: '1', matakuliah: 'Pemrograman Mobile', deskripsi: 'Ngoding', status: 'false')
    ];

    tabs = [
      TugasHarian(listTugas: _listTugas.toList()),
      Center(child: Text('Materi Pelajaran')),
      Center(child: Text('Profile')),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Materi Pelajaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
