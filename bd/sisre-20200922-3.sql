PGDMP                         x            sr    9.1.0    9.5.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0    Menus_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('"Menus_id_seq"', 4, true);
         	   seguridad       postgres    false    184            �          0    32836    acceso_usuario_menu 
   TABLE DATA               W   COPY acceso_usuario_menu (id, id_usuario, id_menu, created_at, updated_at) FROM stdin;
 	   seguridad       postgres    false    187   �                   0    0    acceso_usuario_menu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acceso_usuario_menu_id_seq', 4, true);
         	   seguridad       postgres    false    186            �          0    24638    acceso_usuario_modulo 
   TABLE DATA               [   COPY acceso_usuario_modulo (id, id_usuario, id_modulo, created_at, updated_at) FROM stdin;
 	   seguridad       postgres    false    177                     0    0    acceso_usuario_modulo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acceso_usuario_modulo_id_seq', 2, true);
         	   seguridad       postgres    false    176            �          0    32825    menus 
   TABLE DATA               /   COPY menus (id, descripcion, ruta) FROM stdin;
 	   seguridad       postgres    false    185   B       �          0    24627    modulos 
   TABLE DATA               X   COPY modulos (id, titulo, descripcion, created_at, updated_at, color, ruta) FROM stdin;
 	   seguridad       postgres    false    175   m                  0    0    modulos_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('modulos_id_seq', 1, false);
         	   seguridad       postgres    false    174            �          0    16479    usuarios 
   TABLE DATA               �   COPY usuarios (id, nombre, apellido, cargo, cedula, estatus, created_at, updated_at, password, correo, sucursal, numero_oficina) FROM stdin;
 	   seguridad       postgres    false    173   �                  0    0    usuarios_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('usuarios_id_seq', 7, true);
         	   seguridad       postgres    false    172            �          0    16444    areas_resolutorias 
   TABLE DATA               Z   COPY areas_resolutorias (id, nombre, correo, created_at, updated_at, estatus) FROM stdin;
    sisre       postgres    false    169   �                  0    0    areas_resolutorias_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('areas_resolutorias_id_seq', 1, false);
            sisre       postgres    false    168            �          0    16428    estatus 
   TABLE DATA               +   COPY estatus (id, descripcion) FROM stdin;
    sisre       postgres    false    167   �                  0    0    estatus_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('estatus_id_seq', 3, true);
            sisre       postgres    false    166            �          0    16399    requerimiento 
   TABLE DATA               x  COPY requerimiento (id, descripcion, estatus, documentos_entregados, establecimiento, monto, numero_atm, numero_transaccion, id_tipo_servicio, id_tarjeta, telefono_cliente, direccion_cliente, cuenta_afectada_1, cuenta_afectada_2, institucion_recaudo, numero_reclamo, cedula, correo, forma_pago, fecha, created_at, updated_at, editar, nombre, apellido, id_usuario) FROM stdin;
    sisre       postgres    false    165   �                  0    0    requerimiento_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('requerimiento_id_seq', 62, true);
            sisre       postgres    false    164                       0    0     requerimiento_numero_reclamo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('requerimiento_numero_reclamo_seq', 62, true);
            sisre       postgres    false    188            �          0    16460    seguimiento 
   TABLE DATA               h   COPY seguimiento (id, id_reclamo, ultima_actualizacion, created_at, updated_at, id_usuario) FROM stdin;
    sisre       postgres    false    171   k"                  0    0    seguimiento_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('seguimiento_id_seq', 77, true);
            sisre       postgres    false    170            �          0    32770    tarjeta 
   TABLE DATA               <   COPY tarjeta (id, id_tipo_tarjeta, descripcion) FROM stdin;
    sisre       postgres    false    179   �%       �          0    32869    tarjeta_cliente 
   TABLE DATA               i   COPY tarjeta_cliente (id, id_tarjeta, id_tipo_tarjeta, numero_tarjeta, tarjeta_bin_perforar) FROM stdin;
    sisre       postgres    false    190   *&       	           0    0    tarjeta_cliente_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tarjeta_cliente_id_seq', 70, true);
            sisre       postgres    false    189            
           0    0    tarjeta_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('tarjeta_id_seq', 2, true);
            sisre       postgres    false    178            �          0    32789    tipo_servicio 
   TABLE DATA               1   COPY tipo_servicio (id, descripcion) FROM stdin;
    sisre       postgres    false    183   �'                  0    0    tipo_servicio_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tipo_servicio_id_seq', 5, true);
            sisre       postgres    false    182            �          0    32778    tipo_tarjeta 
   TABLE DATA               0   COPY tipo_tarjeta (id, descripcion) FROM stdin;
    sisre       postgres    false    181   �'                  0    0    tipo_tarjeta_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('tipo_tarjeta_id_seq', 2, true);
            sisre       postgres    false    180            �      x�3�4�4��"�=... ��      �      x�3�4�4��".# �ʎ���� J�      �      x�3�-.M,��/�,�2�b���� n��      �   v   x�3�JM�I��/���O)��WH�KN,JOL�WHIU�ITH.JML���q�`jͬ-�,tL��йʮ��.�.�0�\F���饙���y%�m�Q(F� �*ssS3N$�\1z\\\ �'@�      �   �   x�]ǻ�0 ���+X-���&q��N�ĥ��i@I���=�	aG�z��z��
