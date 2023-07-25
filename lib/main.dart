import 'package:flutter/material.dart';
import 'package:radio_button_example/routes.dart';

import 'constants/global_widgets.dart';
import 'features/Auth/screens/auth_screen.dart';

/// Flutter code sample for [Radio].

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      title: "amazone Clone",
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariable.backGroundColor,
        colorScheme: ColorScheme.light(
          primary: GlobalVariable.secondarycolor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: auth_screen(),
    );
  }
}

// enum SingingCharacter { lafayette, jefferson }

// class RadioExample extends StatefulWidget {
//   const RadioExample({super.key});

//   @override
//   State<RadioExample> createState() => _RadioExampleState();
// }

// class _RadioExampleState extends State<RadioExample> {
//   SingingCharacter? _character = SingingCharacter.lafayette;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           ListTile(
//             title: const Text('Lafayette'),
//             leading: Radio<SingingCharacter>(
//               value: SingingCharacter.lafayette,
//               groupValue: _character,
//               onChanged: (SingingCharacter? value) {
//                 setState(() {
//                   _character = value;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: const Text('Thomas Jefferson'),
//             leading: Radio<SingingCharacter>(
//               value: SingingCharacter.jefferson,
//               groupValue: _character,
//               onChanged: (SingingCharacter? value) {
//                 setState(() {
//                   _character = value;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
