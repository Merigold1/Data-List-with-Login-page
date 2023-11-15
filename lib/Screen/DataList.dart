import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  const DataList({super.key});

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Tifa Lockhart", "age": 20},
    {"id": 2, "name": "Shadowheart", "age": 40},
    {"id": 3, "name": "Quiet", "age": 25},
    {"id": 4, "name": "Triss Merigold", "age": 55},
    {"id": 5, "name": "Yennefer of Vengerberg", "age": 71},
    {"id": 6, "name": "Geralt of Rivia", "age": 106},
    {"id": 7, "name": "Zelda Zimmerman", "age": 24},
    {"id": 8, "name": "Gwen Stacy", "age": 19},
    {"id": 9, "name": "King Baldwin IV", "age": 24},
    {"id": 10, "name": "Charles of Habsburg", "age": 58},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Data List'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: _allUsers.length,
              itemBuilder: (context, index) => Card(
                key: ValueKey(_allUsers[index]["id"]),
                color: Colors.grey[300],
                elevation: 0,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo),
                  child: ListTile(
                      leading: Text(
                        _allUsers[index]["id"].toString(),
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      title: Text(
                        _allUsers[index]["name"],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        '${_allUsers[index]["age"].toString()} years old',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: GestureDetector(
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onTap: () {},
                      )),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton:
            new FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)));
  }
}
