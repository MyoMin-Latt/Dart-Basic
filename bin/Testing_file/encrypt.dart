import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';
import 'dart:convert';

void main() {
  final key = Key.fromUtf8('32characterslongpassphrase123456'); // 32 bytes key
  final iv = IV.fromUtf8('16byteslongiv123'); // 16 bytes IV

  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  // Encrypt the text
  final encrypted = encrypter.encrypt('Hello from Flutter!', iv: iv);
  print('Encrypted (Base64): ${encrypted.base64}');
  print('IV (Base64): ${iv.base64}');
  print('Key (Hex): ${hex.encode(key.bytes)}');
// Encrypted (Base64): eE8wSP/yuP5UQJlJ4Wak2tdLM4hteJb9DCBobaffmdA=
// IV (Base64): MTZieXRlc2xvbmdpdjEyMw==
// Key (Hex): 3332636861726163746572736c6f6e6770617373706872617365313233343536
}
