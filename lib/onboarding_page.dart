import 'package:flutter/material.dart';
import 'package:exercise1_paml_140/login_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                backgroundColor: Colors.yellow,
                fixedSize: const Size.square(60)
              ),
              child: const Icon(Icons.arrow_forward, size: 30,),
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