void main() {
  var record = ('first', a: 2, b: true, 'last');

  print(record);

  Map<String, int> record2 = {'a': 1, 'b': 2};

  void tukar(Map<String, int> map, String key1, String key2) {
    var temp = map[key1]!;
    map[key1] = map[key2]!;
    map[key2] = temp;
  }

  print('Sebelum ditukar: $record2');
  tukar(record2, 'a', 'b');
  print('Sesudah ditukar: $record2');

  // Menggunakan List untuk merepresentasikan record mahasiswa
  List<dynamic> mahasiswa = ['Mochamad Wildani Azizi', 2241720171];

  // Mengakses nilai
  print('Nama : ${mahasiswa[0]}');
  print('NIM  : ${mahasiswa[1]}');

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}