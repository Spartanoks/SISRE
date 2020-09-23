--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.0
-- Dumped by pg_dump version 9.5.5

-- Started on 2020-09-22 21:10:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = seguridad, pg_catalog;

--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 184
-- Name: Menus_id_seq; Type: SEQUENCE SET; Schema: seguridad; Owner: postgres
--

SELECT pg_catalog.setval('"Menus_id_seq"', 4, true);


--
-- TOC entry 2017 (class 0 OID 32836)
-- Dependencies: 187
-- Data for Name: acceso_usuario_menu; Type: TABLE DATA; Schema: seguridad; Owner: postgres
--

INSERT INTO acceso_usuario_menu (id, id_usuario, id_menu, created_at, updated_at) VALUES (1, 6, 1, NULL, NULL);


--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 186
-- Name: acceso_usuario_menu_id_seq; Type: SEQUENCE SET; Schema: seguridad; Owner: postgres
--

SELECT pg_catalog.setval('acceso_usuario_menu_id_seq', 4, true);


--
-- TOC entry 2007 (class 0 OID 24638)
-- Dependencies: 177
-- Data for Name: acceso_usuario_modulo; Type: TABLE DATA; Schema: seguridad; Owner: postgres
--

INSERT INTO acceso_usuario_modulo (id, id_usuario, id_modulo, created_at, updated_at) VALUES (1, 6, 1, NULL, NULL);
INSERT INTO acceso_usuario_modulo (id, id_usuario, id_modulo, created_at, updated_at) VALUES (2, 6, 2, NULL, NULL);


--
-- TOC entry 2049 (class 0 OID 0)
-- Dependencies: 176
-- Name: acceso_usuario_modulo_id_seq; Type: SEQUENCE SET; Schema: seguridad; Owner: postgres
--

SELECT pg_catalog.setval('acceso_usuario_modulo_id_seq', 2, true);


--
-- TOC entry 2015 (class 0 OID 32825)
-- Dependencies: 185
-- Data for Name: menus; Type: TABLE DATA; Schema: seguridad; Owner: postgres
--

INSERT INTO menus (id, descripcion, ruta) VALUES (1, 'Usuarios', 'usuarios');


--
-- TOC entry 2005 (class 0 OID 24627)
-- Dependencies: 175
-- Data for Name: modulos; Type: TABLE DATA; Schema: seguridad; Owner: postgres
--

INSERT INTO modulos (id, titulo, descripcion, created_at, updated_at, color, ruta) VALUES (1, 'Reclamos', 'Modulo encargado de la creacion de reclamos', '16:18:08-04:30', '16:18:08-04:30', '#E95D5D', 'reclamos');
INSERT INTO modulos (id, titulo, descripcion, created_at, updated_at, color, ruta) VALUES (2, 'Seguimientos', 'Modulo encargado del seguimiento de reclamos', '16:18:08-04:30', '16:18:08-04:30', '#77D568', 'seguimiento');


--
-- TOC entry 2050 (class 0 OID 0)
-- Dependencies: 174
-- Name: modulos_id_seq; Type: SEQUENCE SET; Schema: seguridad; Owner: postgres
--

SELECT pg_catalog.setval('modulos_id_seq', 1, false);


--
-- TOC entry 2003 (class 0 OID 16479)
-- Dependencies: 173
-- Data for Name: usuarios; Type: TABLE DATA; Schema: seguridad; Owner: postgres
--

INSERT INTO usuarios (id, nombre, apellido, cargo, cedula, estatus, created_at, updated_at, password, correo, sucursal, numero_oficina) VALUES (6, 'Kevin', 'Perez', 'especialista', 27750184, 1, '16:18:08-04:30', '16:18:08-04:30', '$2y$10$pj/zQW6SypZIjOfj.gd94.slacdfhB2R3Ae9/iNATpJZuHfjroY/e', 'mr.kv17.kp@gmail.com', 'el valle', '111');


--
-- TOC entry 2051 (class 0 OID 0)
-- Dependencies: 172
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: seguridad; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_seq', 7, true);


