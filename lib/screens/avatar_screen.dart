import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Glorious Emperator'),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 21),
            child: const CircleAvatar(
              child: Text('BE'),
              // child: FadeInImage(
              //     fadeInDuration: Duration(milliseconds: 300),
              //     placeholder: AssetImage('assets/jar-loading.gif'),
              //     image: NetworkImage('https://i.imgur.com/sf2se6n.jpg')),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://i.imgur.com/sf2se6n.jpg'),
        ),
      ),
    );
  }
}
