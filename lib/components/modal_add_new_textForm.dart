import 'package:flutter/material.dart';

class ModalNewTextFormField extends StatelessWidget {
  const ModalNewTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.black),
          color: Colors.yellow),
      width: 150,
      height: 150,
      child: Stack(children: [
        Positioned(
            right: -5,
            top: -5,
            child: IconButton(
                color: Colors.red,
                onPressed: () {
                  // setState(() {
                  //   visibleModal = false;
                  // });
                },
                icon: const Icon(Icons.close))),
        Positioned(
          bottom: 0,
          right: 0,
          child: TextButton(
              onPressed: () {
                // setState(() {
                //   ok.add(TextFormModel(name: "name", rollno: 0));
                //   visibleModal = false;
                // });
              },
              child: const Text("ADD")),
        )
      ]),
    );
  }
}
