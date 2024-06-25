import 'package:flutter/material.dart';

class Seconddialog extends StatefulWidget {
  const Seconddialog({super.key});

  @override
  State<Seconddialog> createState() => _SeconddialogState();
}

class _SeconddialogState extends State<Seconddialog> {
  var two = true;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: StatefulBuilder(builder: (context, state) {
        return Container(
          color: two ? Colors.amber : Colors.deepPurple,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Switch(
                  value: two,
                  onChanged: (value) {
                    two = value;
                    state(() {});
                  }),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Back")),
            ],
          ),
        );
      }),
    );
  }
}
