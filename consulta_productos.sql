SELECT
pk_productos,
p.nombre_fabricante, 
p.precio_unitario, 
p.anio_construccion, 
p.tipo_producto,
ame.duracion_carga,
prov.nombre
FROM productos as p


LEFT JOIN autonomia_moto_electrica as ame ON ame.fk_productos= p.pk_productos
LEFT JOIN proveedor_moto_electrica as prov ON ame.fk_proveedor_moto=prov.pk_proveedor_moto_electrica