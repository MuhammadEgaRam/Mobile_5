import 'dart:io';

void main() {
  int jumlahBaris = 10; // Ubah jumlah baris sesuai keinginan Anda
  
  for (int i = 1; i <= jumlahBaris; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}
