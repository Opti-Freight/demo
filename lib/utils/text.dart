import 'package:truncate/truncate.dart';

class TextUtils {
  static String capitalize(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  static String abbreviate(String text) {
    return truncate(text, 10,
        omission: "...", position: TruncatePosition.middle);
  }
}
