 SELECT 
 A.id_transaccion, 
  A.id_gestor as id_gestor_a,
  B.id_gestor as id_gestor_b,
  A.CELULAR as celular_a,
  B.CELULAR as celular_b,
  A.FECHA_HORA_INICIO as fecha_hora_inicio_a,
  B.FECHA_HORA_FINAL as fecha_hora_final_b,
  A.VALOR AS valor_a,
  B.VALOR as valor_b,
  A.CODIGO_ERROR as codigo_error_a,
  B.CODIGO_ERROR as codigo_error_b,
  A.FECHA_HORA_FINAL as fecha_hora_final_a,
  B.FECHA_HORA_FINAL as fecha_hora_final_b
 FROM trx_movistar as A
 full OUTER JOIN trx_recargas_movistar as B
 ON A.celular=B.celular and A.id_gestor= B.id_gestor and  A.fecha_hora_final::date =B.fecha_hora_final::date 
 WHERE B.fecha_hora_final Between '2022-06-24 00:00:00' and '2022-06-24 23:59:59'