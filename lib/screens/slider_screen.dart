import 'package:flutter/material.dart';
import 'package:flutter02/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sladerValue = 100;
  bool _checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('sliders and Checks')),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            value: _sladerValue,
            onChanged: _checkBoxValue
                ? (val) {
                    _sladerValue = val;
                    setState(() {});
                  }
                : null,
            max: 400,
            min: 50,
          ),
          const SizedBox(
            height: 15,
          ),
          // Checkbox(
          //     value: _checkBoxValue,
          //     onChanged: (val) {
          //       _checkBoxValue = val ?? true;
          //       setState(() {});
          //     }),
          CheckboxListTile(
              title: const Text('activate Slider'),
              activeColor: AppTheme.primary,
              value: _checkBoxValue,
              onChanged: (val) {
                _checkBoxValue = val ?? true;
                setState(() {});
              }),
          const SizedBox(
            height: 15,
          ),
          SwitchListTile.adaptive(
              title: const Text('activate Slider'),
              activeColor: AppTheme.primary,
              value: _checkBoxValue,
              onChanged: (val) {
                _checkBoxValue = val;
                setState(() {});
              }),
          const SizedBox(
            height: 15,
          ),
          const AboutListTile(),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://i.imgur.com/B7nruCX.png'),
                fit: BoxFit.contain,
                width: _sladerValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
