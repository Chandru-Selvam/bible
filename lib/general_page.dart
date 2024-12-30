import 'package:flutter/material.dart';
import 'package:task/own_affirmation_page.dart';


class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55,left: 20,),
                    child: InkWell(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/png_images/Vector.png"),
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 125),
                    child: Text(
                      "Categories",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 2,
                color: Colors.orange,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 222,
                            width: 172,
                            child: Image.asset(
                                "assets/png_images/Group 1433.png")),
                        InkWell(
                            child: SizedBox(
                                height: 222,
                                width: 172,
                                child: Image.asset(
                                    "assets/png_images/Group 1434.png")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OwnAffirmationPage()));
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 222,
                        width: 172,
                        child: Image.asset("assets/png_images/Group 1435.png")),
                    SizedBox(
                        height: 222,
                        width: 172,
                        child: Image.asset("assets/png_images/Group 1436.png")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 222,
                        width: 172,
                        child: Image.asset("assets/png_images/Group 1437.png")),
                    SizedBox(
                        height: 222,
                        width: 172,
                        child: Image.asset("assets/png_images/Group 1438.png")),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
