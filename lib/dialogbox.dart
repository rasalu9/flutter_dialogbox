import 'package:flutter/material.dart';
import 'package:flutter_dialogbox/seconddialog.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  var one = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialog Box screen"),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alert Dialog"),
                          content: StatefulBuilder(builder: (context, state) {
                            return Container(
                              color: one ? Colors.amber : Colors.black,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Switch(
                                      value: one,
                                      onChanged: (value) {
                                        one = value;
                                        state(() {});
                                      })
                                ],
                              ),
                            );
                          }),
                          actions: [
                            OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Back"))
                          ],
                        );
                      });
                },
                child: Text("alert Dialog")),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shadowColor: Colors.blueGrey,
                        child: StatefulBuilder(builder: (context, state) {
                          return Container(
                              color: one ? Colors.amber : Colors.blue,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Switch(
                                      value: one,
                                      onChanged: (value) {
                                        one = value;
                                        state(() {});
                                      }),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("back")),
                                ],
                              ));
                        }),
                      );
                    });
              },
              child: Text("Pop up screen"),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => Seconddialog());
                },
                child: Text("POP!"))
          ],
        ));
  }
}
