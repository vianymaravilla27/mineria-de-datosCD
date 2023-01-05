-- Práctica 1 Mineria de datos: Importacion

-- Incidentes viales durante el segundo semestre del 2020
select * 
from incidentes.incidentevial2dsem2020;

-- Indicar el número de registros del dataset en el manejador
select COUNT(folio) from incidentes.incidentevial2dsem2020;

-- Rango de los registros del dataset en el manejador
-- Fecha (todos los relacionados)
-- Latitud y Longitud
-- Año cierre y hora cierre (todos los relacionados al cierre)

-- Fecha de creación:

select MIN(fecha_creacion) as fecha_creacion_min,
MAX(fecha_creacion) as fecha_creacion_max
from incidentes.incidentevial2dsem2020;

-- Fecha de Cierre:

select MIN(fecha_cierre) as fecha_cierre_min,
MAX(fecha_cierre) as fecha_cierre_max
from incidentes.incidentevial2dsem2020;

-- Latitud

select MIN(latitud) as latitud_min, 
MAX(latitud) as latitud_max
from incidentes.incidentevial2dsem2020;

-- Longitud

select MIN(longitud) as longitud_min,
MAX(longitud) as longitud_max 
from incidentes.incidentevial2dsem2020;

-- Año de cierre y hora de cierre

select MIN(fecha_cierre) as fecha_cierre_min,
MAX(fecha_cierre) as fecha_cierre_max
from incidentes.incidentevial2dsem2020;

select MIN(año_cierre) as ano_cierre_min,
MAX(año_cierre) as ano_cierre_max
from incidentes.incidentevial2dsem2020;

select MIN(mes_cierre) as mes_cierre_min,
MAX(mes_cierre) as mes_cierre_max 
from incidentes.incidentevial2dsem2020;

select MIN(hora_cierre) as hora_cierre_min,
MAX(hora_cierre) as hora_cierre_max
from incidentes.incidentevial2dsem2020;

-- Valores que toman las siguientes columnas(rango, i.e, valores posibles no repetidos) 

-- incidente c4

select distinct incidente_c4
from incidentes.incidentevial2dsem2020;

-- Tipo entrada

select distinct tipo_entrada
from incidentes.incidentevial2dsem2020;

--  Clas con f alarma

select distinct clas_con_f_alarma
from incidentes.incidentevial2dsem2020;

-- Delegación

select distinct delegacion_inicio 
from incidentes.incidentevial2dsem2020;


-- Cantidad de  NULL encontrados en las 4 columnas 

-- incidente c4
-- tipo de entrada
-- clase con f alarma
-- delegacion de inicio
-- delegacion de cierre

-- Accidentes:

select incidente_c4, COUNT(*) as apariciones
from incidentes.incidentevial2dsem2020
where incidente_c4 like '%accidente%'
group by incidente_c4
order by apariciones DESC;

-- Sismo:

select incidente_c4, COUNT(*) as apariciones
from incidentes.incidentevial2dsem2020
where incidente_c4 like '%sismo%'
group by incidente_c4
order by apariciones DESC;

-- Lesiones:

select incidente_c4, COUNT(*) as apariciones
from incidentes.incidentevial2dsem2020
where incidente_c4 like '%lesionado%'
group by incidente_c4
order by apariciones DESC;

-- Atropellado: 

select incidente_c4, COUNT(*) as apariciones
from incidentes.incidentevial2dsem2020
where incidente_c4 like '%atropellado%'
group by incidente_c4
order by apariciones DESC;

-- Detenciones

select incidente_c4, COUNT(*) as apariciones
from incidentes.incidentevial2dsem2020
where incidente_c4 like '%detencion%'
group by incidente_c4
order by apariciones DESC;