SET search_path = sisre, pg_catalog;

--
-- TOC entry 1999 (class 0 OID 16444)
-- Dependencies: 169
-- Data for Name: areas_resolutorias; Type: TABLE DATA; Schema: sisre; Owner: postgres
--



--
-- TOC entry 2052 (class 0 OID 0)
-- Dependencies: 168
-- Name: areas_resolutorias_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('areas_resolutorias_id_seq', 1, false);


--
-- TOC entry 1997 (class 0 OID 16428)
-- Dependencies: 167
-- Data for Name: estatus; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO estatus (id, descripcion) VALUES (1, 'ACTIVO');
INSERT INTO estatus (id, descripcion) VALUES (2, 'INACTIVO');
INSERT INTO estatus (id, descripcion) VALUES (3, 'CERRADO');


--
-- TOC entry 2053 (class 0 OID 0)
-- Dependencies: 166
-- Name: estatus_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('estatus_id_seq', 3, true);


--
-- TOC entry 1995 (class 0 OID 16399)
-- Dependencies: 165
-- Data for Name: requerimiento; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (7, 'sadasdas', 1, '["fotocopia_ci","corte_cuenta"]', 'pan', 12345, 12345, 12345, 4, 4, '04149689599', 'el valle', '1234567', NULL, 'banco', 7, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (8, 'sadasdas', 1, '["fotocopia_ci","corte_cuenta"]', 'pan', 12345, 12345, 12345, 4, 5, '04149689599', 'el valle', '1234567', NULL, 'banco', 8, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (12, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 6, '04149689599', 'el valle', '564867486', NULL, '564867486', 12, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (13, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 7, '04149689599', 'el valle', '564867486', NULL, '564867486', 13, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (14, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 18, '04149689599', 'el valle', '564867486', NULL, '564867486', 14, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (15, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 19, '04149689599', 'el valle', '564867486', NULL, '564867486', 15, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (16, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 21, '04149689599', 'el valle', '564867486', NULL, '564867486', 16, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (17, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 22, '04149689599', 'el valle', '564867486', NULL, '564867486', 17, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (18, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 23, '04149689599', 'el valle', '564867486', NULL, '564867486', 18, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-20 04:16:00', '2020-09-20 08:42:52', '2020-09-20 08:42:52', NULL, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (19, '564867486564867486564867486', 1, '["fotocopia_ci","corte_cuenta","comprobante"]', '564867486', 564867486, 564867486, 564867486, 5, 24, '04149689599', 'el valle', '564867486', NULL, '564867486', 19, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-20 04:16:00', '2020-09-20 08:45:39', '2020-09-20 08:45:39', false, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (20, 'adjajdfasdgadjasdasd', 1, '["fotocopia_ci","fotocopia_tarjeta","copia_libreta","comprobante"]', 'pan', 15744, 15958, 587598, 1, 25, '04149689599', 'el valle', '1215754448488', NULL, 'banco', 20, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-20 04:54:00', '2020-09-20 08:54:38', '2020-09-20 08:54:38', false, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (21, 'asdasdasdasd', 1, '["fotocopia_ci","fotocopia_tarjeta","copia_libreta","comprobante"]', '45464', 498487, NULL, 654684, 4, 26, '04149689599', 'el valle', '564189', NULL, '6541684', 21, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-20 05:08:00', '2020-09-20 09:08:43', '2020-09-20 09:08:43', false, NULL, NULL, NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (35, '4875', 1, '["pasaporte","otro"]', '4875', 4875, 4875, 4875, 4, 40, '04149689599', 'el valle', '4875', NULL, '4875', 35, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:40:00', '2020-09-22 15:41:07', '2020-09-22 15:41:07', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (36, '4875', 1, '["pasaporte","otro"]', '4875', 4875, 4875, 4875, 4, 41, '04149689599', 'el valle', '4875', NULL, '4875', 36, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:40:00', '2020-09-22 15:44:53', '2020-09-22 15:44:53', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (22, 'Cambiando descipcion', 1, '["fotocopia_ci","fotocopia_tarjeta","pasaporte","copia_libreta","comprobante"]', 'pan', 5578, NULL, 31248, 2, 27, '04149689599', 'Cambiando direccion', '1487', NULL, 'banco', 22, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-20 05:10:00', '2020-09-20 09:11:13', '2020-09-21 15:34:47', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (25, '12345678', 1, '["carta","fotocopia_ci","fotocopia_tarjeta","copia_libreta","comprobante","otro"]', 'pan', 12345678, 12345678, 12345678, 4, 30, '04149689599', 'el valle', '1234578', NULL, '12345678', 25, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:15:00', '2020-09-22 15:15:53', '2020-09-22 15:15:53', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (23, 'bvajsdjdv', 1, '["carta","fotocopia_ci","fotocopia_tarjeta","pasaporte","corte_cuenta","copia_libreta","comprobante","otro"]', 'pan', 5674, NULL, 1, 4, 28, '04149689599', 'el valle', '24158748', NULL, 'banco', 23, '27750184', 'mr.kv17.kp@gmail.com', 'debito', '2020-09-17 13:08:00', '2020-09-21 15:08:40', '2020-09-21 15:08:40', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (26, '12345678', 1, '["copia_libreta","otro"]', '12345678', 12345678, 12345678, 12345678, 4, 31, '04149689599', 'el valle', '12345678', NULL, '12345678', 26, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:17:00', '2020-09-22 15:17:29', '2020-09-22 15:17:29', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (27, '12345678', 1, '["copia_libreta","otro"]', '12345678', 12345678, 12345678, 12345678, 4, 32, '04149689599', 'el valle', '12345678', NULL, '12345678', 27, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:17:00', '2020-09-22 15:17:57', '2020-09-22 15:17:57', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (28, '123456789', 1, '["fotocopia_ci","pasaporte"]', '123456789', 123456789, 123456789, 123456789, 4, 33, '04149689599', 'el valle', '123456789', NULL, '123456789', 28, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-22 11:21:00', '2020-09-22 15:21:36', '2020-09-22 15:21:36', false, 'Alejandro', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (29, '312534', 1, '["otro"]', '312534', 123, 312534, 312534, 4, 34, '04149689599', 'el valle', '312534', NULL, '312534', 29, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-22 11:23:00', '2020-09-22 15:23:22', '2020-09-22 15:23:22', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (30, '3333633', 1, '["fotocopia_ci","pasaporte","otro"]', '3333633', 99999, 3333633, 3333633, 4, 35, '04149689599', 'el valle', '3333633', NULL, '3333633', 30, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:26:00', '2020-09-22 15:26:46', '2020-09-22 15:26:46', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (31, '454545', 1, '["fotocopia_ci","copia_libreta"]', '454545', 88888, 454545, 454545, 4, 36, '04149689599', 'el valle', '454545', NULL, '454545', 31, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:32:00', '2020-09-22 15:32:27', '2020-09-22 15:32:27', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (32, '212121', 1, '["pasaporte","copia_libreta"]', '212121', 212121, 212121, 212121, 4, 37, '04149689599', 'el valle', '212121', NULL, '212121', 32, '212121', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:34:00', '2020-09-22 15:34:08', '2020-09-22 15:34:08', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (33, '21213', 1, '["copia_libreta","otro"]', '21213', 21213, 21213, 21213, 4, 38, '04149689599', 'el valle', '21213', NULL, '21213', 33, '21213', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:36:00', '2020-09-22 15:36:17', '2020-09-22 15:36:17', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (37, '4875', 1, '["pasaporte","otro"]', '4875', 4875, 4875, 4875, 4, 42, '04149689599', 'el valle', '4875', NULL, '4875', 37, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:40:00', '2020-09-22 15:45:25', '2020-09-22 15:45:25', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (34, '21213', 1, '["copia_libreta","otro"]', '21213', 21213, 21213, 21213, 4, 39, '04149689599', 'el valle', '21213', NULL, '21213', 34, '21213', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:36:00', '2020-09-22 15:37:36', '2020-09-22 15:37:36', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (38, '4875', 1, '["pasaporte","otro"]', '4875', 4875, 4875, 4875, 4, 43, '04149689599', 'el valle', '4875', NULL, '4875', 38, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:40:00', '2020-09-22 15:46:01', '2020-09-22 15:46:01', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (39, '21311212', 1, '["fotocopia_ci"]', '21311212', 21311212, 21311212, 21311212, 4, 44, '04149689599', 'el valle', '21311212', NULL, '21311212', 39, '21311212', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:47:00', '2020-09-22 15:47:38', '2020-09-22 15:47:38', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (40, '21311212', 1, '["fotocopia_ci"]', '21311212', 21311212, 21311212, 21311212, 4, 45, '04149689599', 'el valle', '21311212', NULL, '21311212', 40, '21311212', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:47:00', '2020-09-22 15:47:56', '2020-09-22 15:47:56', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (41, '12121212121', 1, '["pasaporte","copia_libreta","comprobante"]', '121212', 121212, 121212, 121212, 4, 49, '04149689599', 'el valle', '121212', NULL, '121212', 41, '121212', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:53:00', '2020-09-22 15:55:10', '2020-09-22 15:55:10', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (42, '12121212121', 1, '["pasaporte","copia_libreta","comprobante"]', '121212', 121212, 121212, 121212, 4, 50, '04149689599', 'el valle', '121212', NULL, '121212', 42, '121212', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:53:00', '2020-09-22 15:55:36', '2020-09-22 15:55:36', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (43, '122121212', 1, '["carta","fotocopia_tarjeta","pasaporte"]', '122121212', 122121212, 122121212, 122121212, 4, 51, '04149689599', 'el valle', '122121212', NULL, '122121212', 43, '122121212', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 11:59:00', '2020-09-22 16:00:01', '2020-09-22 16:00:01', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (44, '212121', 1, '["copia_libreta","otro"]', '212121', 212121, 212121, 212121, 4, 52, '04149689599', 'el valle', '212121', NULL, '212121', 44, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 12:05:00', '2020-09-22 16:05:09', '2020-09-22 16:05:09', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (45, '3333633', 1, '["fotocopia_ci"]', '3333633', 3333633, 3333633, 3333633, 4, 53, '04149689599', 'el valle', '564687487', NULL, '3333633', 45, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 15:54:00', '2020-09-22 19:55:14', '2020-09-22 19:55:14', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (46, '1111111', 1, '["fotocopia_tarjeta","comprobante"]', '1111111', 1111111, 1111111, 1111111, 4, 54, '04149689599', 'el valle', '1111111', NULL, '1111111', 46, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 15:58:00', '2020-09-22 19:58:32', '2020-09-22 19:58:32', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (47, '123456', 1, '["fotocopia_tarjeta"]', '123456', 123456, 123456, 123456, 4, 55, '04149689599', 'el valle', '123456', NULL, '123456', 47, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 16:01:00', '2020-09-22 20:02:04', '2020-09-22 20:02:04', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (48, '1234567', 1, '["copia_libreta"]', '1234567', 1234567, 1234567, 1234567, 4, 56, '04149689599', 'el valle', '1234567', NULL, '1234567', 48, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 16:30:00', '2020-09-22 20:30:16', '2020-09-22 20:30:16', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (49, '1234567', 1, '["copia_libreta"]', '1234567', 1234567, 1234567, 1234567, 4, 57, '04149689599', 'el valle', '1234567', NULL, '1234567', 49, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 16:30:00', '2020-09-22 20:30:52', '2020-09-22 20:30:52', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (50, '122121', 1, '["fotocopia_ci","comprobante"]', '122121', 122121, 122121, 122121, 4, 58, '04149689599', 'el valle', '122121', NULL, '122121', 50, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 16:35:00', '2020-09-22 20:35:31', '2020-09-22 20:35:31', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (51, '321354', 1, '["comprobante"]', '321354', 321354, 321354, 321354, 4, 59, '04149689599', 'el valle', '321354', NULL, '321354', 51, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 18:16:00', '2020-09-22 22:16:47', '2020-09-22 22:16:47', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (52, '5454', 1, '["otro"]', '5454', 5454, 5454, 5454, 4, 60, '04149689599', 'el valle', '5454', NULL, '5454', 52, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 18:18:00', '2020-09-22 22:19:05', '2020-09-22 22:19:05', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (53, '1245454', 1, '["fotocopia_tarjeta"]', '1245454', 1245454, 1245454, 1245454, 4, 61, '04149689599', 'el valle', '1245454', NULL, '1245454', 53, '1245454', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 18:27:00', '2020-09-22 22:27:58', '2020-09-22 22:27:58', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (54, '212121', 1, '["copia_libreta"]', '212121', 212121, 212121, 212121, 4, 62, '04149689599', 'el valle', '212121', NULL, '212121', 54, '212121', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 18:35:00', '2020-09-22 22:35:38', '2020-09-22 22:35:38', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (55, '212121', 1, '["corte_cuenta","comprobante"]', '212121', 212121, 212121, 212121, 4, 63, '04149689599', 'el valle', '212121', NULL, '212121', 55, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-22 18:41:00', '2020-09-22 22:41:27', '2020-09-22 22:41:27', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (56, '1212', 1, '["fotocopia_tarjeta"]', '1212', 1212, 1212, 1212, 4, 64, '04149689599', 'el valle', '1212', NULL, '1212', 56, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 18:45:00', '2020-09-22 22:45:21', '2020-09-22 22:45:21', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (57, '878787', 1, '["fotocopia_ci"]', '878787', 878787, 878787, 878787, 4, 65, '04149689599', 'el valle', '878787', NULL, '878787', 57, '878787', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 18:47:00', '2020-09-22 22:48:03', '2020-09-22 22:48:03', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (58, '8888888', 1, '["copia_libreta"]', '8888888', 8888888, 8888888, 8888888, 4, 66, '04149689599', 'el valle', '8888888', NULL, '8888888', 58, '8888888', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-22 19:05:00', '2020-09-22 23:05:57', '2020-09-22 23:05:57', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (59, '99999', 1, '["fotocopia_tarjeta","comprobante"]', '99999', 99999, 99999, 99999, 5, 67, '04149689599', 'el valle', '99999', NULL, '99999', 59, '99999', 'mr.kv17.kp@gmail.com', 'Tarjeta de CREDITO', '2020-09-22 19:10:00', '2020-09-22 23:10:41', '2020-09-22 23:10:41', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (60, '96565', 1, '["fotocopia_ci","copia_libreta"]', '6555', 21656, 266556, 698948, 2, 68, '04149689599', 'el valle', '526888', NULL, '3666', 60, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 19:15:00', '2020-09-22 23:15:31', '2020-09-22 23:15:31', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (61, 'hgvujgh', 1, '["corte_cuenta","comprobante"]', '12345678', 21545, 5484, 656, 4, 69, '04149689599', 'el valle', '5545545', NULL, '212121', 61, '2574', 'mr.kv17.kp@gmail.com', 'debito', '2020-09-22 19:18:00', '2020-09-22 23:18:15', '2020-09-22 23:18:15', false, 'Kevin', 'Perez', NULL);
INSERT INTO requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) VALUES (62, '56464', 1, '["fotocopia_tarjeta","copia_libreta","comprobante"]', '56464', 56464, 56464, 56464, 2, 70, '04149689599', 'el valle', '56464', NULL, '56464', 62, '27750184', 'mr.kv17.kp@gmail.com', 'Tarjeta de DEBITO', '2020-09-22 19:47:00', '2020-09-22 23:47:23', '2020-09-22 23:47:23', false, 'Kevin', 'Perez', 6);


--
-- TOC entry 2054 (class 0 OID 0)
-- Dependencies: 164
-- Name: requerimiento_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('requerimiento_id_seq', 62, true);


--
-- TOC entry 2055 (class 0 OID 0)
-- Dependencies: 188
-- Name: requerimiento_numero_reclamo_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('requerimiento_numero_reclamo_seq', 62, true);


--
-- TOC entry 2001 (class 0 OID 16460)
-- Dependencies: 171
-- Data for Name: seguimiento; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (7, 22, 'prueba de comentario', '2020-09-21 16:53:05', '2020-09-21 16:53:05', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (8, 22, 'prueba de comentario 2', '2020-09-21 16:57:21', '2020-09-21 16:57:21', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (10, 22, 'prueba de actualiacion', '2020-09-21 17:01:12', '2020-09-21 17:01:12', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (11, 22, 'asd', '2020-09-21 17:11:44', '2020-09-21 17:11:44', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (12, 22, NULL, '2020-09-21 17:15:00', '2020-09-21 17:15:00', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (13, 22, 'asd', '2020-09-21 17:15:12', '2020-09-21 17:15:12', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (14, 22, 'asd', '2020-09-21 17:17:36', '2020-09-21 17:17:36', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (15, 22, 'asdasd', '2020-09-21 17:19:35', '2020-09-21 17:19:35', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (16, 22, 'asdasd', '2020-09-21 17:20:55', '2020-09-21 17:20:55', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (17, 22, 'asdasdasd', '2020-09-21 17:21:12', '2020-09-21 17:21:12', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (18, 22, 'aaaaa', '2020-09-21 17:22:30', '2020-09-21 17:22:30', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (19, 22, 'ddddd', '2020-09-21 17:23:05', '2020-09-21 17:23:05', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (20, 22, 'www', '2020-09-21 17:23:49', '2020-09-21 17:23:49', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (21, 22, 'sss', '2020-09-21 17:26:32', '2020-09-21 17:26:32', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (22, 22, 'xddas', '2020-09-21 17:26:59', '2020-09-21 17:26:59', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (23, 22, 'asdas', '2020-09-21 17:28:58', '2020-09-21 17:28:58', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (24, 22, 'uuu', '2020-09-21 17:30:02', '2020-09-21 17:30:02', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (25, 22, 'aasdasd', '2020-09-21 17:32:44', '2020-09-21 17:32:44', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (26, 22, 'adsdasd', '2020-09-21 17:33:18', '2020-09-21 17:33:18', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (27, 22, 'asdasd', '2020-09-21 17:34:10', '2020-09-21 17:34:10', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (28, 22, 'asdasdasd', '2020-09-21 17:34:59', '2020-09-21 17:34:59', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (29, 22, 'asdasd', '2020-09-21 17:36:20', '2020-09-21 17:36:20', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (30, 22, 'asdasdasd', '2020-09-21 17:39:48', '2020-09-21 17:39:48', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (31, 22, 'asdasd', '2020-09-21 17:40:12', '2020-09-21 17:40:12', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (32, 22, 'asdasd', '2020-09-21 17:41:27', '2020-09-21 17:41:27', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (33, 22, 'ASD', '2020-09-21 17:43:00', '2020-09-21 17:43:00', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (34, 22, 'ASD', '2020-09-21 17:43:24', '2020-09-21 17:43:24', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (35, 22, 'asd', '2020-09-21 17:43:37', '2020-09-21 17:43:37', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (36, 22, 'asd', '2020-09-21 17:43:57', '2020-09-21 17:43:57', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (37, 22, 'asdasd', '2020-09-21 17:49:39', '2020-09-21 17:49:39', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (38, 22, 'asdasd', '2020-09-21 17:50:07', '2020-09-21 17:50:07', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (39, 22, 'asdasd', '2020-09-21 17:53:56', '2020-09-21 17:53:56', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (40, 22, 'ahora si', '2020-09-21 17:57:51', '2020-09-21 17:57:51', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (41, 22, 'no funciono', '2020-09-21 17:58:58', '2020-09-21 17:58:58', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (42, 22, 'rezar', '2020-09-21 18:04:03', '2020-09-21 18:04:03', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (43, 22, 'omg si funciono', '2020-09-21 18:06:00', '2020-09-21 18:06:00', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (44, 22, 'orden', '2020-09-21 18:07:05', '2020-09-21 18:07:05', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (45, 22, '2', '2020-09-21 18:08:49', '2020-09-21 18:08:49', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (46, 22, 'oh si', '2020-09-21 18:09:46', '2020-09-21 18:09:46', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (47, 22, 'Oh si nena', '2020-09-21 18:11:14', '2020-09-21 18:11:14', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (48, 22, 'oh yea beby', '2020-09-21 18:11:46', '2020-09-21 18:11:46', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (49, 22, 'doom', '2020-09-21 18:12:20', '2020-09-21 18:12:20', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (50, 22, 'diim', '2020-09-21 18:13:05', '2020-09-21 18:13:05', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (51, 22, 'PRUEBA', '2020-09-21 18:33:46', '2020-09-21 18:33:46', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (52, 22, 'asdasdasdbaksd', '2020-09-21 18:35:05', '2020-09-21 18:35:05', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (53, 22, NULL, '2020-09-21 18:48:16', '2020-09-21 18:48:16', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (54, 22, 'abr abr', '2020-09-21 18:57:09', '2020-09-21 18:57:09', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (55, 22, 'samuel pato', '2020-09-21 19:01:11', '2020-09-21 19:01:11', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (56, 22, 'sgdasgdasd', '2020-09-22 10:15:20', '2020-09-22 10:15:20', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (57, 22, 'ahsdjasd', '2020-09-22 10:15:27', '2020-09-22 10:15:27', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (58, 22, 'asdasd', '2020-09-22 10:16:51', '2020-09-22 10:16:51', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (59, 22, 'papa', '2020-09-22 10:17:57', '2020-09-22 10:17:57', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (60, 22, 'adasd', '2020-09-22 10:18:18', '2020-09-22 10:18:18', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (61, 22, 'lll', '2020-09-22 10:20:11', '2020-09-22 10:20:11', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (62, 22, 'ppp', '2020-09-22 10:20:36', '2020-09-22 10:20:36', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (63, 22, 'aaa', '2020-09-22 10:21:01', '2020-09-22 10:21:01', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (64, 22, 'asdasd', '2020-09-22 10:21:20', '2020-09-22 10:21:20', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (65, 57, 'asdas', '2020-09-22 22:55:19', '2020-09-22 22:55:19', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (66, 57, 'hola', '2020-09-22 22:55:32', '2020-09-22 22:55:32', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (67, NULL, 'asdjasdasd', '2020-09-22 23:06:54', '2020-09-22 23:06:54', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (68, NULL, 'asdasdasd', '2020-09-22 23:07:15', '2020-09-22 23:07:15', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (69, NULL, 'asdasdasd', '2020-09-22 23:07:18', '2020-09-22 23:07:18', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (70, NULL, 'asdasdasd', '2020-09-22 23:07:26', '2020-09-22 23:07:26', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (71, NULL, NULL, '2020-09-22 23:07:27', '2020-09-22 23:07:27', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (72, NULL, NULL, '2020-09-22 23:07:28', '2020-09-22 23:07:28', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (73, NULL, NULL, '2020-09-22 23:07:28', '2020-09-22 23:07:28', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (74, NULL, NULL, '2020-09-22 23:07:28', '2020-09-22 23:07:28', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (75, 58, 'asdasd', '2020-09-22 23:09:14', '2020-09-22 23:09:14', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (76, 58, 'asdasd', '2020-09-22 23:09:16', '2020-09-22 23:09:16', 6);
INSERT INTO seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) VALUES (77, 62, 'asdasdas', '2020-09-23 00:51:15', '2020-09-23 00:51:15', 6);


--
-- TOC entry 2056 (class 0 OID 0)
-- Dependencies: 170
-- Name: seguimiento_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('seguimiento_id_seq', 77, true);


--
-- TOC entry 2009 (class 0 OID 32770)
-- Dependencies: 179
-- Data for Name: tarjeta; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO tarjeta (id, id_tipo_tarjeta, descripcion) VALUES (1, 1, 'MASTER CARD');
INSERT INTO tarjeta (id, id_tipo_tarjeta, descripcion) VALUES (2, 1, 'VISA');


--
-- TOC entry 2020 (class 0 OID 32869)
-- Dependencies: 190
-- Data for Name: tarjeta_cliente; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (1, 1, 1, '123456', NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (2, 1, 1, '123456', NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (3, 1, 1, '123456', NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (4, 1, 1, '123456', NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (5, 1, 1, '123456', NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (6, 2, 1, '564867486', NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (7, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (8, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (9, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (10, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (11, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (12, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (13, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (14, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (15, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (16, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (17, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (18, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (19, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (20, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (21, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (23, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (24, 2, 1, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (25, 1, 1, '1251452', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (26, NULL, 2, '646486748648', false);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (22, 2, 2, '564867486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (28, NULL, NULL, NULL, true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (27, 1, 2, '59957877', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (29, NULL, NULL, NULL, NULL);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (30, NULL, 2, '1212418', false);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (31, NULL, 2, '12345678', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (32, NULL, 2, '12345678', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (33, NULL, 1, '123456789', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (34, NULL, 1, '312534', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (35, NULL, 2, '3333633', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (36, NULL, 2, '454545', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (37, NULL, 2, '212121', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (38, NULL, 2, '21213', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (39, NULL, 2, '21213', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (40, NULL, 2, '4875', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (41, NULL, 2, '4875', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (42, NULL, 2, '4875', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (43, NULL, 2, '4875', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (44, NULL, 2, '21311212', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (45, NULL, 2, '21311212', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (46, NULL, 2, '12121212121', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (47, NULL, 2, '12121212121', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (48, NULL, 2, '12121212121', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (49, NULL, 2, '121212', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (50, NULL, 2, '121212', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (51, NULL, 2, '122121212', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (52, NULL, 2, '12345678', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (53, NULL, 2, '2416485486', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (54, NULL, 2, '1111111', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (55, NULL, 2, '123456', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (56, NULL, 2, '1234567', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (57, NULL, 2, '1234567', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (58, NULL, 2, '241548', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (59, NULL, 2, '321354', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (60, NULL, 2, '27750184', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (61, NULL, 2, '215441', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (62, NULL, 2, '1385488', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (63, NULL, 1, '212121', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (64, NULL, 2, '1212', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (65, NULL, 2, '878787', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (66, 2, 1, '8888888', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (67, 1, 1, '99999', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (68, NULL, 2, '526546', true);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (69, NULL, NULL, NULL, false);
INSERT INTO tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) VALUES (70, NULL, 2, '56464', false);


--
-- TOC entry 2057 (class 0 OID 0)
-- Dependencies: 189
-- Name: tarjeta_cliente_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('tarjeta_cliente_id_seq', 70, true);


--
-- TOC entry 2058 (class 0 OID 0)
-- Dependencies: 178
-- Name: tarjeta_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('tarjeta_id_seq', 2, true);


--
-- TOC entry 2013 (class 0 OID 32789)
-- Dependencies: 183
-- Data for Name: tipo_servicio; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO tipo_servicio (id, descripcion) VALUES (1, 'POS');
INSERT INTO tipo_servicio (id, descripcion) VALUES (2, 'ATM');
INSERT INTO tipo_servicio (id, descripcion) VALUES (3, 'IVR');
INSERT INTO tipo_servicio (id, descripcion) VALUES (4, 'INTERNET BANKING');
INSERT INTO tipo_servicio (id, descripcion) VALUES (5, 'CALL CENTER');


--
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 182
-- Name: tipo_servicio_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('tipo_servicio_id_seq', 5, true);


--
-- TOC entry 2011 (class 0 OID 32778)
-- Dependencies: 181
-- Data for Name: tipo_tarjeta; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

INSERT INTO tipo_tarjeta (id, descripcion) VALUES (1, 'CREDITO');
INSERT INTO tipo_tarjeta (id, descripcion) VALUES (2, 'DEBITO');


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 180
-- Name: tipo_tarjeta_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('tipo_tarjeta_id_seq', 2, true);


-- Completed on 2020-09-22 21:10:05

--
-- PostgreSQL database dump complete
--

