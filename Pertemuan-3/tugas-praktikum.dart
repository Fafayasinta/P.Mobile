void main() {
  String nama = "Fardiyani Afro'ul Yasinta";
  String NIM = "2241760030";

  print("Bilangan Prima dari 0 hingga 201:");

  for (int i = 2; i <= 201; i++) {
    int count = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        count++;
      }
    }
    if (count == 2) {
      print("$i adalah bilangan prima.");
      print("Nama: $nama");
      print("NIM: $NIM\n");
    }
  }
}


