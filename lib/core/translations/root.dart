import 'package:get/get.dart';

import 'languages/en_us.dart';
import 'languages/pt_br.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'pt_BR': ptBR,
        'en_US': enUS,
      };
}
