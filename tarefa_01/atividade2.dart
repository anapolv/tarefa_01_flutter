/* 2 - Um caixa eletrônico opera com notas de 50, 10, 5 e 1. 
Como medida de segurança, a cada vez que o cliente deseja sacar dinheiro, 
o valor é dado de forma a fornecer um pequeno volume de notas 
(supondo que o cliente sempre esteja dentro do seu limite). 
Esta medida é feita para que a quantidade sacada não “faça muito volume” quando guardada pelo cliente. 

Por exemplo, se o cliente quiser sacar 166 não são dadas 166 notas de 1; 
não são dadas 33 notas de 5 e 1 nota de 1; 
são dadas 3 notas de 50, 1 nota de 10, 1 nota de 5 e 1 nota de 1. 
Assim, a resposta a ser impressa é 3 1 1 1. 
Faça um programa que leia a quantia (valor inteiro positivo) 
a ser sacada e imprima as quantidades de notas de 50, 10, 5 e 1 a serem fornecidas aos clientes.*/

import 'dart:io';

void main() {
  print('Digite quanto deseja sacar: ');
  String? input = stdin.readLineSync();
  int quantia = 0;
  if (input != '') {
    quantia = int.parse(input!);
  }

  int nota50 = quantia ~/ 50;
  int resta = quantia % 50;

  int nota10 = resta ~/ 10;
  resta = resta % 10;

  int nota5 = resta ~/ 5;

  int nota1 = resta % 5;

  print('Quantidade de notas de R\$50 a serem fornecidas: ${nota50}');
  print('Quantidade de notas de R\$10 a serem fornecidas: ${nota10}');
  print('Quantidade de notas de R\$5 a serem fornecidas: ${nota5}');
  print('Quantidade de notas de R\$1 a serem fornecidas: ${nota1}');
}
