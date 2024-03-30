import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget textField(String hint, String label, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
      style: TextStyle(
        color: Colors.black,
        backgroundColor: Colors.white,
      ),
    ),
  );
}
