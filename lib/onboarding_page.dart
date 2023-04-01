import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 50),
            const Text(
              'Pokedex.',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow
              ),
              ),
            const SizedBox(height: 50),
            const Text(
              'Welcome to Pokedex\nYou can find yout favorite pokemon here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              ),
            const SizedBox(height: 150),
            Image.asset(
              "android/assets/images/pokeball.png",
              height: 200,
              width: 200),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage()
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.yellow
              ),
              child: const Icon(Icons.arrow_forward),
            ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        )
      )
    );
  }
}