import 'package:flutter/material.dart';

class Signets extends StatelessWidget {
  const Signets({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
          ),
        ),
        actions: <Widget>[
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 71, 71, 71),
                    spreadRadius: 0,
                    offset: Offset(0, 1),
                  )
                ]),
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(top: 20, bottom: 30, right: 10),
            child: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Signets'),
      ));
}
