import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final ArkaPLANProvider = StateProvider<bool>((ref) {
  bool arkaplan = false;
  return arkaplan;
});
