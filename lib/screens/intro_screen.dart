import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 10),
              child: Image.asset(
                'intro.png',
                scale: 5,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Online Learning Platform',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/authenticate');
              },
              child: const Text('Start Learning'),
            ),
          ],
        ),
      ),
    );
  }
}
