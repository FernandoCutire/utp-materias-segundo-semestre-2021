
use PANAMA_SOLIDARIO_SALUD
	  select d.DNI_RUC,c.codigo_cedis	
	  from donador d join donador_centro x on d.DNI_RUC=x.DNI_RUC
	                  Join centros_distribuci�n c on c.codigo_cedis = x.codigo_cedis

 select i.codigo_donaci�n, d.DNI_RUC
	   from donador d join donador_insumo x on d.DNI_RUC=x.DNI_RUC
	                  Join insumos i on i.codigo_donaci�n = x.codigo_donaci�n
		
 select r.DNI,t.matricula
	   from repartidor r join repartidor_transporte x on r.DNI=x.DNI
	                     Join  TRANSPORTE T on T.matricula=x.matricula
			 
 select i.codigo_donaci�n, im.codigo_IM, p.DNI, fecha_distribuci�n, Cantidad_llevada
	   from INSUMOS i join INSUMO_PERSONAL_IM x on i.codigo_donaci�n=x.codigo_donaci�n
	                  Join INSTALACION_MEDICA im on im.codigo_IM = x.codigo_IM
					  join PERSONAL p on p.DNI=x.DNI

select distinct tipo
    from INSUMOS 
	order by 1 
 
 select *
 from INSUMOS
  where cantidad between 100 and 2000

select* 
 from DONADOR
    where Nombre like '%C%'

select AVG(cantidad) AS 'PROMEDIO DE DONACIONES'
 from INSUMOS
    where tipo= 'protecci�n'

select i.codigo_donaci�n, d.DNI_RUC
	   from donador d join donador_insumo x on d.DNI_RUC=x.DNI_RUC
	                  Join insumos i on i.codigo_donaci�n = x.codigo_donaci�n
		where provincia = 'Panam�' and cantidad>100 

			 
 select i.codigo_donaci�n, im.codigo_IM, sum (Cantidad_llevada) AS 'SUMA DE CANTIDADES', AVG (cantidad_llevada) AS 'PROMEDIO DE CANTIDAD'
	   from INSUMOS i join INSUMO_PERSONAL_IM x on i.codigo_donaci�n=x.codigo_donaci�n
	                  Join INSTALACION_MEDICA im on im.codigo_IM = x.codigo_IM
					  join PERSONAL p on p.DNI=x.DNI
					  where im.codigo_IM =200 
            group by i.codigo_donaci�n, im.codigo_IM

select tipo, max(cantidad) AS 'MAXIMA CANTIDAD DE BATAS'
 from INSUMOS 
 group by tipo
 having max (cantidad)> 50 

 