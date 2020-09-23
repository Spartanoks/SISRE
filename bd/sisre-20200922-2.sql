--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.0
-- Dumped by pg_dump version 9.5.5

-- Started on 2020-09-22 21:10:54

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

COPY acceso_usuario_menu (id, id_usuario, id_menu, created_at, updated_at) FROM stdin;
1	6	1	\N	\N
\.


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

COPY acceso_usuario_modulo (id, id_usuario, id_modulo, created_at, updated_at) FROM stdin;
1	6	1	\N	\N
2	6	2	\N	\N
\.


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

COPY menus (id, descripcion, ruta) FROM stdin;
1	Usuarios	usuarios
\.


--
-- TOC entry 2005 (class 0 OID 24627)
-- Dependencies: 175
-- Data for Name: modulos; Type: TABLE DATA; Schema: seguridad; Owner: postgres
--

COPY modulos (id, titulo, descripcion, created_at, updated_at, color, ruta) FROM stdin;
1	Reclamos	Modulo encargado de la creacion de reclamos	16:18:08-04:30	16:18:08-04:30	#E95D5D	reclamos
2	Seguimientos	Modulo encargado del seguimiento de reclamos	16:18:08-04:30	16:18:08-04:30	#77D568	seguimiento
\.


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

COPY usuarios (id, nombre, apellido, cargo, cedula, estatus, created_at, updated_at, password, correo, sucursal, numero_oficina) FROM stdin;
6	Kevin	Perez	especialista	27750184	1	16:18:08-04:30	16:18:08-04:30	$2y$10$pj/zQW6SypZIjOfj.gd94.slacdfhB2R3Ae9/iNATpJZuHfjroY/e	mr.kv17.kp@gmail.com	el valle	111
\.


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

COPY areas_resolutorias (id, nombre, correo, created_at, updated_at, estatus) FROM stdin;
\.


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

COPY estatus (id, descripcion) FROM stdin;
1	ACTIVO
2	INACTIVO
3	CERRADO
\.


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

