import 'package:chat_app/controllers/base_controller.dart';

class LoginController extends BaseController {}

enum LoginType {
  google(0),
  apple(1),
  email(2);

  const LoginType(this.value);

  final int value;
}
