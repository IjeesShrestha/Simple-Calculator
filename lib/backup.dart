
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';

// void main() {
//   runApp(
//     const Calculator(),
//   );
// }

// class Calculator extends StatelessWidget {
//   const Calculator({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const SimpleCalculator(),
//       theme: ThemeData(primarySwatch: Colors.blue),
//     );
//   }
// }

// class SimpleCalculator extends StatefulWidget {
//   const SimpleCalculator({Key? key}) : super(key: key);

//   @override
//   _SimpleCalculatorState createState() => _SimpleCalculatorState();
// }

// class _SimpleCalculatorState extends State<SimpleCalculator> {
//   int count = -1;
//   final List<String> _buttonText = [
//     '7',
//     '8',
//     '9',
//     '/',
//     '4',
//     '5',
//     '6',
//     'X',
//     '1',
//     '2',
//     '3',
//     '-',
//     '.',
//     '0',
//     '00',
//     '+'
//   ];
//   final List<String> _buttonText2 = ['AC', '='];
//   final List<Color> _buttonColor = [
//     Colors.white54,
//     Colors.blueAccent,
//     Colors.greenAccent,
//     Colors.redAccent
//   ];

//   // increaseCounter() {
//   //   return (count++);
//   // }

//   Widget buildButton(Color btnColor, String buttonText, int index) {
//     double x = 50;
//     double y = 50;

//     if (index == 16) {
//       x = 100;
//       print(index);
//       btnColor == Colors.black;
//     }
//     print(x);
//     // String buttonText = _buttonText[count].toString();
//     return Container(
//       child: OutlinedButton(
//         onPressed: () {},
//         child: Text(
//           buttonText,
//           style: const TextStyle(color: Colors.black),
//         ),
//         style: OutlinedButton.styleFrom(
//           primary: Colors.white,
//           backgroundColor: btnColor,
//           minimumSize: Size(x, y),
//           padding: const EdgeInsets.all(24.0),
//         ),
//       ),
//     );
//   }

//   // Widget buildRow() {
//   //   return Row(
//   //     children: [
//   //       buildButton(_buttonColor[0]),
//   //       buildButton(_buttonColor[0]),
//   //       buildButton(_buttonColor[0]),
//   //       buildButton(_buttonColor[1]),
//   //     ],
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text('Simple Calculator'),
//         ),
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width * 0.99,
//         child: Column(
//           children: <Widget>[
//             const Text('0'),
//             const Expanded(child: Divider()),
//             GridView.builder(
//                 itemCount: 16,
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                   childAspectRatio: 1.2,
//                 ),
//                 itemBuilder: (context, index) {
//                   return buildButton(
//                       _buttonColor[0], (_buttonText[index]).toString(), index);
//                 }),
//             GridView.builder(
//                 itemCount: 2,
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 1.5,
//                 ),
//                 itemBuilder: (context, index) {
//                   return buildButton(
//                       _buttonColor[3], _buttonText2[index].toString(), index);
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // Column(
//               //   children: [
//               //     buildRow(),
//               //     buildRow(),
//               //     buildRow(),
//               //     buildRow(),
//               //     Row(
//               //       children: [
//               //         buildButton(_buttonColor[3]),
//               //         buildButton(_buttonColor[2]),
//               //       ],
//               //     ),