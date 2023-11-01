import 'dart:io';

main() {
  int umur1, umur2;

  stdout.write("Siapa kamu: ");
  var nama1 = stdin.readLineSync();
  print("");
  stdout.write("Masukkan umur: ");
  var ubah1 = stdin.readLineSync();
  umur1 = int.parse(ubah1!);
  print("Hello namaku $nama1!");
  print("Umurku $umur1!");

  print("");

  stdout.write("Siapa teman kamu: ");
  var nama2 = stdin.readLineSync();
  print("");
  stdout.write("Masukkan umur: ");
  var ubah2 = stdin.readLineSync();
  umur2 = int.parse(ubah2!);
  print("Hello namaku $nama2!");
  print("Umur temanku $umur2!");

  print("");

  print("Jika digabung: $nama1$nama2");

  print("");

  int hasil;

  // operator penjumlahan
  hasil = umur1 + umur2;
  print("Ega umur $umur1 + Billi umur $umur2 = $hasil");
}
