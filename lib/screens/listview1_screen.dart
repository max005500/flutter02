import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final ideas = const ['casa', 'animaciones', 'imagenes', 'batman'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('listView Typo 1',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontFamily: 'arial', fontWeight: FontWeight.bold)),
        )),
        body: ListView(
          children: [
            ...ideas
                .map((e) => Column(
                      children: [
                        const Divider(),
                        ListTile(
                          title: Text(e),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ))
                .toList()
          ],
        ));
  }
}
