import 'package:flutter/material.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('images/profile.png')),
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      height: 130,
      clipBehavior: Clip.hardEdge,
    );
  }
}
