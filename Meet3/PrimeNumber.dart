void main() {
  String nama = "Mochamad Wildani Azizi";  // Ganti dengan nama lengkap Anda
  String nim = "2241720171";    // Ganti dengan NIM Anda
  
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("$i adalah bilangan prima.");
      print("Nama: $nama, NIM: $nim\n");
    }
  }
}

// Fungsi untuk mengecek apakah sebuah bilangan adalah prima
bool isPrime(int number) {
  if (number < 2) return false;
  
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  
  return true;
}
