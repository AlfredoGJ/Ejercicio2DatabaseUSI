# Ejercicio 2 Bases de Datos

## Dependencias

* PostgreSQL  >16
* PgAdmin (se instala con el instalador de postgres)

## Forma de usar

* 1 Instalar postgres
    Descargar el instalador para Windoes de postgres desde https://www.postgresql.org/download/
  
* 2 Restaurar la base de datos
    Abrir PgAdmin y restaurar la base de datos proveida en este repositorio en el archivo `biblioteca.sql`.
    Pata esto se tiene que crear una nueva base de datos en el servidor, despues hacer clic izquierdo sobre esa base de datos y seleccionar la opcion `Restore`
  ![image](https://github.com/user-attachments/assets/824b211a-8abb-41f4-8f67-fd7065436bae)


  Despues, en el menu de restauracion seleccionar el formato como `Custom or tar` y seleccionar el archivo `biblioteca.sql`
  ![image](https://github.com/user-attachments/assets/d237cdc7-f780-4de4-ba4d-b3034fa02640)

  A continuacion dar click en Restore

  Esto restaurara las tablas de la base de datos y las poblara con datos para hacer las pruebas

* 3 Probar las consultas
    Dar click derecho sobre cualquier tabla de la base de datos y seleccionar la opcion `Query Tool`
    ![image](https://github.com/user-attachments/assets/eb043604-d94b-4956-9682-d6e579c610cc)
    Se abrira un editor de consultas donde se pueden probar las consultas proporcionadas en la carpeta `queries` de este repositorio (se sugiere copiar el texto)

![image](https://github.com/user-attachments/assets/ec5ae4a8-19bc-4eb3-b52f-4d9a79a69f15)



