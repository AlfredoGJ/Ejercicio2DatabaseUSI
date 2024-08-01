select "Nombre", count("Libros"."Id") as "Numero_Libros"
from "Libros" inner join "Generos"
on "Libros"."Genero_id" = "Generos"."Id"
group by "Nombre"