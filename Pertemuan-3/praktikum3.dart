void main(List<String> arguments) {
  // Langkah 1
  // for (int index = 10; index < 27; index++) {
  // print(index);
  // }

  // Langkah 2
  for (int index = 0; index < 30; index++){
  if (index == 21) break;
  else if (index > 1 && index < 7) continue;
  print(index);
  }
}