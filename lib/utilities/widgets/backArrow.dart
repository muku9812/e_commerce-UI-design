import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          CupertinoIcons.back,
          size: 30,
        ),
      ),
    );
  }
}
