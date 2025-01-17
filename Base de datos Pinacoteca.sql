PGDMP     /            
        x        
   Pinacoteca    11.7    11.7 E    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            x           1262    16394 
   Pinacoteca    DATABASE     �   CREATE DATABASE "Pinacoteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE "Pinacoteca";
             postgres    false            �            1255    16643    suma(integer, integer)    FUNCTION     {   CREATE FUNCTION public.suma(num1 integer, num2 integer) RETURNS integer
    LANGUAGE sql
    AS $$
SELECT num1 + num2;
$$;
 7   DROP FUNCTION public.suma(num1 integer, num2 integer);
       public       postgres    false            �            1259    16395    cuadro    TABLE       CREATE TABLE public.cuadro (
    nombre character varying(50),
    alto character varying(50),
    fecha_creacion date,
    id_pinacoteca integer,
    id_pintor integer,
    ancho integer,
    tecnica_utilizada character varying,
    id_cuadro integer NOT NULL
);
    DROP TABLE public.cuadro;
       public         postgres    false            �            1259    16627    cuadro_id_cuadro_seq    SEQUENCE     �   CREATE SEQUENCE public.cuadro_id_cuadro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cuadro_id_cuadro_seq;
       public       postgres    false    196            y           0    0    cuadro_id_cuadro_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cuadro_id_cuadro_seq OWNED BY public.cuadro.id_cuadro;
            public       postgres    false    208            �            1259    16401    escuela    TABLE     �   CREATE TABLE public.escuela (
    nombre character varying(50),
    pais character varying(50),
    fecha_aparecio character varying(50),
    id_escuela integer NOT NULL
);
    DROP TABLE public.escuela;
       public         postgres    false            �            1259    16588    escuela_id_escuela_seq    SEQUENCE     �   CREATE SEQUENCE public.escuela_id_escuela_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.escuela_id_escuela_seq;
       public       postgres    false    197            z           0    0    escuela_id_escuela_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.escuela_id_escuela_seq OWNED BY public.escuela.id_escuela;
            public       postgres    false    204            �            1259    16572    maestro    TABLE     c   CREATE TABLE public.maestro (
    nombre character varying(30),
    id_maestro integer NOT NULL
);
    DROP TABLE public.maestro;
       public         postgres    false            �            1259    16608    maestro_id_maestro_seq    SEQUENCE     �   CREATE SEQUENCE public.maestro_id_maestro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.maestro_id_maestro_seq;
       public       postgres    false    202            {           0    0    maestro_id_maestro_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.maestro_id_maestro_seq OWNED BY public.maestro.id_maestro;
            public       postgres    false    206            �            1259    16407    mecena    TABLE       CREATE TABLE public.mecena (
    nombre character varying(30),
    primer_apellido character varying(30),
    ciudad character varying(30),
    pais character varying(30),
    fecha_nacimiento date,
    fecha_muerte date,
    id_mecenas integer NOT NULL
);
    DROP TABLE public.mecena;
       public         postgres    false            �            1259    16597    mecena_id_mecenas_seq    SEQUENCE     �   CREATE SEQUENCE public.mecena_id_mecenas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.mecena_id_mecenas_seq;
       public       postgres    false    198            |           0    0    mecena_id_mecenas_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.mecena_id_mecenas_seq OWNED BY public.mecena.id_mecenas;
            public       postgres    false    205            �            1259    16410    mecena_pintor    TABLE     �   CREATE TABLE public.mecena_pintor (
    inicio_suport date,
    fin_suport date,
    id_mecenas integer NOT NULL,
    id_pintor integer NOT NULL,
    id_mecena_pintor integer NOT NULL
);
 !   DROP TABLE public.mecena_pintor;
       public         postgres    false            �            1259    16672 "   mecena_pintor_id_mecena_pintor_seq    SEQUENCE     �   CREATE SEQUENCE public.mecena_pintor_id_mecena_pintor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.mecena_pintor_id_mecena_pintor_seq;
       public       postgres    false    199            }           0    0 "   mecena_pintor_id_mecena_pintor_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.mecena_pintor_id_mecena_pintor_seq OWNED BY public.mecena_pintor.id_mecena_pintor;
            public       postgres    false    209            �            1259    16416 
   pinacoteca    TABLE     �   CREATE TABLE public.pinacoteca (
    nombre character varying(50),
    ciudad character varying(50),
    exten character varying(50),
    direc character varying(50),
    id_pinacoteca integer NOT NULL
);
    DROP TABLE public.pinacoteca;
       public         postgres    false            �            1259    16580    pinacoteca_id_pinacoteca_seq    SEQUENCE     �   CREATE SEQUENCE public.pinacoteca_id_pinacoteca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pinacoteca_id_pinacoteca_seq;
       public       postgres    false    200            ~           0    0    pinacoteca_id_pinacoteca_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pinacoteca_id_pinacoteca_seq OWNED BY public.pinacoteca.id_pinacoteca;
            public       postgres    false    203            �            1259    16419    pintor    TABLE     '  CREATE TABLE public.pintor (
    primer_nombre character varying,
    primer_apellido character varying,
    ciudad character varying,
    pais character varying,
    fecha_nacimiento date,
    fecha_muerte date,
    id_escuela integer,
    id_maestro integer,
    id_pintor integer NOT NULL
);
    DROP TABLE public.pintor;
       public         postgres    false            �            1259    16616    pintor_id_pintor_seq    SEQUENCE     �   CREATE SEQUENCE public.pintor_id_pintor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pintor_id_pintor_seq;
       public       postgres    false    201                       0    0    pintor_id_pintor_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pintor_id_pintor_seq OWNED BY public.pintor.id_pintor;
            public       postgres    false    207            �            1259    16705    view22    VIEW     �   CREATE VIEW public.view22 AS
 SELECT count(*) AS cuadros_toledo
   FROM (public.cuadro a1
     JOIN public.pintor a2 ON ((a1.id_pintor = a2.id_pintor)))
  WHERE ((a2.primer_apellido)::text ~~ '%oledo%'::text);
    DROP VIEW public.view22;
       public       postgres    false    201    196    201            �            1259    16701    view_21    VIEW     	  CREATE VIEW public.view_21 AS
 SELECT a1.primer_nombre,
    a1.ciudad,
    a1.pais,
    a2.nombre
   FROM (public.pintor a1
     JOIN public.escuela a2 ON ((a1.id_escuela = a2.id_escuela)))
  WHERE ((a1.primer_apellido)::text ~~ 'Rivera'::text)
  ORDER BY a1.pais;
    DROP VIEW public.view_21;
       public       postgres    false    197    201    201    201    201    201    197            �            1259    16713    view_24    VIEW     �   CREATE VIEW public.view_24 AS
 SELECT pintor.primer_nombre,
    pintor.ciudad,
    pintor.pais
   FROM public.pintor
  WHERE (pintor.id_maestro IS NULL)
  WITH CASCADED CHECK OPTION;
    DROP VIEW public.view_24;
       public       postgres    false    201    201    201    201            �            1259    16717    view_25    VIEW     X  CREATE VIEW public.view_25 AS
 SELECT a1.inicio_suport,
    a1.fin_suport,
    ( SELECT mecena.nombre
           FROM public.mecena
          WHERE (mecena.id_mecenas = a1.id_mecenas)) AS nombre
   FROM (public.mecena_pintor a1
     JOIN public.pintor a2 ON ((a1.id_pintor = a2.id_pintor)))
  WHERE ((a2.primer_nombre)::text ~~ 'Diego'::text);
    DROP VIEW public.view_25;
       public       postgres    false    199    198    198    199    199    199    201    201            �            1259    16722    view_26    VIEW     �   CREATE VIEW public.view_26 AS
 SELECT a1.primer_nombre,
    a1.ciudad,
    a1.pais
   FROM (public.pintor a1
     LEFT JOIN public.mecena_pintor a2 ON ((a1.id_pintor = a2.id_pintor)))
  WHERE (a2.id_pintor IS NULL);
    DROP VIEW public.view_26;
       public       postgres    false    201    199    201    201    201            �            1259    16726    view_27    VIEW     �  CREATE VIEW public.view_27 AS
 SELECT a1.primer_nombre,
    ( SELECT count(a2.id_pintor) AS numero_apoyos
           FROM public.mecena_pintor a2
          WHERE (a1.id_pintor = a2.id_pintor)) AS numero_apoyos
   FROM public.pintor a1
  ORDER BY ( SELECT count(a2.id_pintor) AS numero_apoyos
           FROM public.mecena_pintor a2
          WHERE (a1.id_pintor = a2.id_pintor)) DESC, a1.primer_nombre;
    DROP VIEW public.view_27;
       public       postgres    false    201    201    199            �            1259    16689    view_3    VIEW     �   CREATE VIEW public.view_3 AS
 SELECT pintor.primer_nombre,
    pintor.ciudad,
    pintor.pais
   FROM public.pintor
  WHERE (pintor.id_maestro = 4);
    DROP VIEW public.view_3;
       public       postgres    false    201    201    201    201            �            1259    16693    view_4    VIEW       CREATE VIEW public.view_4 AS
 SELECT cuadro.id_cuadro,
    cuadro.nombre,
    cuadro.ancho,
    cuadro.alto
   FROM (public.pinacoteca
     JOIN public.cuadro ON ((pinacoteca.id_pinacoteca = cuadro.id_pinacoteca)))
  WHERE ((pinacoteca.ciudad)::text ~~ 'Oaxaca'::text);
    DROP VIEW public.view_4;
       public       postgres    false    200    196    200    196    196    196    196            �            1259    16685    view_uno    VIEW     �   CREATE VIEW public.view_uno AS
 SELECT pintor.primer_nombre,
    pintor.ciudad,
    pintor.pais,
    pintor.id_escuela
   FROM public.pintor
  WHERE (pintor.id_escuela = 5);
    DROP VIEW public.view_uno;
       public       postgres    false    201    201    201    201            �
           2604    16629    cuadro id_cuadro    DEFAULT     t   ALTER TABLE ONLY public.cuadro ALTER COLUMN id_cuadro SET DEFAULT nextval('public.cuadro_id_cuadro_seq'::regclass);
 ?   ALTER TABLE public.cuadro ALTER COLUMN id_cuadro DROP DEFAULT;
       public       postgres    false    208    196            �
           2604    16590    escuela id_escuela    DEFAULT     x   ALTER TABLE ONLY public.escuela ALTER COLUMN id_escuela SET DEFAULT nextval('public.escuela_id_escuela_seq'::regclass);
 A   ALTER TABLE public.escuela ALTER COLUMN id_escuela DROP DEFAULT;
       public       postgres    false    204    197            �
           2604    16610    maestro id_maestro    DEFAULT     x   ALTER TABLE ONLY public.maestro ALTER COLUMN id_maestro SET DEFAULT nextval('public.maestro_id_maestro_seq'::regclass);
 A   ALTER TABLE public.maestro ALTER COLUMN id_maestro DROP DEFAULT;
       public       postgres    false    206    202            �
           2604    16599    mecena id_mecenas    DEFAULT     v   ALTER TABLE ONLY public.mecena ALTER COLUMN id_mecenas SET DEFAULT nextval('public.mecena_id_mecenas_seq'::regclass);
 @   ALTER TABLE public.mecena ALTER COLUMN id_mecenas DROP DEFAULT;
       public       postgres    false    205    198            �
           2604    16674    mecena_pintor id_mecena_pintor    DEFAULT     �   ALTER TABLE ONLY public.mecena_pintor ALTER COLUMN id_mecena_pintor SET DEFAULT nextval('public.mecena_pintor_id_mecena_pintor_seq'::regclass);
 M   ALTER TABLE public.mecena_pintor ALTER COLUMN id_mecena_pintor DROP DEFAULT;
       public       postgres    false    209    199            �
           2604    16582    pinacoteca id_pinacoteca    DEFAULT     �   ALTER TABLE ONLY public.pinacoteca ALTER COLUMN id_pinacoteca SET DEFAULT nextval('public.pinacoteca_id_pinacoteca_seq'::regclass);
 G   ALTER TABLE public.pinacoteca ALTER COLUMN id_pinacoteca DROP DEFAULT;
       public       postgres    false    203    200            �
           2604    16618    pintor id_pintor    DEFAULT     t   ALTER TABLE ONLY public.pintor ALTER COLUMN id_pintor SET DEFAULT nextval('public.pintor_id_pintor_seq'::regclass);
 ?   ALTER TABLE public.pintor ALTER COLUMN id_pintor DROP DEFAULT;
       public       postgres    false    207    201            e          0    16395    cuadro 
   TABLE DATA               }   COPY public.cuadro (nombre, alto, fecha_creacion, id_pinacoteca, id_pintor, ancho, tecnica_utilizada, id_cuadro) FROM stdin;
    public       postgres    false    196   �T       f          0    16401    escuela 
   TABLE DATA               K   COPY public.escuela (nombre, pais, fecha_aparecio, id_escuela) FROM stdin;
    public       postgres    false    197   �U       k          0    16572    maestro 
   TABLE DATA               5   COPY public.maestro (nombre, id_maestro) FROM stdin;
    public       postgres    false    202   }V       g          0    16407    mecena 
   TABLE DATA               s   COPY public.mecena (nombre, primer_apellido, ciudad, pais, fecha_nacimiento, fecha_muerte, id_mecenas) FROM stdin;
    public       postgres    false    198   �V       h          0    16410    mecena_pintor 
   TABLE DATA               k   COPY public.mecena_pintor (inicio_suport, fin_suport, id_mecenas, id_pintor, id_mecena_pintor) FROM stdin;
    public       postgres    false    199   �W       i          0    16416 
   pinacoteca 
   TABLE DATA               Q   COPY public.pinacoteca (nombre, ciudad, exten, direc, id_pinacoteca) FROM stdin;
    public       postgres    false    200   hX       j          0    16419    pintor 
   TABLE DATA               �   COPY public.pintor (primer_nombre, primer_apellido, ciudad, pais, fecha_nacimiento, fecha_muerte, id_escuela, id_maestro, id_pintor) FROM stdin;
    public       postgres    false    201   �Y       �           0    0    cuadro_id_cuadro_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cuadro_id_cuadro_seq', 6, true);
            public       postgres    false    208            �           0    0    escuela_id_escuela_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.escuela_id_escuela_seq', 5, true);
            public       postgres    false    204            �           0    0    maestro_id_maestro_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.maestro_id_maestro_seq', 4, true);
            public       postgres    false    206            �           0    0    mecena_id_mecenas_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mecena_id_mecenas_seq', 6, true);
            public       postgres    false    205            �           0    0 "   mecena_pintor_id_mecena_pintor_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.mecena_pintor_id_mecena_pintor_seq', 8, true);
            public       postgres    false    209            �           0    0    pinacoteca_id_pinacoteca_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.pinacoteca_id_pinacoteca_seq', 6, true);
            public       postgres    false    203            �           0    0    pintor_id_pintor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pintor_id_pintor_seq', 7, true);
            public       postgres    false    207            �
           2606    16637    cuadro cuadro_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cuadro
    ADD CONSTRAINT cuadro_pkey PRIMARY KEY (id_cuadro);
 <   ALTER TABLE ONLY public.cuadro DROP CONSTRAINT cuadro_pkey;
       public         postgres    false    196            �
           2606    16595    escuela escuela_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.escuela
    ADD CONSTRAINT escuela_pkey PRIMARY KEY (id_escuela);
 >   ALTER TABLE ONLY public.escuela DROP CONSTRAINT escuela_pkey;
       public         postgres    false    197            �
           2606    16615    maestro maestro_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.maestro
    ADD CONSTRAINT maestro_pkey PRIMARY KEY (id_maestro);
 >   ALTER TABLE ONLY public.maestro DROP CONSTRAINT maestro_pkey;
       public         postgres    false    202            �
           2606    16679     mecena_pintor mecena_pintor_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mecena_pintor
    ADD CONSTRAINT mecena_pintor_pkey PRIMARY KEY (id_mecena_pintor);
 J   ALTER TABLE ONLY public.mecena_pintor DROP CONSTRAINT mecena_pintor_pkey;
       public         postgres    false    199            �
           2606    16604    mecena mecena_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mecena
    ADD CONSTRAINT mecena_pkey PRIMARY KEY (id_mecenas);
 <   ALTER TABLE ONLY public.mecena DROP CONSTRAINT mecena_pkey;
       public         postgres    false    198            �
           2606    16587    pinacoteca pinacoteca_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pinacoteca
    ADD CONSTRAINT pinacoteca_pkey PRIMARY KEY (id_pinacoteca);
 D   ALTER TABLE ONLY public.pinacoteca DROP CONSTRAINT pinacoteca_pkey;
       public         postgres    false    200            �
           2606    16626    pintor pintor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pintor
    ADD CONSTRAINT pintor_pkey PRIMARY KEY (id_pintor);
 <   ALTER TABLE ONLY public.pintor DROP CONSTRAINT pintor_pkey;
       public         postgres    false    201            �
           2606    16652    cuadro fk_cuadro_pintor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuadro
    ADD CONSTRAINT fk_cuadro_pintor FOREIGN KEY (id_pintor) REFERENCES public.pintor(id_pintor);
 A   ALTER TABLE ONLY public.cuadro DROP CONSTRAINT fk_cuadro_pintor;
       public       postgres    false    196    2778    201            �
           2606    16680 &   mecena_pintor fk_mecena_pintor_mecenas    FK CONSTRAINT     �   ALTER TABLE ONLY public.mecena_pintor
    ADD CONSTRAINT fk_mecena_pintor_mecenas FOREIGN KEY (id_mecenas) REFERENCES public.mecena(id_mecenas);
 P   ALTER TABLE ONLY public.mecena_pintor DROP CONSTRAINT fk_mecena_pintor_mecenas;
       public       postgres    false    199    198    2772            �
           2606    16667 %   mecena_pintor fk_mecena_pintor_pintor    FK CONSTRAINT     �   ALTER TABLE ONLY public.mecena_pintor
    ADD CONSTRAINT fk_mecena_pintor_pintor FOREIGN KEY (id_pintor) REFERENCES public.pintor(id_pintor);
 O   ALTER TABLE ONLY public.mecena_pintor DROP CONSTRAINT fk_mecena_pintor_pintor;
       public       postgres    false    2778    201    199            �
           2606    16657    pintor fk_pintor_escuela    FK CONSTRAINT     �   ALTER TABLE ONLY public.pintor
    ADD CONSTRAINT fk_pintor_escuela FOREIGN KEY (id_escuela) REFERENCES public.escuela(id_escuela);
 B   ALTER TABLE ONLY public.pintor DROP CONSTRAINT fk_pintor_escuela;
       public       postgres    false    197    2770    201            �
           2606    16662    pintor fk_pintor_maestro    FK CONSTRAINT     �   ALTER TABLE ONLY public.pintor
    ADD CONSTRAINT fk_pintor_maestro FOREIGN KEY (id_maestro) REFERENCES public.maestro(id_maestro);
 B   ALTER TABLE ONLY public.pintor DROP CONSTRAINT fk_pintor_maestro;
       public       postgres    false    2780    201    202            �
           2606    16638    cuadro fkcuadro    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuadro
    ADD CONSTRAINT fkcuadro FOREIGN KEY (id_pinacoteca) REFERENCES public.pinacoteca(id_pinacoteca);
 9   ALTER TABLE ONLY public.cuadro DROP CONSTRAINT fkcuadro;
       public       postgres    false    2776    200    196            e   �   x�=�1n�0Eg����H��z�NE�.���dӐ�W��#�b���!���%�΃�nv��4t`����3�q��S�^��V���<�s���5s��3�!�6ǯ�˩M��ÁS`0�Dq~���T�˰QI�:p䂯9��mm�����[;�z�% _p�e^H`5�M���ȸ�;iƳؓ�%��=-2"�+��4��\bH��ǓR�P�N�      f   �   x�U��
