Select "Titulo", "Estado" from 
"Prestamos" inner join "Libros"
on "Prestamos"."Id_libro" = "Libros"."Id"
where "Estado" = true