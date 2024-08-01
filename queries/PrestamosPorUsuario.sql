select "Nombres", "Apellido_paterno", "Apellido_materno", count("Usuarios"."Id")
from "Prestamos" inner join "Usuarios" 
on "Prestamos"."Id_usuario" = "Usuarios"."Id"
group by "Usuarios"."Id"
