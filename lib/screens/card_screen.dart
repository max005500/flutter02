import 'package:flutter/material.dart';
import 'package:flutter02/models/models.dart';
import 'package:flutter02/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  static final primarch = <Primarchs>[
    Primarchs(
        name: 'Fulgrim',
        marineChapter: 'the Emperor’s Children',
        traitor: true,
        imgUrl: 'https://i.imgur.com/x6giN4G.jpg'),
    Primarchs(
        name: 'Ferrus Manus',
        marineChapter: 'the Iron Hands',
        traitor: false,
        imgUrl: 'https://i.imgur.com/fWthR4t.jpg'),
    Primarchs(
        name: 'Lorgar',
        marineChapter: 'the Word Bearers',
        traitor: true,
        imgUrl: 'https://i.imgur.com/UIXDmZf.jpg'),
    Primarchs(
        name: 'Horus',
        marineChapter: 'the Sons of Horus',
        traitor: true,
        imgUrl: 'https://i.imgur.com/2l7WBRU.jpg'),
    Primarchs(
        name: 'Mortarion',
        marineChapter: 'the Death Guard',
        traitor: true,
        imgUrl: 'https://i.imgur.com/pIZtkYB.jpg'),
    Primarchs(
        name: 'Vulkan',
        marineChapter: 'the Salamanders',
        traitor: false,
        imgUrl: 'https://i.imgur.com/TYZSf70.jpg'),
    Primarchs(
        name: 'Konrad Curze',
        marineChapter: 'the Night Lords',
        traitor: true,
        imgUrl: 'https://i.imgur.com/3DsjnFT.jpg'),
    Primarchs(
        name: 'Roboute Guilliman',
        marineChapter: 'the Ultramarines',
        traitor: false,
        imgUrl: 'https://i.imgur.com/F2QKJoo.jpg'),
    Primarchs(
        name: 'Perturabo',
        marineChapter: 'the Iron Warriors',
        traitor: true,
        imgUrl: 'https://i.imgur.com/1plS3NP.jpg'),
    Primarchs(
        name: 'Angron',
        marineChapter: 'Primarch of the World Eaters',
        traitor: true,
        imgUrl: 'https://i.imgur.com/ObSi13Q.jpg'),
    Primarchs(
        name: 'Corvus Corax',
        marineChapter: 'the Raven Guard',
        traitor: false,
        imgUrl: 'https://i.imgur.com/RxK1r1o.jpg'),
    Primarchs(
        name: 'Leman Russ',
        marineChapter: 'the Space Wolves',
        traitor: false,
        imgUrl: 'https://i.imgur.com/kKtssVK.jpg'),
    Primarchs(
        name: 'Magnus the Red',
        marineChapter: 'the Thousand Sons',
        traitor: true,
        imgUrl: 'https://i.imgur.com/vFfJDnI.jpg'),
    Primarchs(
        name: 'Rogal Dorn',
        marineChapter: 'the Imperial Fists',
        traitor: false,
        imgUrl: 'https://i.imgur.com/CNORlDN.jpg'),
    Primarchs(
        name: 'Alpharius',
        marineChapter: 'the Alpha Legion',
        traitor: true,
        imgUrl: 'https://i.imgur.com/WQDR8fa.jpg'),
    Primarchs(
        name: 'Sanguinius',
        marineChapter: 'the Blood Angels',
        traitor: false,
        imgUrl: 'https://i.imgur.com/otz1ufa.jpg'),
    Primarchs(
        name: 'Lion El’Jonson',
        marineChapter: 'the Dark Angels Legion',
        traitor: false,
        imgUrl: 'https://i.imgur.com/Hgkf3e5.jpg'),
    Primarchs(
        name: 'Jaghatai Khan',
        marineChapter: 'the White Scars',
        traitor: false,
        imgUrl: 'https://i.imgur.com/6m6XHW2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text('primarchs'),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(height: 20),
          itemBuilder: (_, index) => CustomCardType2(
              name: primarch[index].name,
              imgUrl: primarch[index].imgUrl,
              traitor: primarch[index].traitor,
              marines: primarch[index].marineChapter),
          itemCount: primarch.length,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ));
  }
}