COPY requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) FROM stdin;
7	sadasdas	1	["fotocopia_ci","corte_cuenta"]	pan	12345	12345	12345	4	4	04149689599	el valle	1234567	\N	banco	7	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
8	sadasdas	1	["fotocopia_ci","corte_cuenta"]	pan	12345	12345	12345	4	5	04149689599	el valle	1234567	\N	banco	8	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
12	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	6	04149689599	el valle	564867486	\N	564867486	12	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
13	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	7	04149689599	el valle	564867486	\N	564867486	13	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
14	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	18	04149689599	el valle	564867486	\N	564867486	14	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
15	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	19	04149689599	el valle	564867486	\N	564867486	15	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
16	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	21	04149689599	el valle	564867486	\N	564867486	16	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
17	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	22	04149689599	el valle	564867486	\N	564867486	17	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	\N	\N	\N	\N	\N	\N	\N
18	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	23	04149689599	el valle	564867486	\N	564867486	18	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-20 04:16:00	2020-09-20 08:42:52	2020-09-20 08:42:52	\N	\N	\N	\N
19	564867486564867486564867486	1	["fotocopia_ci","corte_cuenta","comprobante"]	564867486	564867486	564867486	564867486	5	24	04149689599	el valle	564867486	\N	564867486	19	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-20 04:16:00	2020-09-20 08:45:39	2020-09-20 08:45:39	f	\N	\N	\N
20	adjajdfasdgadjasdasd	1	["fotocopia_ci","fotocopia_tarjeta","copia_libreta","comprobante"]	pan	15744	15958	587598	1	25	04149689599	el valle	1215754448488	\N	banco	20	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-20 04:54:00	2020-09-20 08:54:38	2020-09-20 08:54:38	f	\N	\N	\N
21	asdasdasdasd	1	["fotocopia_ci","fotocopia_tarjeta","copia_libreta","comprobante"]	45464	498487	\N	654684	4	26	04149689599	el valle	564189	\N	6541684	21	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-20 05:08:00	2020-09-20 09:08:43	2020-09-20 09:08:43	f	\N	\N	\N
35	4875	1	["pasaporte","otro"]	4875	4875	4875	4875	4	40	04149689599	el valle	4875	\N	4875	35	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:40:00	2020-09-22 15:41:07	2020-09-22 15:41:07	f	Kevin	Perez	\N
36	4875	1	["pasaporte","otro"]	4875	4875	4875	4875	4	41	04149689599	el valle	4875	\N	4875	36	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:40:00	2020-09-22 15:44:53	2020-09-22 15:44:53	f	Kevin	Perez	\N
22	Cambiando descipcion	1	["fotocopia_ci","fotocopia_tarjeta","pasaporte","copia_libreta","comprobante"]	pan	5578	\N	31248	2	27	04149689599	Cambiando direccion	1487	\N	banco	22	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-20 05:10:00	2020-09-20 09:11:13	2020-09-21 15:34:47	f	Kevin	Perez	\N
25	12345678	1	["carta","fotocopia_ci","fotocopia_tarjeta","copia_libreta","comprobante","otro"]	pan	12345678	12345678	12345678	4	30	04149689599	el valle	1234578	\N	12345678	25	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:15:00	2020-09-22 15:15:53	2020-09-22 15:15:53	f	Kevin	Perez	\N
23	bvajsdjdv	1	["carta","fotocopia_ci","fotocopia_tarjeta","pasaporte","corte_cuenta","copia_libreta","comprobante","otro"]	pan	5674	\N	1	4	28	04149689599	el valle	24158748	\N	banco	23	27750184	mr.kv17.kp@gmail.com	debito	2020-09-17 13:08:00	2020-09-21 15:08:40	2020-09-21 15:08:40	f	Kevin	Perez	\N
26	12345678	1	["copia_libreta","otro"]	12345678	12345678	12345678	12345678	4	31	04149689599	el valle	12345678	\N	12345678	26	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:17:00	2020-09-22 15:17:29	2020-09-22 15:17:29	f	Kevin	Perez	\N
27	12345678	1	["copia_libreta","otro"]	12345678	12345678	12345678	12345678	4	32	04149689599	el valle	12345678	\N	12345678	27	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:17:00	2020-09-22 15:17:57	2020-09-22 15:17:57	f	Kevin	Perez	\N
28	123456789	1	["fotocopia_ci","pasaporte"]	123456789	123456789	123456789	123456789	4	33	04149689599	el valle	123456789	\N	123456789	28	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-22 11:21:00	2020-09-22 15:21:36	2020-09-22 15:21:36	f	Alejandro	Perez	\N
29	312534	1	["otro"]	312534	123	312534	312534	4	34	04149689599	el valle	312534	\N	312534	29	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-22 11:23:00	2020-09-22 15:23:22	2020-09-22 15:23:22	f	Kevin	Perez	\N
30	3333633	1	["fotocopia_ci","pasaporte","otro"]	3333633	99999	3333633	3333633	4	35	04149689599	el valle	3333633	\N	3333633	30	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:26:00	2020-09-22 15:26:46	2020-09-22 15:26:46	f	Kevin	Perez	\N
31	454545	1	["fotocopia_ci","copia_libreta"]	454545	88888	454545	454545	4	36	04149689599	el valle	454545	\N	454545	31	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:32:00	2020-09-22 15:32:27	2020-09-22 15:32:27	f	Kevin	Perez	\N
32	212121	1	["pasaporte","copia_libreta"]	212121	212121	212121	212121	4	37	04149689599	el valle	212121	\N	212121	32	212121	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:34:00	2020-09-22 15:34:08	2020-09-22 15:34:08	f	Kevin	Perez	\N
33	21213	1	["copia_libreta","otro"]	21213	21213	21213	21213	4	38	04149689599	el valle	21213	\N	21213	33	21213	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:36:00	2020-09-22 15:36:17	2020-09-22 15:36:17	f	Kevin	Perez	\N
37	4875	1	["pasaporte","otro"]	4875	4875	4875	4875	4	42	04149689599	el valle	4875	\N	4875	37	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:40:00	2020-09-22 15:45:25	2020-09-22 15:45:25	f	Kevin	Perez	\N
34	21213	1	["copia_libreta","otro"]	21213	21213	21213	21213	4	39	04149689599	el valle	21213	\N	21213	34	21213	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:36:00	2020-09-22 15:37:36	2020-09-22 15:37:36	f	Kevin	Perez	\N
38	4875	1	["pasaporte","otro"]	4875	4875	4875	4875	4	43	04149689599	el valle	4875	\N	4875	38	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:40:00	2020-09-22 15:46:01	2020-09-22 15:46:01	f	Kevin	Perez	\N
39	21311212	1	["fotocopia_ci"]	21311212	21311212	21311212	21311212	4	44	04149689599	el valle	21311212	\N	21311212	39	21311212	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:47:00	2020-09-22 15:47:38	2020-09-22 15:47:38	f	Kevin	Perez	\N
40	21311212	1	["fotocopia_ci"]	21311212	21311212	21311212	21311212	4	45	04149689599	el valle	21311212	\N	21311212	40	21311212	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:47:00	2020-09-22 15:47:56	2020-09-22 15:47:56	f	Kevin	Perez	\N
41	12121212121	1	["pasaporte","copia_libreta","comprobante"]	121212	121212	121212	121212	4	49	04149689599	el valle	121212	\N	121212	41	121212	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:53:00	2020-09-22 15:55:10	2020-09-22 15:55:10	f	Kevin	Perez	\N
42	12121212121	1	["pasaporte","copia_libreta","comprobante"]	121212	121212	121212	121212	4	50	04149689599	el valle	121212	\N	121212	42	121212	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:53:00	2020-09-22 15:55:36	2020-09-22 15:55:36	f	Kevin	Perez	\N
43	122121212	1	["carta","fotocopia_tarjeta","pasaporte"]	122121212	122121212	122121212	122121212	4	51	04149689599	el valle	122121212	\N	122121212	43	122121212	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 11:59:00	2020-09-22 16:00:01	2020-09-22 16:00:01	f	Kevin	Perez	\N
44	212121	1	["copia_libreta","otro"]	212121	212121	212121	212121	4	52	04149689599	el valle	212121	\N	212121	44	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 12:05:00	2020-09-22 16:05:09	2020-09-22 16:05:09	f	Kevin	Perez	\N
45	3333633	1	["fotocopia_ci"]	3333633	3333633	3333633	3333633	4	53	04149689599	el valle	564687487	\N	3333633	45	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 15:54:00	2020-09-22 19:55:14	2020-09-22 19:55:14	f	Kevin	Perez	\N
46	1111111	1	["fotocopia_tarjeta","comprobante"]	1111111	1111111	1111111	1111111	4	54	04149689599	el valle	1111111	\N	1111111	46	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 15:58:00	2020-09-22 19:58:32	2020-09-22 19:58:32	f	Kevin	Perez	\N
47	123456	1	["fotocopia_tarjeta"]	123456	123456	123456	123456	4	55	04149689599	el valle	123456	\N	123456	47	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 16:01:00	2020-09-22 20:02:04	2020-09-22 20:02:04	f	Kevin	Perez	\N
48	1234567	1	["copia_libreta"]	1234567	1234567	1234567	1234567	4	56	04149689599	el valle	1234567	\N	1234567	48	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 16:30:00	2020-09-22 20:30:16	2020-09-22 20:30:16	f	Kevin	Perez	\N
49	1234567	1	["copia_libreta"]	1234567	1234567	1234567	1234567	4	57	04149689599	el valle	1234567	\N	1234567	49	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 16:30:00	2020-09-22 20:30:52	2020-09-22 20:30:52	f	Kevin	Perez	\N
50	122121	1	["fotocopia_ci","comprobante"]	122121	122121	122121	122121	4	58	04149689599	el valle	122121	\N	122121	50	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 16:35:00	2020-09-22 20:35:31	2020-09-22 20:35:31	f	Kevin	Perez	\N
51	321354	1	["comprobante"]	321354	321354	321354	321354	4	59	04149689599	el valle	321354	\N	321354	51	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 18:16:00	2020-09-22 22:16:47	2020-09-22 22:16:47	f	Kevin	Perez	\N
52	5454	1	["otro"]	5454	5454	5454	5454	4	60	04149689599	el valle	5454	\N	5454	52	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 18:18:00	2020-09-22 22:19:05	2020-09-22 22:19:05	f	Kevin	Perez	\N
53	1245454	1	["fotocopia_tarjeta"]	1245454	1245454	1245454	1245454	4	61	04149689599	el valle	1245454	\N	1245454	53	1245454	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 18:27:00	2020-09-22 22:27:58	2020-09-22 22:27:58	f	Kevin	Perez	\N
54	212121	1	["copia_libreta"]	212121	212121	212121	212121	4	62	04149689599	el valle	212121	\N	212121	54	212121	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 18:35:00	2020-09-22 22:35:38	2020-09-22 22:35:38	f	Kevin	Perez	\N
55	212121	1	["corte_cuenta","comprobante"]	212121	212121	212121	212121	4	63	04149689599	el valle	212121	\N	212121	55	27750184	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-22 18:41:00	2020-09-22 22:41:27	2020-09-22 22:41:27	f	Kevin	Perez	\N
56	1212	1	["fotocopia_tarjeta"]	1212	1212	1212	1212	4	64	04149689599	el valle	1212	\N	1212	56	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 18:45:00	2020-09-22 22:45:21	2020-09-22 22:45:21	f	Kevin	Perez	\N
57	878787	1	["fotocopia_ci"]	878787	878787	878787	878787	4	65	04149689599	el valle	878787	\N	878787	57	878787	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 18:47:00	2020-09-22 22:48:03	2020-09-22 22:48:03	f	Kevin	Perez	\N
58	8888888	1	["copia_libreta"]	8888888	8888888	8888888	8888888	4	66	04149689599	el valle	8888888	\N	8888888	58	8888888	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-22 19:05:00	2020-09-22 23:05:57	2020-09-22 23:05:57	f	Kevin	Perez	\N
59	99999	1	["fotocopia_tarjeta","comprobante"]	99999	99999	99999	99999	5	67	04149689599	el valle	99999	\N	99999	59	99999	mr.kv17.kp@gmail.com	Tarjeta de CREDITO	2020-09-22 19:10:00	2020-09-22 23:10:41	2020-09-22 23:10:41	f	Kevin	Perez	\N
60	96565	1	["fotocopia_ci","copia_libreta"]	6555	21656	266556	698948	2	68	04149689599	el valle	526888	\N	3666	60	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 19:15:00	2020-09-22 23:15:31	2020-09-22 23:15:31	f	Kevin	Perez	\N
61	hgvujgh	1	["corte_cuenta","comprobante"]	12345678	21545	5484	656	4	69	04149689599	el valle	5545545	\N	212121	61	2574	mr.kv17.kp@gmail.com	debito	2020-09-22 19:18:00	2020-09-22 23:18:15	2020-09-22 23:18:15	f	Kevin	Perez	\N
62	56464	1	["fotocopia_tarjeta","copia_libreta","comprobante"]	56464	56464	56464	56464	2	70	04149689599	el valle	56464	\N	56464	62	27750184	mr.kv17.kp@gmail.com	Tarjeta de DEBITO	2020-09-22 19:47:00	2020-09-22 23:47:23	2020-09-22 23:47:23	f	Kevin	Perez	6
\.


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

