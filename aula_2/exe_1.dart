import 'dart:io';

void main() {
  // Entrada de dados
  print('Digite o primeiro número:');
  num number_one = num.parse(stdin.readLineSync()!);
  print('Digite o segundo número:');
  num number_two = num.parse(stdin.readLineSync()!);

  // Processamento dos dados
  num sumResult = sum(number_one, number_two);
  num subResult = subtract(number_one, number_two);
  num multResult = multiply(number_one, number_two);
  num divResult = division(number_one, number_two);

  // Saída
  print('A soma dos números $number_one e $number_two é igual à $sumResult');
  print('A subtração dos números $number_one e $number_two é igual à $subResult');
  print('A multiplicação dos números $number_one e $number_two é igual à $multResult');
  print('A divisão dos números $number_one e $number_two é igual à $divResult');
}

num sum(num num1, num num2) {
  return num1 + num2;
}

num subtract(num num1, num num2) => num1 - num2;

num multiply(num num1, num num2) => num1 * num2;

num division(num num1, num num2) => num1 / num2;
