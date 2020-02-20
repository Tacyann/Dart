import 'dart:io';

main() {
  print("Informe a palavra:");
  var p = stdin.readLineSync();
  var palavra = p.split('');

  var oculta = List(palavra.length);
  for (int i = 0; i < palavra.length; i++) {
    oculta[i] = '*';
  }
  print(oculta);

  int letraCerta = palavra.length;
  int tentativa = 6;

  while (letraCerta > 0 && tentativa > 0) {
    print("Digite uma letra: ");
    var letra = stdin.readLineSync();
    bool iscorrect = false;
    for (int i = 0; i < oculta.length; i++) {
      if (palavra[i] == letra) {
        oculta[i] = letra;
        letraCerta--;
        iscorrect = true;
      }
    }
    print(oculta);
    if (!iscorrect) {
      tentativa--;
    }
  }

  if (letraCerta == 0) {
    print("Parabéns. Ganhou!");
  } else {
    print("Perdeu. Tente novamente!");
  }
}
