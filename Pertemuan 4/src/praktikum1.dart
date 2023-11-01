void main() {
  // final list = [1,2,3];
  final list = List<Object?>.filled(5, null);

  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);
  print(list[1]);

  list[1] = "Muhammad Ega Rama Fernanda";
  list[2] = "2141720143";
  assert(list[1] == "Muhammad Ega Rama Fernanda");
  print(list[1]);
  print(list[2]);
}
