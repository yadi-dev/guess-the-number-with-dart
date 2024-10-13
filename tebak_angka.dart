import 'dart:io';
void main() {
  final int targetNumber = 42;
  final int maxAttempts = 5;
  int attempts = 0;
  print('Selamat datang di permainan Tebak Angka!');
  print('Coba tebak angka antara 1 dan 100.');
  print('Anda memiliki $maxAttempts kesempatan untuk menebak.');
  
  while (attempts < maxAttempts) {
    stdout.write('Masukkan tebakan Anda (Percobaan ${attempts + 1}/$maxAttempts): ');
    String? input = stdin.readLineSync();
    attempts++;
    if (input == null) {
      print('Input tidak valid. Silakan coba lagi.');
      continue;
    }
    int? guess = int.tryParse(input);
    if (guess == null) {
      print('Mohon masukkan angka yang valid.');
      continue;
    }
    if (guess < targetNumber) {
      print('Terlalu rendah! Coba lagi.');
    } else if (guess > targetNumber) {
      print('Terlalu tinggi! Coba lagi.');
    } else {
      print('Selamat! Anda berhasil menebak angka $targetNumber dalam $attempts percobaan.');
      return;
    }
  }
  
  print('Maaf, Anda telah menggunakan semua $maxAttempts kesempatan.');
  print('Angka yang benar adalah $targetNumber.');
}
