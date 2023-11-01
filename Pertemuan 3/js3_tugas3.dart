import 'dart:io';

void main() {
  int jumlahBaris = 10; // Ubah jumlah baris sesuai keinginan Anda
  int baris = jumlahBaris;

  do {
    for (int i = 0; i < baris; i++) {
      stdout.write('*');
    }
    print('');
    baris--;
  } while (baris > 0);
}
