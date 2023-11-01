import 'dart:io';

void main() {
  stdout.write('Masukkan angka pertama: ');
  final firstNumber = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Masukkan operator (+, -, *, /): ');
  final operator = stdin.readLineSync();

  stdout.write('Masukkan angka kedua: ');
  final secondNumber = double.tryParse(stdin.readLineSync() ?? '');

  if (firstNumber == null || secondNumber == null) {
    print('Input yang dimasukkan tidak valid.');
    return;
  }

  switch (operator) {
    case '+':
      print('"Output: Hasilnya dari "$firstNumber $operator $secondNumber adalah ${firstNumber + secondNumber}');
      break;
    case '-':
      print('"Output: Hasilnya dari "$firstNumber $operator $secondNumber adalah ${firstNumber - secondNumber}');
      break;
    case '*':
      print('"Output: Hasilnya dari "$firstNumber $operator $secondNumber adalah ${firstNumber * secondNumber}');
      break;
    case '/':
      if (secondNumber == 0) {
        print('Pembagian dengan nol tidak diizinkan.');
      } else {
        print("Output: Hasilnya dari "'$firstNumber $operator $secondNumber adalah ${firstNumber / secondNumber}');
      }
      break;
    default:
      print('Operator tidak ditemukan');
  }
}
