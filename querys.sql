#--------------------------------------------------------------------------------------insertar marcas
INSERT INTO brand (nm_brand,dt_created,dt_update,user_update)
select DISTINCT t.marca,NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from 
(
select marca,NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from TIENDA_LIMPIEZA
union ALL select marca,NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from TIENDA_ABARROTES
union ALL select marca,NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from TIENDA_BOCADITOS
#union ALL select marca,NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from TIENDA_GALLETAS
) t	;                                                                                          

#--------------------------------------------------------------------------------------insertar categorias
INSERT INTO category (nm_category,dt_created,dt_update,user_update)
select distinct CATEGORIA,DT_CREATED,DT_UPDATE,'ADMIN' from (
select categoria,NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from TIENDA_LIMPIEZA
union ALL select 'ABARROTES',NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from dual
union ALL select 'BOCADITOS',NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from dual
union ALL select 'GALLETAS',NOW() DT_CREATED,NOW() DT_UPDATE,'ADMIN' from dual
) t;

#--------------------------------------------------------------------------------------insertar UNIDADES DE MEDIDA
#INSERT INTO category (nm_category,dt_created,dt_update,user_update)
select distinct CATEGORIA,DT_CREATED,DT_UPDATE,'ADMIN' from (
select unidadmedida unidad_medida from TIENDA_LIMPIEZA
union ALL select um unidad_medida from TIENDA_ABARROTES
union ALL select TAMANO unidad_medida from TIENDA_BOCADITOS
#union ALL select * from TIENDA_GALLETAS
) t;

select * from category
#use margaritabd
SET time_zone = 'UTC';
SET GLOBAL time_zone = 'UTC';
#SELECT @@global.time_zone, @@session.time_zone;
SET GLOBAL time_zone = 'America/Bogota';
SET time_zone = 'America/Bogota';
select * from TIENDA_GALLETAS;

SELECT now();
DELETE FROM brand WHERE ID_BRAND<1000000; #BORRAR REGISTROS DE TABLA