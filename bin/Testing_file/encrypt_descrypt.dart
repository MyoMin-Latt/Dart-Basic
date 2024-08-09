import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

void main() {
  final key = Key.fromUtf8('mypasswith32chars>>AES_256_bytes'); // 32 bytes key
  print(key.length);
  final iv = IV.fromLength(16); // Initialization vector

  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  // Encrypt function
  // final encrypted = encrypter.encrypt('Hello, Node.js!', iv: iv);
  final encrypted = encrypter.encrypt('Hello, Node.js!', iv: iv);
  print('Encrypted: ${encrypted.base64}');

  // Decrypt function
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
  print('Decrypted: $decrypted');
}
