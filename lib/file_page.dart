import 'package:flutter/material.dart';

class FilePage extends StatefulWidget {
  const FilePage({super.key});

  @override
  State<FilePage> createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 20,
            ),
            child: InkWell(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset("assets/png_images/Vector.png"),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 150),
            child: Text("Files",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D2D2D))),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: selectedIndex == 0 ? Colors.green : Colors.grey[200],
                ),
                child: Center(
                    child: Text(
                  "Download",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: selectedIndex == 1 ? Colors.green : Colors.grey[200],
                ),
                child: Center(
                    child: Text(
                  "Favorite",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ),
            )),
          ],
        ),
      ),
      Expanded(
        child: Center(
            child: selectedIndex == 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/png_images/Group 1558.png"),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/png_images/add-to-favorites 1.png"),
                    ],
                  )),
      ),
    ]));
  }
}
