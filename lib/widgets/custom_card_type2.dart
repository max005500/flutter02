import 'package:flutter/material.dart';
import 'package:flutter02/themes/app_themes.dart';

class CustomCardType2 extends StatelessWidget {
  final String imgUrl;
  final String name;
  final bool traitor;
  final String marines;
  const CustomCardType2(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.traitor,
      required this.marines});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 50,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children: [
          FadeInImage(
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
              placeholder:
                  const AssetImage('assets/dragon-saint-guilliman.gif'),
              fadeInDuration: const Duration(milliseconds: 300),
              image: NetworkImage(imgUrl)),
          if (traitor)
            ListTile(
              title: Text(
                name,
                style: const TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                'Primarch of $marines',
                style: const TextStyle(fontSize: 17),
              ),
              leading: const Icon(Icons.mood_bad, color: Colors.redAccent),
            )
          else
            ListTile(
              title: Text(
                name,
                style: const TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                'Primarch of $marines',
                style: const TextStyle(fontSize: 17),
              ),
              leading: const Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.greenAccent,
              ),
            )
        ],
      ),
    );
  }
}
