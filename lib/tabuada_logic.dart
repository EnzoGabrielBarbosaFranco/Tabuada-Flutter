// tabuada_logic.dart

class TabuadaLogic {
  List<String> calcularTabuada(int numero) {
    List<String> tabuada = [];
    for (int i = 1; i <= 10; i++) {
      int resultado = numero * i;
      tabuada.add("$numero x $i = $resultado");
    }
    return tabuada;
  }
}
