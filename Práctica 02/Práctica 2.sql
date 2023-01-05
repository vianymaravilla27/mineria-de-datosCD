use incidentes

-- Año cierre valores nulos
select incidentes.a_o_cierre
from incidentevial2dsem2020 as incidentes
where incidentes.a_o_cierre Is NULL ;

-- Clas con f alarma valores nulos
select incidentes.clas_con_f_alarma
from incidentevial2dsem2020 as incidentes
where incidentes.clas_con_f_alarma Is NULL;

-- Código de cierre valores nulos
select incidentes.codigo_cierre
from incidentevial2dsem2020 as incidentes
where incidentes.codigo_cierre Is NULL;

-- Delegación cierre valores nulos
select incidentes.delegacion_cierre
from incidentevial2dsem2020 as incidentes
where incidentes.delegacion_cierre Is NULL;

-- Delegación inicio valores nulos
select incidentes.delegacion_inicio
from incidentevial2dsem2020 as incidentes
where incidentes.delegacion_inicio Is NULL;

-- Día semana valores nulos 
select incidentes.dia_semana
from incidentevial2dsem2020 as incidentes
where incidentes.dia_semana Is NULL;

-- Fecha cierre valores nulos
select incidentes.fecha_cierre
from incidentevial2dsem2020 as incidentes
where incidentes.fecha_cierre Is NULL;

-- Fecha creacion valores nulos
select incidentes.fecha_creacion
from incidentevial2dsem2020 as incidentes
where incidentes.fecha_creacion Is NULL;

-- Folio valores nulos
select incidentes.folio
from incidentevial2dsem2020 as incidentes
where incidentes.folio Is NULL;

-- Geopoint valors nulos
select incidentes.geopoint
from incidentevial2dsem2020 as incidentes
where incidentes.geopoint Is NULL;

-- Hora cierre valores nulos
select incidentes.hora_cierre
from incidentevial2dsem2020 as incidentes
where incidentes.hora_cierre Is NULL;

-- Hora creación valores nulos
select incidentes.hora_creacion
from incidentevial2dsem2020 as incidentes
where incidentes.hora_creacion Is NULL;

-- Inicdente c4 valores nulos
select incidentes.incidente_c4
from incidentevial2dsem2020 as incidentes
where incidentes.incidente_c4 Is NULL;

-- Latitud valores nulos
select incidentes.latitud
from incidentevial2dsem2020 as incidentes
where incidentes.latitud Is NULL;

-- Longitud valores nulos
select incidentes.longitud
from incidentevial2dsem2020 as incidentes
where incidentes.longitud Is NULL;

-- Mes valores nulos
select incidentes.mes
from incidentevial2dsem2020 as incidentes
where incidentes.mes Is NULL;

-- Mes cierre valores nulos
select incidentes.mes_cierre
from incidentevial2dsem2020 as incidentes
where incidentes.mes_cierre Is NULL;

-- Tipo entrada valores nulos
select incidentes.tipo_entrada
from incidentevial2dsem2020 as incidentes
where incidentes.tipo_entrada Is NULL;

------------------------------------------------------------------

select * from incidentevial2dsem2020;
-- Borrar datos nulos de la tabla delegacion cierre 
delete from incidentevial2dsem2020 
where hora_creacion IS NULL;

-- borrar datos nulos de la tabla delegación cierre
delete from incidentevial2dsem2020 
where delegacion_cierre IS NULL;

-- Borrar datos nulos de la tabla hora cierre
delete from incidentevial2dsem2020 
where hora_cierre IS NULL;


select * from incidentevial2dsem2020
