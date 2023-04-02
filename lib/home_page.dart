import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.name}) : super(key: key);

  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Hallo, ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
              Text(
                '$name',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 18),
              ),
              const Spacer(),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    'android/assets/images/ash.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Pokedex',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.yellow),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 23),
                  hintText: 'Search Pokemon',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color.fromRGBO(230, 230, 230, 1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(13),
                  ))),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/001.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0001",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Bulbasaur",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 80)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green,
                                    ),
                                    child: const Text("Grass",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.purple,
                                  ),
                                  child: const Text(
                                    "Poison",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/002.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0002",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Ivysaur",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 100)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green,
                                    ),
                                    child: const Text("Grass",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.purple,
                                  ),
                                  child: const Text(
                                    "Poison",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/003.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0003",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Venusaur",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 85)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green,
                                    ),
                                    child: const Text("Grass",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.purple,
                                  ),
                                  child: const Text(
                                    "Poison",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/004.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0004",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Charmander",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 65)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange,
                                    ),
                                    child: const Text("Fire",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/005.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0005",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Charmeleon",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 67)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange,
                                    ),
                                    child: const Text("Fire",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/006.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0006",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Charizard",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 82)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange,
                                    ),
                                    child: const Text("Fire",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/007.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0007",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Squirtle",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 93)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                    ),
                                    child: const Text("Water",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "When it retracts its long neck into its shell, it squirts out water with vigorous force.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.asset(
                              'android/assets/images/pokemon/008.png')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "#0008",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Wartortle",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 82)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                    ),
                                    child: const Text("Water",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  width: 55,
                                  height: 25,
                                  child: const Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 95)
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    )));
  }
}
