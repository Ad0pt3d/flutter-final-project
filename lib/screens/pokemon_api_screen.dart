import 'package:flutter/material.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find A Pokemon"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 225,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Pokemon",
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 56,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                    child: const Icon(Icons.arrow_right_alt),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  child: Container(
                    color: Colors.green[300],
                    width: 400,
                    height: 500,
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
