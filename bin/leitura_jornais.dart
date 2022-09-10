/*
Gerar uma listagem para leitura semanal de jornais diários, a partir da primeira 
data informada (sábado).
----------------------------------
PROGRAMA: leitura_jornais.dart - v.0.1
PROGRAMADOR: Edilson Vilarinho
DATA: 29/08/2022
MANUTENÇÃO: 10/09/2022
  Incluir: www.startdevstudio.com
  Incluir: mes2digitos = mesFormatado.substring(3, 5);
----------------------------------

"Vamos ser referência juntos no Flutter, no Brasil e no Mundo"
 by Jacob Moura - co-CEO na F-Team | Flutterando founder
 Google Developer Expert em Flutter
*/

import 'dart:io';
import '/media/edilson/Dados1/_Edilson/Projetos/Estudo_Dart/Edilson_Vilarinho/funcoes/formataData.dart';

// *** atualizar release do programa
String releasePrograma = "*leitura_jornais.dart v.0.1.20220910";

void main(List<String> arguments) {
  print('Digite a data do sábado (AAAA-MM-DD):');
  String dataInicialStr = stdin.readLineSync()!;

  final dataInicial = DateTime.parse(dataInicialStr);
  String mesStr = dataInicial.toIso8601String();
  String mesSubStr = mesStr.substring(0, 10);
  String mesFormatado = formataData(mesSubStr);
  String mes2digitos = mesFormatado.substring(3, 5);

  if (dataInicial.weekday == 6) {
    int diasSemana = 7;
    print('+++ LEITURA DD/$mes2digitos +++');
    listaJornal(diasSemana, dataInicial, "JC");
    listaJornal(diasSemana, dataInicial, "ESTADÃO");
    listaJornal(diasSemana, dataInicial, "FOLHA DE SP");
    listaJornal(diasSemana, dataInicial, "O GLOBO");
    print(" ");
    print(releasePrograma);
    print("www.startdevstudio.com");
  } else {
    print("[ERRO] Favor informar uma data válida para o sábado");
  }
}

void listaJornal(int diasSemana, final dataInicial, String titulo) {
  print(' ');
  print(titulo);
  for (int i = 0; i < diasSemana; i++) {
    final dia = dataInicial.add(Duration(days: i));
    String diaStr = dia.toIso8601String();
    String diaSubStr = diaStr.substring(0, 10);
    String diaFormatado = formataData(diaSubStr);
    String diaMes = diaFormatado.substring(0, 5);
    switch (i) {
      case 0:
        {
          print('- [ ] Sab $diaMes');
          break;
        }
      case 1:
        {
          print('- [ ] Dom $diaMes');
          break;
        }
      case 2:
        {
          print('- [ ] 2a $diaMes');
          break;
        }
      case 3:
        {
          print('- [ ] 3a $diaMes');
          break;
        }
      case 4:
        {
          print('- [ ] 4a $diaMes');
          break;
        }
      case 5:
        {
          print('- [ ] 5a $diaMes');
          break;
        }
      case 6:
        {
          print('- [ ] 6a $diaMes');
          break;
        }
    }
  }
}
