import 'package:flutter/material.dart';
import 'dart:math';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(35),
            right: Radius.circular(35),
          ),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Flexible(
          flex: 1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
              ),
              Text("Sign up",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: SizedBox(
                  height: 72,
                  width: 180,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter username'),
                  ),
                ),
              ),
              SizedBox(
                height: 72,
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter email id',
                  ),
                ),
              ),
              SizedBox(
                height: 72,
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Create a Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: SizedBox(
                  height: 45,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign up'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text("Already have an account?"),
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "home");
                      },
                      child: Text("Login"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 60,
//                 width: 130,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all(Color.fromARGB(135, 0, 0, 0)),
//                   ),
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         barrierDismissible: false,
//                         builder: (BuildContext context) {
//                           return Container(
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(137, 189, 209, 218)),
//                             child: AlertDialog(
//                               backgroundColor: Colors.black87,
//                               title: Center(
//                                 child: Text(
//                                   'Score',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                               content: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Container(),
//                                   Divider(
//                                     color: Colors.white60,
//                                   ),
//                                   Container(),
//                                   Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceEvenly,
//                                       children: <Widget>[
//                                         Spacer(),
//                                         ElevatedButton(
//                                             child: Text('Exit'),
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             }),
//                                       ])
//                                 ],
//                               ),
//                             ),
//                           );
//                         });
//                   },
//                   child: Text(
//                     "Score",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               SizedBox(
//                 height: 60,
//                 width: 130,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(Colors.green),
//                   ),
//                   onPressed: () {},
//                   child: Text(
//                     "Completed",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 60,
//                 width: 130,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(Colors.red),
//                   ),
//                   onPressed: () {
//                     setState(() {});
//                   },
//                   child: Text(
//                     "Forfeit",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
