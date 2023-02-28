import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('titulo'),
              content: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text('esto es el contenido de la alerta'),
                SizedBox(height: 2),
              ]),
              actions: [
                TextButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: const Text('ok'))
              ],
            ),
        barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Alert'),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {displayDialog(context)},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text("Mostrar Alerta"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {Navigator.pop(context)},
          child: const Icon(Icons.warning_amber)),
    );
  }
}
