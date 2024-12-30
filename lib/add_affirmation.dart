import 'package:flutter/material.dart';


class AddAffirmation extends StatefulWidget {
  const AddAffirmation({super.key});

  @override
  State<AddAffirmation> createState() => _AddAffirmationState();
}

class _AddAffirmationState extends State<AddAffirmation> {
  final TextEditingController _controller = TextEditingController();


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
            padding: const EdgeInsets.only(top: 60, left: 110),
            child: Text("Add Affirmation", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 42),
        child: Row(
          children: [
            Text(
              "Add Your own Affirmation",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
        child: Container(
          height: 320,
          width: 390,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF2F2F2)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _controller,
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2D2D2D)),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
          ),
        ),
      ),
      InkWell(
          child: Padding(
            padding: const EdgeInsets.only(top: 26),
            child: Container(
              height: 56,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xFF00AF00),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Save",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF)),
              )),
            ),
          ),
          onTap: () {
            if (_controller.text.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Center(child: Text("Saved Successfully",style: TextStyle(color: Color(0xFFECECEC),fontSize: 14),)),
                backgroundColor: Color(0xFF808080),
                margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                //
              ));
              Navigator.pop(context, _controller.text);
              // Return the affirmation text
            }
          })
    ]));
  }
}
