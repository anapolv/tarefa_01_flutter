/* 3 - Crie um programa que permite o usuário digitar quantos números inteiros ele queira. 
Ao final, ao digitar -1, o programa deve exibir:

a) A quantidade de números digitados pelo usuário;
b) O maior número digitado;
c) O menor número digitado;
d) A média dos números digitados;*/

import 'dart:io';

void main() {
  int qtd;
  int maior;
  int menor;
  int soma;

  print('Digite um número: ');
  String? input = stdin.readLineSync();
  int contador = 1;
  if (input != '') {
    contador = int.parse(input!);
  }

  maior = contador;
  menor = contador;
  qtd = 1;
  soma = contador;

  while (true) {
    print("Digite um número: ");
    String? input = stdin.readLineSync();
    if (input != '') {
      contador = int.parse(input!);
    }

    if (contador == -1) break;

    qtd++;
    soma += contador;

    if (contador > maior) {
      maior = contador;
    }
    if (contador < menor) {
      menor = contador;
    }
  }

  double media = (soma / qtd);

  print("A quantidade de números digitados: ${qtd}");
  print("O maior número digitado: ${maior}");
  print("O menor número digitado: ${menor}");
  print("A média dos números digitados: ${media}");
}
