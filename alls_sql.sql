UPDATE public.productos
	SET anio_construccion=2017
	WHERE pk_productos= 1;

UPDATE public.clientes
	SET telefono=3115678432
	WHERE pk_username='ninja';

DELETE FROM public.factura
	WHERE pk_factura=16;

SELECT 
nombre_fabricante, 
tipo_producto
FROM public.productos
ORDER BY nombre_fabricante ASC;

SELECT 
nombre_fabricante, 
anio_construccion, 
precio_unitario,
tipo_producto
FROM public.productos
WHERE tipo_producto='Bicicleta'
AND anio_construccion>2019
ORDER BY nombre_fabricante ASC;

SELECT
p.nombre_fabricante, 
prov.nombre
FROM productos as p

inner JOIN autonomia_moto_electrica as ame ON ame.fk_productos= p.pk_productos
inner JOIN proveedor_moto_electrica as prov ON ame.fk_proveedor_moto=prov.pk_proveedor_moto_electrica

WHERE prov.nombre='Auteco'

SELECT
   productos.nombre_fabricante,
   factura.fk_username

FROM factura 
INNER JOIN productos ON productos.pk_productos=factura.fk_productos
WHERE fk_username= 'lucky'
ORDER BY nombre_fabricante
;

SELECT
factura.fk_username AS alias,
clientes.nombre,
clientes.apellido,
productos.nombre_fabricante

FROM public.factura
inner join productos ON productos.pk_productos=factura.fk_productos
inner join clientes ON clientes.pk_username=factura.fk_username
WHERE productos.nombre_fabricante='Yeti'
ORDER BY fk_username ASC
;

SELECT count (tipo_producto) as conteo
FROM public.productos 
where tipo_producto='Bicicleta'
AND anio_construccion>2019