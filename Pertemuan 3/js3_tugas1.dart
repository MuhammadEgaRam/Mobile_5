import 'dart:io';

int mainCode() {
  int oilThatShouldBuy = 0;

  void beliBarang(String barang) {
    print("barang yang dibeli $oilThatShouldBuy botol $barang.");
    print("");
    stdout.write("Apakah ada telur? (iya/tidak): ");
    var adaTelurInput = stdin.readLineSync();
    var adaTelur = adaTelurInput == "iya"; // Mengubah input menjadi boolean
    if (adaTelur) {
      print("Kalau ada telur, ambil 6 $barang.");
    } else {
      print("Kalau tidak ada telur, ambil $oilThatShouldBuy $barang saja.");
    }
  }

  stdout.write('Masukkan angka apa saja untuk memulai program: ');
  var ubah = stdin.readLineSync();
  int input = int.parse(ubah!);

  do {
    stdout.write(
        "Menu:\n1. Masukkan jumlah minyak yang dibeli\n2. Beli telur\n3. Keluar\nPilih menu (1/2/3): ");
        print("");
    var menuInput = stdin.readLineSync();
    int menu = int.parse(menuInput!);
    print("");

    switch (menu) {
      case 1:
        stdout.write("Masukkan jumlah minyak: ");
        var jumlahBarangInput = stdin.readLineSync();
        oilThatShouldBuy = int.parse(jumlahBarangInput!);
        print("");
        break;
      case 2:
        beliBarang("minyak goreng");
        print("");
        break;
      case 3:
        print("Keluar dari program.");
        exit(input);
      default:
        print("Menu tidak valid. Silakan pilih menu yang benar.");
        break;
    }
  } while (input > 0 && input <= 3);

  return oilThatShouldBuy;
}

void main() {
  int oilAmount = mainCode();
  print("Jumlah minyak yang harus dibeli: $oilAmount botol.");
}
