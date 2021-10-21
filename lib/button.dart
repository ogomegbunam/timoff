import 'package:flutter/material.dart';

import 'const.dart';

class ButtonComponent extends StatelessWidget {
  final String label;

  final VoidCallback onTap;

  const ButtonComponent({
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kactive,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: new ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              backgroundColor: MaterialStateProperty.all(kactive)),
          onPressed: onTap,
          child: Text(
            label,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
