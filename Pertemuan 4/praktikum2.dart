void main(List<String> arguments) {
  // Langkah 1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // Langkah 3
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  //Perubahan tambah nama nim update
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  // Deklarasi dua variabel Set
  var names1 = <String>{};
  Set<String> names2 = {};

  // Menambahkan elemen nama dan NIM menggunakan .add()
  names1.add('Fardiyani Afroul Yasinta');
  // Menambahkan elemen nama dan NIM menggunakan .addAll()
  names2.addAll({'Fardiyani Afroul Yasinta', '2241760030'});

  // Mencetak hasil
  print(halogens);
  print('names1: $names1');
  print('names2: $names2');
}
