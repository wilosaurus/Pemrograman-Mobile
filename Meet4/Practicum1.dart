void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final List<String?> list = List.filled(5, null); // List final dengan panjang 5 dan default value null
  
  // Isi elemen index ke-1 dan ke-2 dengan nama dan NIM
  list[1] = "Mochamad Wildani Azizi";
  list[2] = "2241720171";
  
  // Print elemen index ke-1 dan ke-2
  print('Nama: ${list[1]}');
  print('NIM: ${list[2]}');
}