%���(Z�@�0�8�\�/��x��±���n�e��F*��2	�`dQVϕw�3J\�Ϯv�֕K���1�]֭T�]df�4� ك3�~��/�      �      x������ � �      �   %   x�3�tt���2���2�9�]��]��b���� �#�      �   m  x�ŚKo�F���Oa���'��IE��(rK���dG�m��C?}g����J"���C.����>fv�T��������n���r��)�.7W�\-��������i_^-�s�$�����~#M���X?\����Kŗ��M��܊T�4��̌x�]�����_�����r�(>������\�/��������k��Ev���'>tv���JXg2��?Z8
���ϻ-<�~X�GJ��	<_�9Թx���x��x���l�9�}+�|�=�{#`%��s�o���+�@Wz#`=xBPR�J�%�;�\&���H���FV�Z�G�[�(�f�|���B�vۺH%�\ݗ��[HR�ʊ�M{���;�67�5�0������l��<��[E30�Ƙ�dY���C��5�?��պ�����9�b�q���@�7��*� �,�m�Nvɇ��=b�x$G�hV�xDCF
��=�\����e q��m��7�$<�?�����oȤ.�,L�c�FI�j������I��ޭ��dn
Y$���F���ɠYkV#d�ޗ�7��i��{�,7��������u��om�����@��:�٭��s�������߸eB7xQv�%�]��i��s�̻hY�<�̎ߴ�f��o@
F�Hw�&�wk5�׀Hۂ?Ҷ*�:K�����eu�z�~���	N0�!8~F��H�=�R�ͥV��~۸@��RM߆p��5�*7hW�@u�it�Hd�iLz�d� $S�����Y����$���<���{��J������x�v�E��`	\I�[��r��GT�%�@���h�⷇�=�m�9���wC��Z���a�H��%5'}��4C��X�&	T��j�`7�����9��3!=X {}шܘm��1�0�f�F�%���X~:����2ß���a��gR��RUI��}=�V45�ҕF��YH�%��7��; �,� ����p�Z�jW���Cwe@� ��|`Ķ
��6�$�5J�NI�#Q���ύ>l��Ѳ%3��.�z9�;s��Kid�4J�M��H���݈�yz��d5JaMj������܁�F�hc�k1��w�F��J���HSi����đ��w�xNb;l��F�����=O����*~��K�5���ڴ~�i�L�dq
�j��y�Fg�C���2�U� ��J��N���{��x":WT]g4t�h�K�Kp�}�F]b�ց�O�l$<��ʌx�ȰB*I�O��rV��6>yX���+����kiw�`�-��B:h��ن�(����vW�z=����?�IG���]�[����
�X��׫ �Es����A�)�0��N�G�
:*4u�j�Y�`:�=���	G?yi��i���4�@���(k>�52�XG�t�a���+D�*0��~h��0Gf����F�gGg��@,Y���[jkB�v�	v���+�\���l��pj&e5����tW���`c���S�4����#^��4�1��	�j�s� �l8�i4_25l]��o�N .:Aa5�{ S:�"�SS��&�iT��+�"�>�/4��F2%�;�3�>�!�S���]��(��$�ۂ�<����ǭ�l#��i����'�j-Y��\�ΰ;���?� C���4B�K�4�Q¬Z�θW]��\l��䧶@�P��kJC���_���ۭF��yx�qZ6_�ҭ.�U�8�WL��$�Ѩ�j�`�;�U��~�r��8��,�D��W�ʅ��ڀ������>��ԧ�(���^��};>�[%���&��s���k�0�:�.,=�u| $��FMZV���3wK�->U�ҭi,Q��O�����*�T5�Y���.�\_\\���g      �   {  x����R�0F��)�t�o[;:������$mgb2�>}?K	�W�00�9�'R��ע�R��p<u�P�]y���C8n�+%��͵��t�j/,�\Q/}F��Qy%Y�
)��Na�	w�~?S*/���e�9~LZ2.�7�ep���~����2(za�/-18f���v,�c��5^[�As���R-1hՋƘ̶�˶���V(��.&��v��Y�.�*&���17���X�@ǝ��w�N���[�W�l��`��=���5�`�l�N'2��t}��I�`�J�<��K�hYO{Iט�j1T�xI91h�k�BU����l�'t^eF�
-^���&��������?1hjY�~�6�A�I�����$�,:��wbp,�w0���E�-:�qlt��aЗ�)'�^�,�NgK�r8�b���&�
�±6���ec6�}���I=�c�n{~�Mȱ������f���~w����Ѭ\�����v{ZQ��za�bZ�io�01+���'*�\9���i�:Z��R�w�4,�Z�'|�B��VOy]6mbp�+��w�@юra��14�f�I�k�� ��|�����R���-01hjֽV��7Jm>kb�5s��Aa]t�Ġ�{��X�� ���{b�bR��;u����l�L�n��p��x?�U)�xe�ƄAMmf=��y�bD�Ѥ7{�'ZL�!-�f�p�\�R�ᦪgo�	�#��n�8�g�./181/��!��*'�>������Y�=�d��4{�!�!U�hq-nXˍֺ߆�`z_�0H՘��rAV9�q��eP�ʛ��e0��̚e����r,�)Gs��?W,��f}*�O�_1�W�����X��^ͽ�e;פVWa/^��K�.���c�0W�~(��?���      �   $   x�3�4��uqRpvr�2��<��b���� `��      �   N  x�m�]�� ���0[&�.�'��9�޿6-�#�*���&A����m�����E�mC5i�q���JK�'B{F�gT3��4��{�읲y��9��잳U�V����(�����\%m{F-�ڰr\�|��]�����=������B�Y�$h�����Q�u0���x�#�ư�2�!�	�0@��џZ�ai�x��䧬O)g�J��fdwI��%������ ���*2�,WY��hM�XG�u�� ��H {��Dڕ;L�5j�h�M��;��Y.���4]ail���&��!��� �'lc �q�;�4�l*؝}�w��R�o�~��R��r�5      �   >   x�3���2�t��2���2���q�sQpr����s�2�tv��QpvIp��qqq _�L      �      x�3�tru���2�tqu1b���� B��     