void main(List<String> arguments) {
  // // Langkah 1
  // var gifts = {
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1 // Awalnya ini adalah integer
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2 // Awalnya ini adalah integer
  // };

  // // Menampilkan Map awal
  // print(gifts);
  // print(nobleGases);

  // Langkah 3
  // var mhs1 = Map<String, String>();
  // // Menambahkan nilai ke gifts
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings'; // Mengubah nilai 'fifth' menjadi string

  // var mhs2 = Map<int, String>();
  // // Menambahkan nilai ke nobleGases
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon'; // Mengubah nilai 18 menjadi string

  // //Menampilkan Map setelah penambahan
  // print(gifts);
  // print(nobleGases);

  //Perubahan tambah nama nim update
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings', // Mengubah nilai 'fifth' menjadi string
    'name': 'Fardiyani Afroul Yasinta', // Menambahkan nama
    'NIM': '2241760030' // Menambahkan NIM
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon', // Mengubah nilai 18 menjadi string
    1: 'Fardiyani Afroul Yasinta', // Menambahkan nama
    3: '2241760030' // Menambahkan NIM
  };

  // Langkah 3
  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Fardiyani Afroul Yasinta'; // Menambahkan nama ke mhs1
  mhs1['NIM'] = '2241760030'; // Menambahkan NIM ke mhs1

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Fardiyani Afroul Yasinta'; // Menambahkan nama ke mhs2
  mhs2[2] = '2241760030'; // Menambahkan NIM ke mhs2

  // Menampilkan Map setelah penambahan
  print(gifts);
  print(nobleGases);
  print(mhs1); // Menampilkan mhs1
  print(mhs2); // Menampilkan mhs2
}