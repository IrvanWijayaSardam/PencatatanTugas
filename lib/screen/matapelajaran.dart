import 'package:flutter/material.dart';

import '../widgets/list_pelajaran.dart';

class MataPelajaran extends StatefulWidget {
  const MataPelajaran({super.key});

  @override
  State<MataPelajaran> createState() => _MataPelajaranState();
}

class _MataPelajaranState extends State<MataPelajaran> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Tugas Harian'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ListPelajaran(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _showBottomSheet();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
