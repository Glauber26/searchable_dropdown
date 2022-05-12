import 'package:flutter/cupertino.dart';
import 'package:keyboard_utils/keyboard_utils.dart';

class KeyboardUtilsStore{

  final keyboardUtils = KeyboardUtils();

  late final int idKeyboardListener;

  final keyboardHeigth = ValueNotifier<double>(0.0);

}