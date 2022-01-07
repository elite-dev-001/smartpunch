import 'package:flutter/material.dart';



class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('images/eko.jpeg'),
              backgroundColor: Colors.transparent,
            ),
            title: const Text('Eko Electricity Distribution Company',
            style: TextStyle(
              color: Color(0xff1fd527),
              fontWeight: FontWeight.bold
            ),
            ),
            subtitle: const Text('10:53 AM'),
            trailing: const Text('- 3,500', style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
            ),),
            onTap: (){},
            dense: true,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('images/paystack.png')
            ),
            title: const Text('PAYSTACK.COM/LOOKUP',
              style: TextStyle(
                  color: Color(0xff1fd527),
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: const Text('03:11 PM'),
            trailing: const Text('+20,000',style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),),
            onTap: (){},
            dense: true,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('images/phed.png')
            ),
            title: const Text('Port Harcourt Electricity Distribution Company',
              style: TextStyle(
                  color: Color(0xff1fd527),
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: const Text('04:23 PM'),
            trailing: const Text('- 6000',style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
            ),),
            onTap: (){},
            dense: true,
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('images/ikeja.png')
            ),
            title: const Text('Ikeja Electricity Distribution Company',
              style: TextStyle(
                  color: Color(0xff1fd527),
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: const Text('11:49 AM'),
            trailing: const Text('- 4520',style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
            ),),
            onTap: (){},
            dense: true,
          ),
        ],
      ),
    );
  }
}
