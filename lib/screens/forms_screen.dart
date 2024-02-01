import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormsScreen extends StatelessWidget {
  static String name = "forms_screen";

  const FormsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FormBuilderTextField(
                name: 'nombre_completo',
                decoration: const InputDecoration(
                  labelText: 'Nombre completo',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15), // Añadido espacio interior
                ),
                validator: FormBuilderValidators.required(),
              ),
              const SizedBox(height: 10),
              FormBuilderTextField(
                name: 'correo',
                decoration: const InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
              const SizedBox(height: 10),
              FormBuilderTextField(
                name: 'telefono',
                decoration: const InputDecoration(
                  labelText: 'Teléfono',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
                validator: FormBuilderValidators.required(),
              ),
              const SizedBox(height: 10),
              FormBuilderDropdown(
                name: 'genero',
                decoration: const InputDecoration(
                  labelText: 'Género',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
                items: ['Masculino', 'Femenino', 'Otro']
                    .map((genero) => DropdownMenuItem(
                  value: genero,
                  child: Text(genero),
                ))
                    .toList(),
                validator: FormBuilderValidators.required(),
              ),
              const SizedBox(height: 10),
              FormBuilderDateTimePicker(
                name: 'fecha_nacimiento',
                inputType: InputType.date,
                decoration: const InputDecoration(
                  labelText: 'Fecha de nacimiento',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
                validator: FormBuilderValidators.required(),
              ),
              const SizedBox(height: 10),
              FormBuilderCheckbox(
                name: 'recibir_notificaciones',
                title: const Text('Recibir notificaciones'),
              ),
              const SizedBox(height: 10),
              FormBuilderCheckbox(
                name: 'acuerdo_politicas',
                title: const Text('Estoy de acuerdo con las políticas de seguridad'),
                validator: FormBuilderValidators.required(
                  errorText: 'Debe aceptar las políticas de seguridad',
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () async {
                  await Future.delayed(Duration.zero);
                  final form = FormBuilder.of(context);
                  if (form!.saveAndValidate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Guardado con éxito'),
                        duration: const Duration(seconds: 5),
                        onVisible: () {
                          Future.delayed(const Duration(seconds: 5)).then((_) {
                            Navigator.pop(context);
                          });
                        },
                      ),
                    );
                    form.reset();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Ambos campos deben ser completados'),
                        duration: Duration(seconds: 5),
                      ),
                    );
                  }
                },
                child: const Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
