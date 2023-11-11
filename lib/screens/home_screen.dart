import 'package:flutter/material.dart';
import 'package:music_test_app/modal/modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool change = false;
  final muzik = music;
  final wishlist = wishlistMusic;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade800,
            Colors.blue.shade700,
            Colors.blue.shade600,
            Colors.blue.shade500,
            Colors.blue.shade500,
            Colors.blue.shade500,
            Colors.blue.shade600,
            Colors.blue.shade700,
            Colors.blue.shade800,
            Colors.blue.shade900,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      muzik[counter].isSelect = !muzik[counter].isSelect;
                      if (muzik[counter].isSelect == true) {
                        wishlist.add(muzik[counter]);
                      } else {
                        wishlist.remove(muzik[counter]);
                      }
                    });
                  },
                  icon: Icon(muzik[counter].isSelect ? Icons.favorite : Icons.favorite_outline, color: muzik[counter].isSelect ? Colors.redAccent : Colors.white70, size: 30),
                )),
            const SizedBox(height: 100),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(muzik[counter].img), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Text(muzik[counter].authr, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white70)),
                    Text(muzik[counter].musicName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white60)),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (counter > 0) {
                              counter--;
                            } else {
                              counter = muzik.length - 1;
                            }
                          });
                        },
                        icon: const Icon(Icons.skip_previous_outlined, color: Colors.white70, size: 45)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            change = !change;
                          });
                        },
                        icon: Icon(change ? Icons.pause_circle : Icons.play_circle, color: Colors.white70, size: 45)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (counter != muzik.length - 1) {
                              counter++;
                            } else {
                              counter = 0;
                            }
                          });
                        },
                        icon: const Icon(Icons.skip_next_outlined, color: Colors.white70, size: 45)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
