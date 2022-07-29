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