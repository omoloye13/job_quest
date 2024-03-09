import 'package:flutter/material.dart';

class InputFieldWithDropdown extends StatefulWidget {
  @override
  _InputFieldWithDropdownState createState() => _InputFieldWithDropdownState();
}

class _InputFieldWithDropdownState extends State<InputFieldWithDropdown> {
  String _selectedOption = 'option1';
  List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: 'Input Field with Dropdown',
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.keyboard_arrow_down),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isDense: true,
          isExpanded: true,
          value: _selectedOption,
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue!;
            });
          },
          items: _options.map((option) {
            return DropdownMenuItem(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Usage
// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return SingleChildScrollView(
//                   child: Container(
//                     padding: EdgeInsets.all(16),
//                     child: InputFieldWithDropdown(),
//                   ),
//                 );
//               },
//             );
//           },
//           child: Text('Open Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }
