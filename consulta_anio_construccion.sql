SELECT 
nombre_fabricante, 
anio_construccion, 
precio_unitario,
tipo_producto
FROM public.productos
WHERE tipo_producto='Bicicleta'
AND anio_construccion>2019
ORDER BY nombre_fabricante ASC;