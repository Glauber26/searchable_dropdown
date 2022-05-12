import 'package:dropdown_search/src/keyboard_utils/keyboard_utils_store.dart';
import 'package:keyboard_utils/keyboard_listener.dart';

class KeyboardUtilsController{

  final store = KeyboardUtilsStore();

  void addListner(){
    store.idKeyboardListener = store.keyboardUtils.add(
      listener: KeyboardListener(
        willHideKeyboard: () {
          store.keyboardHeigth.value = 0;
        },
        willShowKeyboard: (double keyboardHeight) {
          store.keyboardHeigth.value = keyboardHeight;
        },
      ),
    );
  }

  void disposeListner(){
    store.keyboardUtils.unsubscribeListener(subscribingId: store.idKeyboardListener);
    if (store.keyboardUtils.canCallDispose()) {
      store.keyboardUtils.dispose();
    }
  }

}