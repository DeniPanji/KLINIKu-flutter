import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Doctor {
  final String firstName;
  final String lastName;
  final String image;
  final String type;

  Doctor({
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.type,
  });
}
