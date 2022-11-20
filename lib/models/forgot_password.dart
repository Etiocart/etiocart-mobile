// import 'package:flutter/material.dart';

// class forgotPassword extends StatefulWidget {
//   const forgotPassword({super.key});

//   @override
//   State<forgotPassword> createState() => _forgotPasswordState();
// }

// class _forgotPasswordState extends State<forgotPassword> {
//   final _emailController = TextEditingController();

//   void dispose() {e
//     _emailController.dispose();
//     super.dispose();
//   }

//   Future passwordReset() async {
//     try {
//       await FirebaseAuth.instance
//           .sendPasswordResetEmail(email: _emailController.text.trim());
//       showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               content: Text('Check Your email for your password reset link'),
//             );
//           });
//     } on FirebaseAuthException catch (e) {
//       print(e);
//       showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               content: Text(e.message.toString()),
//             );
//           });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Material(
//         borderRadius: BorderRadius.circular(25),
//         elevation: 20,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Enter you email to reset your Password'),
//             customFormField(),
//             sendButton()
//           ],
//         ),
//       ),
//     );
//   }

//   Container customFormField() {
//     return Container(
//       padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       width: double.infinity,
//       height: 60,
//       child: Material(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             TextField(
//               controller: _emailController,
//               style: TextStyle(color: Colors.black87, fontSize: 15),
//               decoration: InputDecoration(
//                 hintText: 'hint value',
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(width: 0, color: Colors.white),
//                   borderRadius: BorderRadius.circular(35.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget sendButton() {
//     return Container(
//       padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
//       width: 200,
//       height: 50,
//       child: ElevatedButton(
//           onPressed: () {
//             passwordReset();
//           },
//           style: ElevatedButton.styleFrom(
//             elevation: 10,
//             backgroundColor: const Color(0xff1e88e5),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           child: Text(
//             'Register',
//             style: TextStyle(fontFamily: 'SFRounded', fontSize: 15),
//           )),
//     );
//   }
// }