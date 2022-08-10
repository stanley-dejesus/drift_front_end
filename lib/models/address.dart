import 'dart:io';
import 'dart:js';

import 'package:flutter/material.dart';

class Address {
  late String a;
  late String c;
  late String s;
  late String z;
  Address({a, c, s, z});
  String get address {
    return a;
  }

  String get city {
    return c;
  }

  String get state {
    return s;
  }

  String get zip {
    return z;
  }

  set address(String addr) {
    a = addr;
  }

  set city(String city) {
    c = city;
  }

  set state(String state) {
    s = state;
  }

  set zip(String zip) {
    z = zip;
  }
}
