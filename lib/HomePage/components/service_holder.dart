
import 'package:flutter/material.dart';
import 'package:smartpunch/HomePage/components/service.dart';


class ServiceHolder extends StatelessWidget {
  const ServiceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Service(
            color: 0xff0000FF,
            icon: Icons.how_to_reg_rounded,
            firstText: 'Registered Devices',
            secondText: 'Check to see all your registered devices and also register'
                'as many as possible',
            lastText: 'View Devices',
          ),
          Service(
            color: 0xff7F00FF,
            icon: Icons.electrical_services,
            firstText: 'Service Providers',
            secondText: 'Check to see the list of available service providers '
                'and their various packages',
            lastText: 'Open',
          ),
        ],
      ),
    );
  }
}
