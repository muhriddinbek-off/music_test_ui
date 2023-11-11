import 'package:flutter/material.dart';
import 'package:music_test_app/modal/modal.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final arg = wishlistMusic;
  @override
  Widget build(BuildContext context) {
    if (arg.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            Colors.blueGrey.shade900,
            Colors.blueGrey.shade800,
            Colors.blueGrey.shade700,
            Colors.blueGrey.shade600,
            Colors.blueGrey.shade500,
            Colors.blueGrey.shade500,
            Colors.blueGrey.shade500,
            Colors.blueGrey.shade600,
            Colors.blueGrey.shade700,
            Colors.blueGrey.shade800,
            Colors.blueGrey.shade900,
          ]),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Favourite', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Colors.grey)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Image.asset('assets/not.png'),
          ],
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
        Colors.blueGrey.shade900,
        Colors.blueGrey.shade800,
        Colors.blueGrey.shade700,
        Colors.blueGrey.shade600,
        Colors.blueGrey.shade500,
        Colors.blueGrey.shade500,
        Colors.blueGrey.shade500,
        Colors.blueGrey.shade600,
        Colors.blueGrey.shade700,
        Colors.blueGrey.shade800,
        Colors.blueGrey.shade900,
      ])),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('Favourite', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Colors.grey)),
          Expanded(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: arg.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(arg[index].img), fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              arg[index].authr,
                              style: const TextStyle(fontSize: 18, color: Colors.white70, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              arg[index].musicName,
                              style: const TextStyle(fontSize: 14, color: Colors.white54, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
