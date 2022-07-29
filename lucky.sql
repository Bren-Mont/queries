SELECT
   productos.nombre_fabricante,
   factura.fk_username

FROM factura 
INNER JOIN productos ON productos.pk_productos=factura.fk_productos
WHERE fk_username= 'lucky'
ORDER BY nombre_fabricante
;