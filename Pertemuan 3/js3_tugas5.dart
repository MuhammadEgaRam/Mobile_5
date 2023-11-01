import 'dart:io';

void main() {
  stdout.write('Masukkan tinggi segitiga ganjil: ');
  int tinggi = int.parse(stdin.readLineSync() ?? '0');

  if (tinggi.isOdd) {
    int maxBintang = (tinggi + 1) ~/ 2;

    int i = 1;
    while (i <= maxBintang) {
      int j = 1;
      while (j <= tinggi) {
        if (j >= maxBintang - i + 1 && j <= maxBintang + i - 1)
          stdout.write("*");
        else
          stdout.write(" ");
        j++;
      }
      print(" ");
      i++;
    }
  } else {
    print('Tinggi segitiga harus ganjil.');
  }
}