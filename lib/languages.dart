import 'package:get/get.dart';

import 'helper/languages/arabic.dart';
import 'helper/languages/english.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'ar_SAR': arabic,
      };
}
