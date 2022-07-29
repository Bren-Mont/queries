SELECT
	factura.pk_factura,
    productos.nombre_fabricante,
    clientes.pk_username,
	factura.fecha_compra
FROM factura 
INNER JOIN productos ON productos.pk_productos=factura.fk_productos
INNER JOIN clientes ON clientes.pk_username=factura.fk_username
ORDER BY factura.pk_factura ASC

;