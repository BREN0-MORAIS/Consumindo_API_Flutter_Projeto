import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of  notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Colors.green,
        ),
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(
              'Hello',
              style: TextStyle(),
            ),
            subtitle: Text('last edited on 21/02/2021'),
          );
        },
        itemCount: 30,
      ),
    );
  }
}
