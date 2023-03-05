import 'package:flutter/material.dart';

class QTextField extends StatelessWidget {
  const QTextField(
      {super.key, required this.name, required this.inputController, this.isSecure, this.formIcon, required this.hint});
  final String name, hint;
  final bool? isSecure;
  final Icon? formIcon;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        SizedBox(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff939393)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            margin: const EdgeInsets.only(top: 10, bottom: 28),
            child: TextFormField(
              controller: inputController,
              decoration: formIcon == null
                  ? InputDecoration(hintText: hint, border: InputBorder.none)
                  : InputDecoration(icon: formIcon, hintText: hint, border: InputBorder.none),
              obscureText: isSecure == null ? false : true,
            ),
          ),
        ),
      ],
    );
  }
}
