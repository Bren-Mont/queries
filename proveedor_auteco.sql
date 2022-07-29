SELECT
p.nombre_fabricante, 
prov.nombre
FROM productos as p

inner JOIN autonomia_moto_electrica as ame ON ame.fk_productos= p.pk_productos
inner JOIN proveedor_moto_electrica as prov ON ame.fk_proveedor_moto=prov.pk_proveedor_moto_electrica

WHERE prov.nombre='Auteco'