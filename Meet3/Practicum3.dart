void main() {
  // Deklarasi variabel index
  for (int index = 10; index < 27; index++) {
    // Kondisi untuk menghentikan loop saat index == 21
    if (index == 21) {
      break;
    }
    // Kondisi untuk melanjutkan ke iterasi berikutnya jika index > 1 atau index < 7
    else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}
