// from node
// Encrypted Text: xyJwHzeSqXK+/UWhgsIgOtRuMX78ofcs2k9Typobr5I=
// IV: MTZieXRlc2xvbmdpdjEyMw==
// Key: 3332636861726163746572736c6f6e6770617373706872617365313233343536

// 2. Decrypting Text in Flutter
// import 'package:encrypt/encrypt.dart';
// import 'package:convert/convert.dart';
// import 'dart:convert';

// void main() {
//   // The key, IV, and encrypted data from Node.js
//   // final keyHex =
//   //     '32characterslongpassphrase123456'; // Replace with the actual key from Node.js
//   // final ivBase64 =
//   //     '/uhxeANTHCZgq9UOA8ZRdQ=='; // Replace with the actual IV from Node.js
//   final encryptedBase64 =
//       'xyJwHzeSqXK+/UWhgsIgOtRuMX78ofcs2k9Typobr5I='; // Replace with the actual encrypted text

//   // Convert key and IV from hex/base64
//   final key = Key.fromUtf8('32characterslongpassphrase123456');
//   final iv = IV.fromUtf8('16byteslongiv123');

//   // Decrypt the text
//   final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
//   final decrypted = encrypter.decrypt64(encryptedBase64, iv: iv);

//   print('Decrypted Text: $decrypted');
// }

// 4. Example with Actual Data
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';
import 'package:convert/convert.dart';
import 'dart:convert';

void main() {
  // The key, IV, and encrypted data from Node.js
  final keyHex =
      '3332636861726163746572736c6f6e6770617373706872617365313233343536';
  final ivBase64 = 'MTZieXRlc2xvbmdpdjEyMw==';
  final encryptedBase64 = 'xyJwHzeSqXK+/UWhgsIgOtRuMX78ofcs2k9Typobr5I=';

  // Convert key and IV from hex/base64
  final key = Key(Uint8List.fromList(hex.decode(keyHex)));
  final iv = IV.fromBase64(ivBase64);

  // Decrypt the text
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
  final decrypted = encrypter.decrypt64(encryptedBase64, iv: iv);

  print('Decrypted Text: $decrypted');
}
