import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/HomePage/components/balance.dart';
import 'package:smartpunch/HomePage/components/service_holder.dart';
import 'package:smartpunch/HomePage/components/transaction.dart';
import 'package:smartpunch/Services/new_device.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, PageTransition(
              type: PageTransitionType.bottomToTop,
              duration: const Duration(milliseconds: 600),
              child: const NewDevice()));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Balance(),
              ServiceHolder(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text('Recent Transactions', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
              ),
              Transaction()
            ],
          ),
        ),
      ),
    );
  }
}
