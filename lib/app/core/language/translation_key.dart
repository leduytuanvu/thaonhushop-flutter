import 'package:get/get_navigation/src/root/internacionalization.dart';

class TranslationKey extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en_US': {
        'hello': 'Hello',
        'phone': 'Phone',
        'password': 'Password',
      },
      'vi_VN': {
        'hello': 'Xin chào',
        'phone': 'Số điện thoại',
        'password': 'Mật khẩu',
      },
    };
  }
}
