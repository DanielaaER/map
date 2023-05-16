import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../../utils/input_decorations.dart';


class destinyMunicipioTextField extends StatefulWidget {
  const destinyMunicipioTextField({Key? key}) : super(key: key);

  @override
  _destinyMunicipioTextFieldState createState() => _destinyMunicipioTextFieldState();
}

class _destinyMunicipioTextFieldState extends State<destinyMunicipioTextField> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _estados = [
    'Aguascalientes',
    'Baja California',
    'Baja California Sur',
    'Campeche',
    'Chiapas',
    'Chihuahua',
    'Coahuila',
    'Colima',
    'Ciudad de México',
    'Durango',
    'Guanajuato',
    'Guerrero',
    'Hidalgo',
    'Jalisco',
    'Estado de México',
    'Michoacán',
    'Morelos',
    'Nayarit',
    'Nuevo León',
    'Oaxaca',
    'Puebla',
    'Querétaro',
    'Quintana Roo',
    'San Luis Potosí',
    'Sinaloa',
    'Sonora',
    'Tabasco',
    'Tamaulipas',
    'Tlaxcala',
    'Veracruz',
    'Yucatán',
    'Zacatecas',
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
            hintText: 'Ingresa tu municipio de origen',
          ),
        ),
        suggestionsCallback: (pattern) {
          return _estados.where((estado) =>
              estado.toLowerCase().contains(pattern.toLowerCase()));
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
