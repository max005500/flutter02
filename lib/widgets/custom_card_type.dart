import 'package:flutter/material.dart';
import 'package:flutter02/themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('hola'),
            subtitle: Text(
                'Lorem ipsum dolor nderit enim laeur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis.'),
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
