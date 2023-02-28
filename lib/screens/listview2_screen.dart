import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final superHeroes = const [
    'superman',
    'batman',
    'hulk',
    'spider-man',
    'iron-man'
  ];
  final iconos = const [
    Icons.superscript,
    Icons.search,
    Icons.dangerous,
    Icons.bug_report_sharp,
    Icons.tv
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('listView Screen ',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontFamily: 'arial', fontWeight: FontWeight.bold)),
        )),
        body: ListView.separated(
          itemCount: superHeroes.length,
          itemBuilder: (_, index) => ListTile(
            onTap: () {},
            leading: Icon(iconos[index]),
            title: Text(superHeroes[index]),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.indigo,
            ),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