COPY seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) FROM stdin;
7	22	prueba de comentario	2020-09-21 16:53:05	2020-09-21 16:53:05	6
8	22	prueba de comentario 2	2020-09-21 16:57:21	2020-09-21 16:57:21	6
10	22	prueba de actualiacion	2020-09-21 17:01:12	2020-09-21 17:01:12	6
11	22	asd	2020-09-21 17:11:44	2020-09-21 17:11:44	6
12	22	\N	2020-09-21 17:15:00	2020-09-21 17:15:00	6
13	22	asd	2020-09-21 17:15:12	2020-09-21 17:15:12	6
14	22	asd	2020-09-21 17:17:36	2020-09-21 17:17:36	6
15	22	asdasd	2020-09-21 17:19:35	2020-09-21 17:19:35	6
16	22	asdasd	2020-09-21 17:20:55	2020-09-21 17:20:55	6
17	22	asdasdasd	2020-09-21 17:21:12	2020-09-21 17:21:12	6
18	22	aaaaa	2020-09-21 17:22:30	2020-09-21 17:22:30	6
19	22	ddddd	2020-09-21 17:23:05	2020-09-21 17:23:05	6
20	22	www	2020-09-21 17:23:49	2020-09-21 17:23:49	6
21	22	sss	2020-09-21 17:26:32	2020-09-21 17:26:32	6
22	22	xddas	2020-09-21 17:26:59	2020-09-21 17:26:59	6
23	22	asdas	2020-09-21 17:28:58	2020-09-21 17:28:58	6
24	22	uuu	2020-09-21 17:30:02	2020-09-21 17:30:02	6
25	22	aasdasd	2020-09-21 17:32:44	2020-09-21 17:32:44	6
26	22	adsdasd	2020-09-21 17:33:18	2020-09-21 17:33:18	6
27	22	asdasd	2020-09-21 17:34:10	2020-09-21 17:34:10	6
28	22	asdasdasd	2020-09-21 17:34:59	2020-09-21 17:34:59	6
29	22	asdasd	2020-09-21 17:36:20	2020-09-21 17:36:20	6
30	22	asdasdasd	2020-09-21 17:39:48	2020-09-21 17:39:48	6
31	22	asdasd	2020-09-21 17:40:12	2020-09-21 17:40:12	6
32	22	asdasd	2020-09-21 17:41:27	2020-09-21 17:41:27	6
33	22	ASD	2020-09-21 17:43:00	2020-09-21 17:43:00	6
34	22	ASD	2020-09-21 17:43:24	2020-09-21 17:43:24	6
35	22	asd	2020-09-21 17:43:37	2020-09-21 17:43:37	6
36	22	asd	2020-09-21 17:43:57	2020-09-21 17:43:57	6
37	22	asdasd	2020-09-21 17:49:39	2020-09-21 17:49:39	6
38	22	asdasd	2020-09-21 17:50:07	2020-09-21 17:50:07	6
39	22	asdasd	2020-09-21 17:53:56	2020-09-21 17:53:56	6
40	22	ahora si	2020-09-21 17:57:51	2020-09-21 17:57:51	6
41	22	no funciono	2020-09-21 17:58:58	2020-09-21 17:58:58	6
42	22	rezar	2020-09-21 18:04:03	2020-09-21 18:04:03	6
43	22	omg si funciono	2020-09-21 18:06:00	2020-09-21 18:06:00	6
44	22	orden	2020-09-21 18:07:05	2020-09-21 18:07:05	6
45	22	2	2020-09-21 18:08:49	2020-09-21 18:08:49	6
46	22	oh si	2020-09-21 18:09:46	2020-09-21 18:09:46	6
47	22	Oh si nena	2020-09-21 18:11:14	2020-09-21 18:11:14	6
48	22	oh yea beby	2020-09-21 18:11:46	2020-09-21 18:11:46	6
49	22	doom	2020-09-21 18:12:20	2020-09-21 18:12:20	6
50	22	diim	2020-09-21 18:13:05	2020-09-21 18:13:05	6
51	22	PRUEBA	2020-09-21 18:33:46	2020-09-21 18:33:46	6
52	22	asdasdasdbaksd	2020-09-21 18:35:05	2020-09-21 18:35:05	6
53	22	\N	2020-09-21 18:48:16	2020-09-21 18:48:16	6
54	22	abr abr	2020-09-21 18:57:09	2020-09-21 18:57:09	6
55	22	samuel pato	2020-09-21 19:01:11	2020-09-21 19:01:11	6
56	22	sgdasgdasd	2020-09-22 10:15:20	2020-09-22 10:15:20	6
57	22	ahsdjasd	2020-09-22 10:15:27	2020-09-22 10:15:27	6
58	22	asdasd	2020-09-22 10:16:51	2020-09-22 10:16:51	6
59	22	papa	2020-09-22 10:17:57	2020-09-22 10:17:57	6
60	22	adasd	2020-09-22 10:18:18	2020-09-22 10:18:18	6
61	22	lll	2020-09-22 10:20:11	2020-09-22 10:20:11	6
62	22	ppp	2020-09-22 10:20:36	2020-09-22 10:20:36	6
63	22	aaa	2020-09-22 10:21:01	2020-09-22 10:21:01	6
64	22	asdasd	2020-09-22 10:21:20	2020-09-22 10:21:20	6
65	57	asdas	2020-09-22 22:55:19	2020-09-22 22:55:19	6
66	57	hola	2020-09-22 22:55:32	2020-09-22 22:55:32	6
67	\N	asdjasdasd	2020-09-22 23:06:54	2020-09-22 23:06:54	6
68	\N	asdasdasd	2020-09-22 23:07:15	2020-09-22 23:07:15	6
69	\N	asdasdasd	2020-09-22 23:07:18	2020-09-22 23:07:18	6
70	\N	asdasdasd	2020-09-22 23:07:26	2020-09-22 23:07:26	6
71	\N	\N	2020-09-22 23:07:27	2020-09-22 23:07:27	6
72	\N	\N	2020-09-22 23:07:28	2020-09-22 23:07:28	6
73	\N	\N	2020-09-22 23:07:28	2020-09-22 23:07:28	6
74	\N	\N	2020-09-22 23:07:28	2020-09-22 23:07:28	6
75	58	asdasd	2020-09-22 23:09:14	2020-09-22 23:09:14	6
76	58	asdasd	2020-09-22 23:09:16	2020-09-22 23:09:16	6
77	62	asdasdas	2020-09-23 00:51:15	2020-09-23 00:51:15	6
\.


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

