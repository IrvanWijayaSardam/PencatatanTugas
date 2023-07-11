import 'package:flutter/material.dart';
import '../models/tugas.dart';

class ListTugas extends StatelessWidget {
  final List<Tugas> listTugas;
  final Function updateTugas;
  final Function updateStatus;

  const ListTugas(this.listTugas, this.updateTugas,this.updateStatus);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(15),
      child: listTugas.isEmpty
          ? Column(
              children: <Widget>[
                SizedBox(height: 100),
                Text(
                  'Belum Ada Tugas',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 100),
                Container(
                  height: 200,
                  child: Image.asset('images/listtugas.png', fit: BoxFit.cover),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                final bool isChecked = listTugas[index].status == 'true';
                return Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Text('${listTugas[index].matakuliah}'),
                    title: Text(
                      listTugas[index].deskripsi,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) =>
                              updateStatus(listTugas[index].id),
                        ),
                        GestureDetector(
                          onTap: () {
                            updateTugas(listTugas[index]).id;
                          },
                          child: Icon(
                            Icons.update,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: listTugas.length,
            ),
    );
  }
}
