import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../../../utils/input_decorations.dart';

class tipoAutomovilTextField extends StatefulWidget {
  const tipoAutomovilTextField({Key? key}) : super(key: key);

  @override
  _tipoAutomovilTextFieldState createState() => _tipoAutomovilTextFieldState();
}

class _tipoAutomovilTextFieldState extends State<tipoAutomovilTextField> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _automoviles = [
    'Todos','Automoviles','Autobuses','Camiones','Motocicleta','Camión 3 ejes','Camion 4 ejes',
    'Camion 5 ejes','Camion 6 ejes','Camion 7 ejes','Camion 8 ejes','Camion 9 ejes',
    'Automovil','Automovil remolque 1 eje','Automovil remolque 2 ejes','Pick Ups',
    'Autobus 2 ejes', 'Autobus 3 ejes', 'Autobus 5 ejes', 'Camion 2 ejes'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TypeAheadFormField(
        textFieldConfiguration: TextFieldConfiguration(
          controller: _controller,
          maxLength: 30,

          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecorations.authInputDecoration(
            hintText: 'Ingresa tu automovil ',
          ),
        ),
        suggestionsCallback: (pattern) {
          return _automoviles.where((automovil) =>
              automovil.toLowerCase().contains(pattern.toLowerCase()));
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(suggestion),
          );
        },
        onSuggestionSelected: (suggestion) {
          _controller.text = suggestion;
        },
      ),
    );
  }
}
