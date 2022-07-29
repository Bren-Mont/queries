SELECT count (tipo_producto) as conteo,
tipo_producto
FROM public.productos 
GROUP BY tipo_producto, anio_construccion
HAVING tipo_producto='Bicicleta'
AND anio_construccion>2019
;