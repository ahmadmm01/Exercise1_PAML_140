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
                children:  [
                  const Text(
                    'Hallo, ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18
                    ),
                  ),
                  Text(
                    '$name',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,),
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
                  color: Colors.yellow
                ),
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
                  )
                )
              ),
              // Card(
              //   elevation: 5,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20)
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(20),
              //     child: Row(
              //       children: [
              //         Image.asset(
              //           'pikachu.png',
              //           height: 70,
              //           width: 70,
              //         ),
              //         const SizedBox(width: 20),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: const [
              //             Text(
              //               'Pikachu',
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 20,
              //               ),
              //             ),
              //             SizedBox(height: 10),
              //             Text(
              //               'Electric Type',
              //               style: TextStyle(
              //                 color: Colors.grey,
              //                 fontSize: 16
              //               ),
              //             )
              //           ],
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    Card(
                      elevation: 5,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset('image.png')
                          ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Teks kiri",
                                    style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "Teks kanan",
                                      style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Teks kiri",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "Teks kanan",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Subtitle",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
