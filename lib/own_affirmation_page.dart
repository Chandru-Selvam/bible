import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'add_affirmation.dart';

class OwnAffirmationPage extends StatefulWidget {
  const OwnAffirmationPage({super.key});

  @override
  State<OwnAffirmationPage> createState() => _OwnAffirmationPageState();
}

class _OwnAffirmationPageState extends State<OwnAffirmationPage> {
  // Initialize the affirmations list
  List<String> affirmations = [];

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
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
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 80),
                  child: const Text(
                    "Your own affirmation",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const Divider(height: 20),
            Expanded(
              child: affirmations.isEmpty
                  ? Center(
                      child: Text(
                        "No affirmations yet. Add one!",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: affirmations.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              affirmations[index],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  PopupMenuButton(
                                      itemBuilder: (context) => [
                                            PopupMenuItem(
                                              value: 1,
                                              onTap: () async {
                                                final updateText =
                                                    await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                AddAffirmation()));
                                                if (updateText != null &&
                                                    updateText.isNotEmpty) {
                                                  setState(() {
                                                    affirmations[index] =
                                                        updateText;
                                                  });
                                                }
                                                ScaffoldMessenger.of(
                                                  BuildContext as BuildContext,
                                                ).showSnackBar(SnackBar(
                                                  behavior:
                                                      SnackBarBehavior.floating,
                                                  content: Center(
                                                      child: Text(
                                                    "Update Successfully",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFECECEC),
                                                        fontSize: 14),
                                                  )),
                                                  backgroundColor:
                                                      Color(0xFF808080),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 100,
                                                      vertical: 100),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  //
                                                ));
                                              },
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: SizedBox(
                                                        height: 20,
                                                        width: 20,
                                                        child: Icon(
                                                          Icons.edit,
                                                          size: 20,
                                                        ),
                                                      )),
                                                  Text(
                                                    "Edit",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xFF2D2D2D)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            PopupMenuItem(
                                                child: Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        Share.share(
                                                            affirmations[
                                                                index]);
                                                      });
                                                    },
                                                    icon: SizedBox(
                                                        height: 20,
                                                        width: 20,
                                                        child: Image.asset(
                                                          "assets/png_images/ShareFat.png",
                                                          color:
                                                              Color(0xFF2D2D2D),
                                                        ))),
                                                Text("Share",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xFF2D2D2D))),
                                              ],
                                            )),
                                            PopupMenuItem(
                                                child: Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              dialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  "Delete this Affirmation?"),
                                                              actions: [
                                                                TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.of(context)
                                                                            .pop(),
                                                                    child: Text(
                                                                        "Cancel")),
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      affirmations
                                                                          .removeAt(
                                                                              index);
                                                                    });
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                            SnackBar(
                                                                      behavior:
                                                                          SnackBarBehavior
                                                                              .floating,
                                                                      content:
                                                                          Center(
                                                                              child: Text(
                                                                        "Delete Successfully",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Color(0xFFECECEC),
                                                                            fontSize: 14),
                                                                      )),
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFF808080),
                                                                      margin: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              100,
                                                                          vertical:
                                                                              100),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10)),
                                                                      //
                                                                    ));
                                                                  },
                                                                  style: ElevatedButton.styleFrom(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .green),
                                                                  child: Text(
                                                                    "Confirm",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),

                                                                ),
                                                              ],
                                                            );
                                                          });
                                                    },
                                                    icon: Icon(
                                                      Icons.delete,
                                                      size: 20,
                                                    )),
                                                Text("Delete",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xFF2D2D2D))),
                                              ],
                                            ))
                                          ]),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                child: Container(
                  height: 56,
                  width: 390,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00AF00),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Add Affirmation",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                onTap: () async {
                  // Navigate to AddAffirmation screen and wait for the result
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddAffirmation(),
                    ),
                  );

                  // Add new affirmation if result is valid
                  if (result != null && result is String && result.isNotEmpty) {
                    setState(() {
                      affirmations.add(result);
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
