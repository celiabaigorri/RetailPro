USE Ventas_Tech_DB;
GO

-- =============================================
-- CONSULTA 1: VISTA BASE DEL PROYECTO
-- Propósito: integrar ventas, clientes, productos
-- y categorías para disponer de una vista completa.
-- =============================================

SELECT
    v.fecha_venta,
    c.id_cliente,
    c.nombre AS nombre_cliente,
    c.ciudad,
    p.id_producto,
    p.nombre_producto,
    cat.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    (v.cantidad * v.precio_unitario) AS total_venta
FROM ventas AS v
INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente
INNER JOIN productos AS p
    ON v.id_producto = p.id_producto
INNER JOIN categorias AS cat
    ON p.id_categoria = cat.id_categoria;

-- Hallazgo: las 10 ventas quedan enriquecidas con
-- información del cliente, producto, categoría y ciudad.
-- =============================================
-- CONSULTA 2: CLIENTES SIN VENTAS
-- Propósito: identificar clientes sin compras
-- para que el equipo CRM pueda contactar con ellos.
-- =============================================

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes AS c
LEFT JOIN ventas AS v
    ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL;

-- Hallazgo: no aparecen clientes sin ventas.
-- Los 5 clientes registrados han realizado al menos una compra.


-- =============================================
-- CONSULTA 3: PRODUCTOS SIN VENTAS
-- Propósito: detectar productos sin movimiento
-- para que el equipo de producto pueda revisarlos.
-- =============================================

SELECT
    p.nombre_producto,
    cat.nombre_categoria,
    p.precio
FROM productos AS p
LEFT JOIN ventas AS v
    ON p.id_producto = v.id_producto
INNER JOIN categorias AS cat
    ON p.id_categoria = cat.id_categoria
WHERE v.id_producto IS NULL;

-- Hallazgo: no aparecen productos sin ventas.
-- Los 6 productos del catálogo tienen al menos una venta registrada.

-- =============================================
-- CONSULTA 4: CONSOLIDADO POR ORIGEN
-- Propósito: comparar la facturación de dos períodos.
-- =============================================

SELECT
    origen,
    SUM(total) AS total_origen
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Periodo 1' AS origen
    FROM ventas
    WHERE fecha_venta <= '2024-03-10'

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Periodo 2' AS origen
    FROM ventas
    WHERE fecha_venta > '2024-03-10'
) AS consolidado
GROUP BY origen
ORDER BY total_origen DESC;

-- Hallazgo: el Periodo 1 genera 3.620,00,
-- mientras que el Periodo 2 genera 2.824,00.
-- El primer período concentra una mayor facturación.