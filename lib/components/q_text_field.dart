import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class QTextField extends StatelessWidget {
  const QTextField({
    super.key,
    required this.name,
    required this.inputController,
    this.isSecure,
    this.formIcon,
    required this.hint,
    this.isOptional,
  });
  final String name, hint;
  final bool? isSecure;
  final bool? isOptional;
  final Icon? formIcon;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(color: QMainGreen, fontSize: 16),
        ),
        SizedBox(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide(color: QLightGrey)),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            margin: const EdgeInsets.only(top: 10, bottom: 28),
            child: TextFormField(
              controller: inputController,
              decoration: formIcon == null
                  ? InputDecoration(
                      hintText: hint,
                      border: InputBorder.none,
                    )
                  : InputDecoration(icon: formIcon, hintText: hint, border: InputBorder.none),
              obscureText: isSecure == null ? false : true,
              validator: (value) {
                if (isOptional == null ? true : false) {
                  if (value!.isEmpty) {
                    return ' هذا الحقل إجباري';
                  }
                  return null;
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
        ),
      ],
    );
  }
}
