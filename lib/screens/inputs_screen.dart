import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firs_name': 'Santiago',
      'last_name': 'Perez',
      'email': 'androidsan94@gmail.com',
      'password': 's1kd313',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre de usuario',
                      formProperty: 'firs_name',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido de usuario',
                      formProperty: 'last_name',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Contrasenia',
                      hintText: 'Contrasenia',
                      isPassword: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }
                        //Todo: imprimir valores del formulario
                        print(formValues);
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