�@���)� �V���
ʭ��Kh��.�z����*�@�|��r�^�p�
.��In^��;O[J�SJ���3bL{Ō��'u�`��b�^���x��ԫD�<�s��."��&e.Nj��1�u���;���aT㘾�宪W��j�,�xZI)      k   S   x���	�` гN�A?Qt�"*$|(X4�ӛC˘�V�"�'����-I�?qp�z�i�:�/G8��rs����S�\      g   �   x�e�MN�0���)z��8Mf]Q�jX Vl<M5��NPB�^�3p1��a���/o��gL�E_��x�s>/��g8&��L��:hSjk+�E�.f�c����b�v�����e+�V�F��N�Zh���b��-�!���'�@>���+c���:�U��A[�R=-�#���O��f������{#��0�'Zi��ieY��IJ��k�n��P���U�p
�u�x���t�n��C��	.�rI����N)��a`�      h   q   x�]��C1�o�U������#U��?��a�,�Ap��1��	����� ![��Y"e��x�(�q����$1��yYkUI��5��HY=�2��99O�q�W*%��_f���&Y      i   Q  x�]�Kn�0���)� ʃPXF�ʦ�� u3
�Xub:�S�6,��G��:!E������o^������Vh`�,	wVd�#����e(R4F�
+�/�MR�}W��d��Gkt�d�t%�=$Ԉ�����7���MI�<���m��p*B�)��-���t�=������?�AZ �� )ٺ�|����%R�U���+7�[nۃ�9������5���n���F�jT��cw�t~�f��wWn�+,�l��0G΢J�d���5�~�� �dD�� �RkH�i���_ܝߨsG�� p�[�h�+,^�X5���X1��#)��7�-      j   *  x�m�MN�0���S�F���x	�@*�J��nF����*�Q�8B.�]hA��H3�y�}����j��1t��}�a���B���ME¸b2��f<g� �G��m�����Ƹ56Ç��������צ�0��x6ӊ3�1���"��J!���y�0�[�"���p���/G��c�Ns&��(��V��R�G����������Ce�@�Q$A�@B���:Oa����.�>_@�-�2Pd�[[�u����'�����^��5�O���@!"�/%slJӅ�ʺ�'�$�[����4��,�!_�Ā�     