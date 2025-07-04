
-- 1. Admin
CREATE USER 'admin'@'%' IDENTIFIED BY 'adds-dev-diosmioyanopuedomas';
GRANT ALL PRIVILEGES ON banco_cl.* TO 'admin'@'%';


-- 2. Operador Pago
CREATE USER 'operador_pagos'@'%' IDENTIFIED BY 'historial123';
GRANT SELECT, INSERT, UPDATE ON banco_cl.Pagos TO 'operador_pagos'@'%';
GRANT SELECT ON banco_cl.Historial_de_pagos TO 'operador_pagos'@'%';

-- 3. Gerente
CREATE USER 'gerente'@'%' IDENTIFIED BY 'mrgerente123';
GRANT SELECT ON banco_cl.Clientes TO 'gerente'@'%';
GRANT SELECT ON banco_cl.Tarjetas TO 'gerente'@'%';
GRANT SELECT ON banco_cl.Cuotas_de_manejo TO 'gerente'@'%';
GRANT SELECT ON banco_cl.Pagos TO 'gerente'@'%';
GRANT SELECT ON banco_cl.Intereses_tarjetas TO 'gerente'@'%';
GRANT SELECT ON banco_cl.Movimientos_tarjeta TO 'gerente'@'%';
GRANT SELECT ON banco_cl.Cuotas_credito TO 'gerente'@'%';


-- 4. Consultor Tarjetas
CREATE USER 'consultor_tarjetas'@'%' IDENTIFIED BY 'holii123';
GRANT SELECT ON banco_cl.Tarjetas TO 'consultor_tarjetas'@'%';
GRANT SELECT ON banco_cl.Cuotas_de_manejo TO 'consultor_tarjetas'@'%';


-- 5. Auditor
CREATE USER 'auditor'@'%' IDENTIFIED BY 'auditor123';
GRANT SELECT ON banco_cl.Cuotas_de_manejo TO 'auditor'@'%';
GRANT SELECT ON banco_cl.Pagos TO 'auditor'@'%';
GRANT SELECT ON banco_cl.Intereses_tarjetas TO 'auditor'@'%';
GRANT SELECT ON banco_cl.Movimientos TO 'auditor'@'%';
GRANT SELECT ON banco_cl.Movimientos_tarjeta TO 'auditor'@'%';


FLUSH PRIVILEGES;


SHOW GRANTS FOR 'admin'@'%';
SHOW GRANTS FOR 'operador_pagos'@'%';
SHOW GRANTS FOR 'gerente'@'%';
SHOW GRANTS FOR 'consultor_tarjetas'@'%';
SHOW GRANTS FOR 'auditor'@'%';
