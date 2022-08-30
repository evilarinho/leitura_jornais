/*
Gerar uma listagem para leitura semanal de jornais diários, a partir da primeira 
data informada (sábado).
----------------------------------
PROGRAMA: leitura_jornais.dart - v.0.1
PROGRAMADOR: Edilson Vilarinho
DATA: 29/08/2022
MANUTENÇÃO: 
----------------------------------

"Vamos ser referência juntos no Flutter, no Brasil e no Mundo"
 by Jacob Moura - co-CEO na F-Team | Flutterando founder
 Google Developer Expert em Flutter
*/

import 'dart:io';

void main(List<String> arguments) {
  print('Digite a data do sábado (AAAA-MM-DD):');
  String dataInicialStr = stdin.readLineSync()!;

  final dataInicial = DateTime.parse(dataInicialStr);
  int diasSemana = 7;

  print('+++ LEITURA DD/MM +++');
  listaJornal(diasSemana, dataInicial, "JC");
  listaJornal(diasSemana, dataInicial, "ESTADÃO");
  listaJornal(diasSemana, dataInicial, "FOLHA DE SP");
  listaJornal(diasSemana, dataInicial, "O GLOBO");
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

// Função para formatar data em DD/MM/AAAA
String formataData(data) {
  assert(data != null);
  String dataFormatada = data.substring(8) +
      "/" +
      data.substring(5, 7) +
      "/" +
      data.substring(0, 4);
  return dataFormatada;
}
