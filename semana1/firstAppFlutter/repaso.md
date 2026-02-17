# Tarea

## Ejecución de un emulador desde la terminal

Primero, realizamos el listado de todos los emuladores creados, para esto, hacemos uso del comando:

```bash
emulator -list-avds
```

Y luego, después de ubicar un nombre de emulador, podremos ejecutar este emulador, haciendo uso de este comando:

```bash
emulator -avd <nombre_emulador>
```

## Buscar emuladores desde Flutter

Para encontrar los emuladores que vamos a usar, podemos buscar los dispositivos que se encuentran disponibles, haciendo uso del comando de flutter:

```bash
flutter devices
```

Y, para ejecutar nuestra aplicación en cierto emulador, lo podemos hacer de la siguiente manera:

```bash
flutter run -d <nombre del emulador>
```