import 'package:bytebank/screens/contact-list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            child: Image.asset('images/bytebank_logo.png'),
            padding: const EdgeInsets.all(8.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ContactsList())),
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 120,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        iconeContato(),
                        const Text(
                          'Contacts',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Icon iconeContato() => const Icon(
        Icons.people,
        color: Colors.white,
        size: 24.0,
      );
}
