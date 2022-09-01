/* 1 - Crie código Dart que, ao ler um número inteiro digitado pelo 
usuário em um campo numérico, imprima o fatorial desse número. */

import 'dart:io';

void main() {
  print('Digite um número que deseja fatorar: ');
  String? input = stdin.readLineSync();
  int numero = 0;
  if (input != '') {
    numero = int.parse(input!);
  }
  int fatorial = 1;
  for (int i = 1; i <= numero; i++) {
    fatorial = fatorial * i;
  }
  print('O fatorial de ${numero}! é igual a ${fatorial}.');
}
