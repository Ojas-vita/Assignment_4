import 'package:flutter/material.dart';
import 'dart:math';
import 'login.dart';
import 'signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            "My Application",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.login_rounded)),
              Tab(icon: Icon(Icons.new_label)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            login(),
            signup(),
          ],
        ),
      ),
    );
  }
}
