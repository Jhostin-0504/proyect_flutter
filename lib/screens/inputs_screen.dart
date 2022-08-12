import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "nombre": "Jhostin",
      "apellidos": "ladino",
      "correo": "alex941910@hotmail.com",
      "contraseña": "123456",
      "rol": "admin",
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inputs y forms"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                      labelText: "Nombre",
                      hintText: "Nombre",
                      formProperty: 'nombre',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: "Apellido",
                      hintText: "Apellido",
                      formValues: formValues,
                      formProperty: 'Apellido',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: "email",
                      hintText: "Correo electronico",
                      keyBorType: TextInputType.emailAddress,
                      formProperty: 'correo',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: "Contraseña",
                      hintText: "Contraseña",
                      passwordObscure: true,
                      formValues: formValues,
                      formProperty: 'contraseña',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(
                              value: "admin", child: Text("admin")),
                          DropdownMenuItem(
                            value: "superUser",
                            child: Text("superUser"),
                          ),
                          DropdownMenuItem(
                            value: "Developer",
                            child: Text("Developer"),
                          ),
                          DropdownMenuItem(
                            value: "Jr.developer",
                            child: Text("Jr.developer"),
                          )
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues["roles"] = value ?? "admin";
                        }),
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text("guardar"))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print(formValues);
                          return;
                        }
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
