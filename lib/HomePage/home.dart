import 'package:flutter/material.dart';
import 'package:smartpunch/HomePage/components/balance.dart';
import 'package:smartpunch/HomePage/components/service_holder.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: const [
          Balance(),
          ServiceHolder()
        ],
      ),
    );
  }
}
