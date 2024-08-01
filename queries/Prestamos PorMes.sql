select to_char("Fecha_prestamo", 'Month') as "Mes", count("Id")
from "Prestamos"
group by "Mes"
