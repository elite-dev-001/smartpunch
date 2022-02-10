
import 'package:flutter/material.dart';
import 'components/balance.dart';
import 'components/service_holder.dart';


class NewHome extends StatelessWidget {
  const NewHome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            child: SizedBox(
              // height: MediaQuery.of(context).size.height * 1,
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // Profile(),
                  Balance(),
                  ServiceHolder(),
                ],
              ),
            ),
          ),
    );
  }
}
