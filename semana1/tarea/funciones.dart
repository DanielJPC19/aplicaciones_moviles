void main() {
  int number = 5;

  String result = switch(number) {
    1 => 'One',
    2 => 'Two',
    3 => 'Three',
    _ => 'Other number'
  };

  print(result); // Acá se imprime el resultado del switch, en este caso 'Other number'

  manejarNull();
  manejarCoalescenciaNula();
  manejoDeListas();
  manejarMapas();
  mapYFilter();
}

// -------------------------------------

void manejarNull() {
  print('\n--Manejo de Nulos--');
  String? variable = null;

  print(variable?.length); // Imprime null

  variable = "Hello";

  print(variable?.length); // Imprime 5
}

void manejarCoalescenciaNula(){
  print('\n--Manejo de Coalescencia--');
  String? variable = null;

  variable ??= "Hola";

  print(variable); // Reemplaza null por Hola

  String? otra = "Pedro";

  otra ??= "Algo";

  print(otra); // No cambia el valor de Pedro
}

void manejoDeListas() {
  print('\n--Manejo de Arreglos--');

  List<String> arreglo = ["manzana", "pera", "granadilla"];

  print(arreglo[0]);

  arreglo.add("banano");

  arreglo.addAll(["pitaya", "kiwi"]);

  print(arreglo.length);

  recorrerLista(arreglo);
}

void recorrerLista(List<String> arreglo) {
  print('\n--Recorrer Arreglos con un For--');

  for(int i = 0; i < arreglo.length; i++) {
    print(arreglo[i] + " ");
  }

  print('\n');

  for(String arr in arreglo) {
    print(arr + " ");
  }

  print('\n');

  arreglo.forEach((arr) {
    print(arr + " ");
  });

}

void manejarMapas() {
  print('\n--Manejo de Mapas--');

  Map<String, int> edades = {
    'Ana': 25,
    'Juan': 20,
    'Maria': 26
  };

  edades['Angel'] = 35;

  print(edades['Ana']);
  print(edades.length);

  recorrerMapas(edades);
}

void recorrerMapas(Map<String, int> edades) {
  print('\n--Recorrer Mapas--');

  for(String nombre in edades.keys) { // Las keys son el primer item en el mapa
    print('$nombre');
  }

  for(int edad in edades.values) {
    print('$edad');
  }

  edades.forEach((nombre, edad) {
    print('$nombre - $edad');
  });
  
}

void mapYFilter() {
  print('\n--Manejo de Map y Filter--');
  
  List<String> nombres = ['Ana', 'Juliana', 'Juan', 'Diego', 'Angela'];

  List<String> nombreMap = nombres.map((nombre) => "Nombre: $nombre").toList();

  print(nombreMap);

  List<String> nombreFilter = nombres.where((nombre) => nombre.contains('a')).toList();

  print(nombreFilter);
}