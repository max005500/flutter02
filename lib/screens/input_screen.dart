import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final List<String> dataType = [
      'first_name',
      'last_name',
      'email',
      'password',
      'role'
    ];
    final Map<String, String> formData = {
      dataType[0]: 'max',
      dataType[1]: 'torres',
      dataType[2]: 'maxitox@correo.com',
      dataType[3]: 'maxitox',
      dataType[4]: 'admin',
    };
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs y Forms')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: 'Nombre de usuario',
                  icon: Icons.assignment_ind_outlined,
                  formProperty: 'first_name',
                  formValues: formData,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: "Apellido",
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formData,
                    icon: Icons.groups),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Correo",
                  hintText: 'Correo del usuario',
                  icon: Icons.email,
                  formProperty: 'email',
                  formValues: formData,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: "Contraseña",
                    hintText: 'Contraseña del usuario',
                    icon: Icons.key,
                    keyboardType: TextInputType.visiblePassword,
                    formProperty: 'password',
                    formValues: formData,
                    pass: true),
                const SizedBox(height: 30),
                DropdownButtonFormField(items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('admin')),
                  DropdownMenuItem(
                      value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem(
                      value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(
                      value: 'Jr. Developer', child: Text('Jr. Developer')),
                ], onChanged: (value) => {formData['role'] = value ?? 'Admin'}),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const SizedBox(
                      child: Center(child: Text('guardar')),
                    )),
              ]),
            ),
          ),
        ));
  }
}
