import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'My Account',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text('David Oyinkuro')
                        ],
                      ),
                      const Icon(Icons.person)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.zero)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: const [
                                Icon(Icons.phone),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'Contact Us',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.zero)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: const [
                                Icon(Icons.money),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'Referrals',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.zero)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: const [
                                Icon(Icons.security),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'Security',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.zero)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: const [
                                Icon(Icons.settings),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'My Account Setting',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.zero)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