COPY tarjeta (id, id_tipo_tarjeta, descripcion) FROM stdin;
1	1	MASTER CARD
2	1	VISA
\.


--
-- TOC entry 2020 (class 0 OID 32869)
-- Dependencies: 190
-- Data for Name: tarjeta_cliente; Type: TABLE DATA; Schema: sisre; Owner: postgres
--

COPY tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) FROM stdin;
1	1	1	123456	\N
2	1	1	123456	\N
3	1	1	123456	\N
4	1	1	123456	\N
5	1	1	123456	\N
6	2	1	564867486	\N
7	2	1	564867486	t
8	2	1	564867486	t
9	2	1	564867486	t
10	2	1	564867486	t
11	2	1	564867486	t
12	2	1	564867486	t
13	2	1	564867486	t
14	2	1	564867486	t
15	2	1	564867486	t
16	2	1	564867486	t
17	2	1	564867486	t
18	2	1	564867486	t
19	2	1	564867486	t
20	2	1	564867486	t
21	2	1	564867486	t
23	2	1	564867486	t
24	2	1	564867486	t
25	1	1	1251452	t
26	\N	2	646486748648	f
22	2	2	564867486	t
28	\N	\N	\N	t
27	1	2	59957877	t
29	\N	\N	\N	\N
30	\N	2	1212418	f
31	\N	2	12345678	t
32	\N	2	12345678	t
33	\N	1	123456789	t
34	\N	1	312534	t
35	\N	2	3333633	t
36	\N	2	454545	t
37	\N	2	212121	t
38	\N	2	21213	t
39	\N	2	21213	t
40	\N	2	4875	t
41	\N	2	4875	t
42	\N	2	4875	t
43	\N	2	4875	t
44	\N	2	21311212	t
45	\N	2	21311212	t
46	\N	2	12121212121	t
47	\N	2	12121212121	t
48	\N	2	12121212121	t
49	\N	2	121212	t
50	\N	2	121212	t
51	\N	2	122121212	t
52	\N	2	12345678	t
53	\N	2	2416485486	t
54	\N	2	1111111	t
55	\N	2	123456	t
56	\N	2	1234567	t
57	\N	2	1234567	t
58	\N	2	241548	t
59	\N	2	321354	t
60	\N	2	27750184	t
61	\N	2	215441	t
62	\N	2	1385488	t
63	\N	1	212121	t
64	\N	2	1212	t
65	\N	2	878787	t
66	2	1	8888888	t
67	1	1	99999	t
68	\N	2	526546	t
69	\N	\N	\N	f
70	\N	2	56464	f
\.


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

COPY tipo_servicio (id, descripcion) FROM stdin;
1	POS
2	ATM
3	IVR
4	INTERNET BANKING
5	CALL CENTER
\.


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

COPY tipo_tarjeta (id, descripcion) FROM stdin;
1	CREDITO
2	DEBITO
\.


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 180
-- Name: tipo_tarjeta_id_seq; Type: SEQUENCE SET; Schema: sisre; Owner: postgres
--

SELECT pg_catalog.setval('tipo_tarjeta_id_seq', 2, true);


-- Completed on 2020-09-22 21:10:54

--
-- PostgreSQL database dump complete
--

