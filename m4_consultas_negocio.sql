-- =============================================
-- CONSULTA 1: RESUMEN EJECUTIVO MENSUAL
-- =============================================

SELECT
    MONTH(fecha_venta) AS mes,
    SUM(cantidad * precio_unitario) AS total_facturado,
    COUNT(*) AS cantidad_pedidos,
    AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta);

-- =============================================
-- CONSULTA 2: RANKING DE PRODUCTOS
-- =============================================

SELECT TOP 5
    id_producto,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY id_producto
ORDER BY total_facturado DESC;

-- =============================================
-- CONSULTA 3: CLIENTES RECURRENTES
-- =============================================

SELECT
    id_cliente,
    COUNT(*) AS cantidad_pedidos,
    SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY cantidad_pedidos DESC;

-- =============================================
-- CONSULTA 4: PRODUCTOS POR ENCIMA/POR DEBAJO
-- DEL PROMEDIO DE FACTURACIÓN
-- =============================================

WITH facturacion_productos AS (
    SELECT
        id_producto,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY id_producto
)

SELECT
    id_producto,
    total_facturado,
    CASE
        WHEN total_facturado > (
            SELECT AVG(total_facturado)
            FROM facturacion_productos
        )
        THEN 'Por encima'
        ELSE 'Por debajo'
    END AS comparacion_promedio
FROM facturacion_productos
ORDER BY total_facturado DESC;

-- =============================================
-- HALLAZGOS DEL ANÁLISIS
-- =============================================

-- 1. El producto 1 es el que mayor facturación genera,
-- con un total de 3600,00.

-- 2. El cliente 1 es el que más ha gastado,
-- con un total de 2640,00.

-- 3. Los cinco productos presentan ventas registradas,
-- pero sus niveles de facturación son diferentes.