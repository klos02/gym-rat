import 'package:flutter/material.dart';

AppBar appBar() {
    return AppBar(
      title: const Text(
        'GymRat',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      
    );
  }

