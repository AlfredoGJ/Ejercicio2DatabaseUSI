select extract('Year' from "Fecha_prestamo") as "Año", count("Id") as "Prestamos"
from "Prestamos"
group by "Año"