import 'package:flutter/material.dart';
import 'package:learning_demo/widgets/custom_card.dart';

class BalloningPage extends StatefulWidget {
  const BalloningPage({super.key});

  @override
  State<BalloningPage> createState() => _BalloningPageState();
}

class _BalloningPageState extends State<BalloningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (_, index) {
              return CustomCard();
            }),
      ),
    );
  }
}
