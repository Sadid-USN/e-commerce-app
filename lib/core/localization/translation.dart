import 'package:get/route_manager.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {"title": "Welcome", "2": ""},
        "uk": {"title": "Ласкаво просимо"},
        "ar": {"title": "أهلا وسهلا ومرحبا"},
        "ru": {"title": "Добро пожаловать"},
      };
}
