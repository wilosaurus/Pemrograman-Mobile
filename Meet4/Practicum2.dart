void main() {
  // Set halogens yang sudah benar
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Mendeklarasikan set kosong dengan tipe data String
  var names1 = <String>{};
  Set<String> names2 = {}; // Ini juga benar, mendeklarasikan set kosong
  
  // Mendeklarasikan map kosong (names3) yang tidak digunakan
  var names3 = <String, String>{};

  // Menambahkan elemen nama dan NIM Anda ke dalam set menggunakan dua metode berbeda
  names1.add('Mochamad Wildani Azizi');
  names1.add('2241720171');
  
  names2.addAll({'Mochamad Wildani Azizi', '2241720171'});
  
  // Mencetak hasil
  print(names1);
  print(names2);
  print(names3);  // Mencetak map kosong
}