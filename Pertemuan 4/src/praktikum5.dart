void main() {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var record2 = (2, 10);
  
  // print(tukar(record2));

  // (String, int) mahasiswa;
  // mahasiswa = ('Muhammad Ega Rama Fernanda', 2141720143);
  // print(mahasiswa);

  var mahasiswa2 = ('Muhammad Ega Rama Fernanda', a: 2141720143, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
