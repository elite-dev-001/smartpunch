import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final bool fromDrawer;
  const Transaction({Key? key, required this.fromDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fromDrawer ? null : AppBar(
        title: const Text('Recent Transactions'),
        backgroundColor: const Color(0xFF0D60D8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/eko.jpeg'),
                backgroundColor: Colors.transparent,
              ),
              title: const Text(
                'Eko Electricity ',
                style: TextStyle(
                  color: Color(0xff000000),
                ),
              ),
              subtitle: const Text(
                '10:53 AM',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF0D60D8)),
              ),
              trailing: const Text(
                '- 3,500',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
              dense: true,
            ),
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/paystack.png')),
              title: const Text(
                'PAYSTACK.COM/LOOKUP',
                style: TextStyle(
                  color: Color(0xff000000),
                ),
              ),
              subtitle: const Text(
                '03:11 PM',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF0D60D8)),
              ),
              trailing: const Text(
                '+20,000',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
              dense: true,
            ),
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/phed.png')),
              title: const Text(
                'Port Harcourt Electricity Distribution...',
                style: TextStyle(
                  color: Color(0xff000000),
                ),
              ),
              subtitle: const Text(
                '04:23 PM',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF0D60D8)),
              ),
              trailing: const Text(
                '- 6000',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
              dense: true,
            ),
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/providers/kedco.png')),
              title: const Text(
                'kEDCO',
                style: TextStyle(
                  color: Color(0xff000000),
                ),
              ),
              subtitle: const Text(
                '11:49 AM',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF0D60D8)),
              ),
              trailing: const Text(
                '- 4520',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
