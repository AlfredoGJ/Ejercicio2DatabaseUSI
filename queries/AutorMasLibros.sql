select "Nombres", "Apellido_paterno", "Apellido_materno", count("Autores"."Id") as Numero_Libros 
from "Autores" inner join "Libros"
on "Autores"."Id" = "Libros"."Autor_id"
group by "Autores"."Id" 
order by "numero_libros" desc limit 1