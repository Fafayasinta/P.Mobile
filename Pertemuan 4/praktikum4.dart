void main(List<String> arguments) {
 // Langkah 1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  // Langkah 3
  var list1 = [1, 2, null]; // Deklarasikan list1 dengan var
  print(list1);
  var list3 = [0, ...list1]; // Gunakan operator spread nullable
  print(list3); // Cetak list3
  print(list3.length);

  //Perubahan tambah nim update
  var nim = '2241760030'; // Menyimpan NIM Anda
  var listWithNim = [...list3, nim]; // Menambahkan NIM ke list3
  print('List dengan NIM: $listWithNim'); // Mencetak list dengan NIM

  // // Tambahkan variabel promoActive
  var promoActive = true;
  // // false;

  // langkaah 4
  // // Menggunakan kondisi dalam list dengan if
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // // Deklarasikan variabel login
  var login = 'Manager'; // Ubah nilainya untuk melihat hasil kondisi lain
  // var login = 'Customer';

  // Langkah 5
  // // Gunakan if untuk menambahkan item ke list berdasarkan kondisi
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print(nav2);

// Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1'); // Assertion untuk memastikan bahwa elemen di indeks 1 adalah '#1'
  print(listOfStrings); // Mencetak listOfStrings
}