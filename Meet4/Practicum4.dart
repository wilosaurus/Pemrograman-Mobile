void main() {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  List<int?> list3 = [1, 2, null];
  print(list3);

  // Menggabungkan list1 ke list3, mengabaikan nilai null
  var list4 = [0, ...list1];
  print(list4);
  print(list4.length);

  // Tambahkan variabel list berisi NIM Anda
  var nim = "2241720171";
  var list5 = [nim, ...list1];
  print(list5);

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Admin';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}