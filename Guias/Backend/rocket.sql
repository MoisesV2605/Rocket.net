PGDMP         $                {            test    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    114711    test    DATABASE        CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE test;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    114712    anuncios    TABLE     �   CREATE TABLE public.anuncios (
    id_anuncio integer NOT NULL,
    anuncio character varying(255),
    fecha_inicio date,
    fecha_fin date,
    id_usuario integer
);
    DROP TABLE public.anuncios;
       public         heap    postgres    false    5            �            1259    114715    Anuncio_id_anuncio_seq    SEQUENCE     �   CREATE SEQUENCE public."Anuncio_id_anuncio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Anuncio_id_anuncio_seq";
       public          postgres    false    5    214            �           0    0    Anuncio_id_anuncio_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Anuncio_id_anuncio_seq" OWNED BY public.anuncios.id_anuncio;
          public          postgres    false    215            �            1259    114716 
   auditorias    TABLE     �   CREATE TABLE public.auditorias (
    id_auditoria integer NOT NULL,
    operacion character varying(100),
    id_usuario integer,
    fecha date,
    hora time without time zone
);
    DROP TABLE public.auditorias;
       public         heap    postgres    false    5            �            1259    114719    Auditoria_id_auditoria_seq    SEQUENCE     �   CREATE SEQUENCE public."Auditoria_id_auditoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Auditoria_id_auditoria_seq";
       public          postgres    false    5    216            �           0    0    Auditoria_id_auditoria_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."Auditoria_id_auditoria_seq" OWNED BY public.auditorias.id_auditoria;
          public          postgres    false    217            �            1259    114720    clientes    TABLE     /  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(50),
    ubicacion character varying(100),
    telefono character varying(20),
    correo character varying(255),
    id_plan integer,
    id_usuario integer,
    estado_usuario integer,
    borrado boolean
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    5            �            1259    114723    Cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public."Cliente_id_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Cliente_id_cliente_seq";
       public          postgres    false    5    218            �           0    0    Cliente_id_cliente_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Cliente_id_cliente_seq" OWNED BY public.clientes.id_cliente;
          public          postgres    false    219            �            1259    114724    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre_departamento character varying(50),
    borrado boolean
);
 !   DROP TABLE public.departamentos;
       public         heap    postgres    false    5            �            1259    114727     Departamento_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE public."Departamento_id_departamento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Departamento_id_departamento_seq";
       public          postgres    false    5    220            �           0    0     Departamento_id_departamento_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public."Departamento_id_departamento_seq" OWNED BY public.departamentos.id_departamento;
          public          postgres    false    221            �            1259    114728 
   documentos    TABLE       CREATE TABLE public.documentos (
    id_documento integer NOT NULL,
    titulo character varying(50),
    descripcion character varying(255),
    id_usuario integer,
    hora_subida timestamp without time zone,
    fecha_subida date,
    permiso integer,
    borrado boolean
);
    DROP TABLE public.documentos;
       public         heap    postgres    false    5            �            1259    114731    Documentos_id_documento_seq    SEQUENCE     �   CREATE SEQUENCE public."Documentos_id_documento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Documentos_id_documento_seq";
       public          postgres    false    5    222            �           0    0    Documentos_id_documento_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Documentos_id_documento_seq" OWNED BY public.documentos.id_documento;
          public          postgres    false    223            �            1259    114732    mensajes    TABLE     �   CREATE TABLE public.mensajes (
    id_mensaje integer NOT NULL,
    contenido character varying(255),
    usuario_emisor integer,
    usuario_receptor integer,
    fecha date,
    hora time without time zone
);
    DROP TABLE public.mensajes;
       public         heap    postgres    false    5            �            1259    114735    Mensaje_id_mensaje_seq    SEQUENCE     �   CREATE SEQUENCE public."Mensaje_id_mensaje_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Mensaje_id_mensaje_seq";
       public          postgres    false    5    224            �           0    0    Mensaje_id_mensaje_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Mensaje_id_mensaje_seq" OWNED BY public.mensajes.id_mensaje;
          public          postgres    false    225            �            1259    114736    planes    TABLE     �   CREATE TABLE public.planes (
    id_plan integer NOT NULL,
    nombre_plan character varying(50),
    descripcion character varying(255),
    precio double precision,
    estado_plan integer,
    borrado boolean
);
    DROP TABLE public.planes;
       public         heap    postgres    false    5            �            1259    114739    Planes_id_Plan_seq    SEQUENCE     �   CREATE SEQUENCE public."Planes_id_Plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Planes_id_Plan_seq";
       public          postgres    false    5    226            �           0    0    Planes_id_Plan_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Planes_id_Plan_seq" OWNED BY public.planes.id_plan;
          public          postgres    false    227            �            1259    114740    puntos    TABLE     �   CREATE TABLE public.puntos (
    id_punto integer NOT NULL,
    id_poligono integer,
    latitud double precision,
    longitud double precision
);
    DROP TABLE public.puntos;
       public         heap    postgres    false    5            �            1259    114743    Puntos_id_punto_seq    SEQUENCE     �   CREATE SEQUENCE public."Puntos_id_punto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Puntos_id_punto_seq";
       public          postgres    false    228    5            �           0    0    Puntos_id_punto_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Puntos_id_punto_seq" OWNED BY public.puntos.id_punto;
          public          postgres    false    229            �            1259    114744    sedes_departamentos    TABLE     �   CREATE TABLE public.sedes_departamentos (
    id_sede_departamento integer NOT NULL,
    id_departamento integer,
    id_sede integer
);
 '   DROP TABLE public.sedes_departamentos;
       public         heap    postgres    false    5            �            1259    114747 %   Sede-Departamento_id_Departamento_seq    SEQUENCE     �   CREATE SEQUENCE public."Sede-Departamento_id_Departamento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."Sede-Departamento_id_Departamento_seq";
       public          postgres    false    230    5            �           0    0 %   Sede-Departamento_id_Departamento_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."Sede-Departamento_id_Departamento_seq" OWNED BY public.sedes_departamentos.id_departamento;
          public          postgres    false    231            �            1259    114748 "   Sede-Departamento_id_SedeDepar_seq    SEQUENCE     �   CREATE SEQUENCE public."Sede-Departamento_id_SedeDepar_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Sede-Departamento_id_SedeDepar_seq";
       public          postgres    false    5    230            �           0    0 "   Sede-Departamento_id_SedeDepar_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Sede-Departamento_id_SedeDepar_seq" OWNED BY public.sedes_departamentos.id_sede_departamento;
          public          postgres    false    232            �            1259    114749    Sede-Departamento_id_Sede_seq    SEQUENCE     �   CREATE SEQUENCE public."Sede-Departamento_id_Sede_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Sede-Departamento_id_Sede_seq";
       public          postgres    false    230    5            �           0    0    Sede-Departamento_id_Sede_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Sede-Departamento_id_Sede_seq" OWNED BY public.sedes_departamentos.id_sede;
          public          postgres    false    233            �            1259    114750    sedes    TABLE     �   CREATE TABLE public.sedes (
    id_sede integer NOT NULL,
    nombre_sede character varying(50),
    ip character varying(255),
    borrado boolean,
    latitud double precision,
    longitud double precision
);
    DROP TABLE public.sedes;
       public         heap    postgres    false    5            �            1259    114753    Sede_id_Sede_seq    SEQUENCE     {   CREATE SEQUENCE public."Sede_id_Sede_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Sede_id_Sede_seq";
       public          postgres    false    234    5            �           0    0    Sede_id_Sede_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."Sede_id_Sede_seq" OWNED BY public.sedes.id_sede;
          public          postgres    false    235            �            1259    114754    tipos_usuarios    TABLE     t   CREATE TABLE public.tipos_usuarios (
    id_tipo_usuario integer NOT NULL,
    descripcion character varying(50)
);
 "   DROP TABLE public.tipos_usuarios;
       public         heap    postgres    false    5            �            1259    114757    Tipo_usuario_id_tipousuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Tipo_usuario_id_tipousuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Tipo_usuario_id_tipousuario_seq";
       public          postgres    false    5    236            �           0    0    Tipo_usuario_id_tipousuario_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public."Tipo_usuario_id_tipousuario_seq" OWNED BY public.tipos_usuarios.id_tipo_usuario;
          public          postgres    false    237            �            1259    114758    usuarios    TABLE     9  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(50),
    id_sededepar integer,
    id_tipousuario integer,
    nombre character varying(50),
    apellido character varying(50),
    pregunta character varying(255),
    respuesta character varying(250),
    clave character varying(250),
    foto_usuario character varying(250),
    extension_telefonica character varying(8),
    telefono character varying(20),
    cedula character varying(20),
    correo character varying(255),
    borrado boolean DEFAULT false
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    5            �            1259    114764    Usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Usuario_id_usuario_seq";
       public          postgres    false    5    238            �           0    0    Usuario_id_usuario_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."Usuario_id_usuario_seq" OWNED BY public.usuarios.id_usuario;
          public          postgres    false    239            �            1259    114765 	   poligonos    TABLE     �   CREATE TABLE public.poligonos (
    id_poligono integer NOT NULL,
    nombre_poligono character varying(50),
    id_usuario integer
);
    DROP TABLE public.poligonos;
       public         heap    postgres    false    5            �            1259    114768    Zona_id_zona_seq    SEQUENCE     �   CREATE SEQUENCE public."Zona_id_zona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Zona_id_zona_seq";
       public          postgres    false    240    5            �           0    0    Zona_id_zona_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public."Zona_id_zona_seq" OWNED BY public.poligonos.id_poligono;
          public          postgres    false    241            �           2604    114769    anuncios id_anuncio    DEFAULT     {   ALTER TABLE ONLY public.anuncios ALTER COLUMN id_anuncio SET DEFAULT nextval('public."Anuncio_id_anuncio_seq"'::regclass);
 B   ALTER TABLE public.anuncios ALTER COLUMN id_anuncio DROP DEFAULT;
       public          postgres    false    215    214            �           2604    114770    auditorias id_auditoria    DEFAULT     �   ALTER TABLE ONLY public.auditorias ALTER COLUMN id_auditoria SET DEFAULT nextval('public."Auditoria_id_auditoria_seq"'::regclass);
 F   ALTER TABLE public.auditorias ALTER COLUMN id_auditoria DROP DEFAULT;
       public          postgres    false    217    216            �           2604    114771    clientes id_cliente    DEFAULT     {   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public."Cliente_id_cliente_seq"'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    219    218            �           2604    114772    departamentos id_departamento    DEFAULT     �   ALTER TABLE ONLY public.departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('public."Departamento_id_departamento_seq"'::regclass);
 L   ALTER TABLE public.departamentos ALTER COLUMN id_departamento DROP DEFAULT;
       public          postgres    false    221    220            �           2604    114773    documentos id_documento    DEFAULT     �   ALTER TABLE ONLY public.documentos ALTER COLUMN id_documento SET DEFAULT nextval('public."Documentos_id_documento_seq"'::regclass);
 F   ALTER TABLE public.documentos ALTER COLUMN id_documento DROP DEFAULT;
       public          postgres    false    223    222            �           2604    114774    mensajes id_mensaje    DEFAULT     {   ALTER TABLE ONLY public.mensajes ALTER COLUMN id_mensaje SET DEFAULT nextval('public."Mensaje_id_mensaje_seq"'::regclass);
 B   ALTER TABLE public.mensajes ALTER COLUMN id_mensaje DROP DEFAULT;
       public          postgres    false    225    224            �           2604    114775    planes id_plan    DEFAULT     r   ALTER TABLE ONLY public.planes ALTER COLUMN id_plan SET DEFAULT nextval('public."Planes_id_Plan_seq"'::regclass);
 =   ALTER TABLE public.planes ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    227    226            �           2604    114776    poligonos id_poligono    DEFAULT     w   ALTER TABLE ONLY public.poligonos ALTER COLUMN id_poligono SET DEFAULT nextval('public."Zona_id_zona_seq"'::regclass);
 D   ALTER TABLE public.poligonos ALTER COLUMN id_poligono DROP DEFAULT;
       public          postgres    false    241    240            �           2604    114777    puntos id_punto    DEFAULT     t   ALTER TABLE ONLY public.puntos ALTER COLUMN id_punto SET DEFAULT nextval('public."Puntos_id_punto_seq"'::regclass);
 >   ALTER TABLE public.puntos ALTER COLUMN id_punto DROP DEFAULT;
       public          postgres    false    229    228            �           2604    114778    sedes id_sede    DEFAULT     o   ALTER TABLE ONLY public.sedes ALTER COLUMN id_sede SET DEFAULT nextval('public."Sede_id_Sede_seq"'::regclass);
 <   ALTER TABLE public.sedes ALTER COLUMN id_sede DROP DEFAULT;
       public          postgres    false    235    234            �           2604    114779 (   sedes_departamentos id_sede_departamento    DEFAULT     �   ALTER TABLE ONLY public.sedes_departamentos ALTER COLUMN id_sede_departamento SET DEFAULT nextval('public."Sede-Departamento_id_SedeDepar_seq"'::regclass);
 W   ALTER TABLE public.sedes_departamentos ALTER COLUMN id_sede_departamento DROP DEFAULT;
       public          postgres    false    232    230            �           2604    114780    tipos_usuarios id_tipo_usuario    DEFAULT     �   ALTER TABLE ONLY public.tipos_usuarios ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public."Tipo_usuario_id_tipousuario_seq"'::regclass);
 M   ALTER TABLE public.tipos_usuarios ALTER COLUMN id_tipo_usuario DROP DEFAULT;
       public          postgres    false    237    236            �           2604    114781    usuarios id_usuario    DEFAULT     {   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public."Usuario_id_usuario_seq"'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    239    238            �          0    114712    anuncios 
   TABLE DATA           \   COPY public.anuncios (id_anuncio, anuncio, fecha_inicio, fecha_fin, id_usuario) FROM stdin;
    public          postgres    false    214   t�       �          0    114716 
   auditorias 
   TABLE DATA           V   COPY public.auditorias (id_auditoria, operacion, id_usuario, fecha, hora) FROM stdin;
    public          postgres    false    216   ��       �          0    114720    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, nombre, ubicacion, telefono, correo, id_plan, id_usuario, estado_usuario, borrado) FROM stdin;
    public          postgres    false    218   ��       �          0    114724    departamentos 
   TABLE DATA           V   COPY public.departamentos (id_departamento, nombre_departamento, borrado) FROM stdin;
    public          postgres    false    220   ˪       �          0    114728 
   documentos 
   TABLE DATA           �   COPY public.documentos (id_documento, titulo, descripcion, id_usuario, hora_subida, fecha_subida, permiso, borrado) FROM stdin;
    public          postgres    false    222   �       �          0    114732    mensajes 
   TABLE DATA           h   COPY public.mensajes (id_mensaje, contenido, usuario_emisor, usuario_receptor, fecha, hora) FROM stdin;
    public          postgres    false    224   �       �          0    114736    planes 
   TABLE DATA           a   COPY public.planes (id_plan, nombre_plan, descripcion, precio, estado_plan, borrado) FROM stdin;
    public          postgres    false    226   +�       �          0    114765 	   poligonos 
   TABLE DATA           M   COPY public.poligonos (id_poligono, nombre_poligono, id_usuario) FROM stdin;
    public          postgres    false    240   H�       �          0    114740    puntos 
   TABLE DATA           J   COPY public.puntos (id_punto, id_poligono, latitud, longitud) FROM stdin;
    public          postgres    false    228   e�       �          0    114750    sedes 
   TABLE DATA           U   COPY public.sedes (id_sede, nombre_sede, ip, borrado, latitud, longitud) FROM stdin;
    public          postgres    false    234   ��       �          0    114744    sedes_departamentos 
   TABLE DATA           ]   COPY public.sedes_departamentos (id_sede_departamento, id_departamento, id_sede) FROM stdin;
    public          postgres    false    230   ��       �          0    114754    tipos_usuarios 
   TABLE DATA           F   COPY public.tipos_usuarios (id_tipo_usuario, descripcion) FROM stdin;
    public          postgres    false    236   �       �          0    114758    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, nombre_usuario, id_sededepar, id_tipousuario, nombre, apellido, pregunta, respuesta, clave, foto_usuario, extension_telefonica, telefono, cedula, correo, borrado) FROM stdin;
    public          postgres    false    238   �       �           0    0    Anuncio_id_anuncio_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Anuncio_id_anuncio_seq"', 1, false);
          public          postgres    false    215            �           0    0    Auditoria_id_auditoria_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Auditoria_id_auditoria_seq"', 1, false);
          public          postgres    false    217            �           0    0    Cliente_id_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Cliente_id_cliente_seq"', 1, false);
          public          postgres    false    219            �           0    0     Departamento_id_departamento_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Departamento_id_departamento_seq"', 1, true);
          public          postgres    false    221            �           0    0    Documentos_id_documento_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Documentos_id_documento_seq"', 1, false);
          public          postgres    false    223            �           0    0    Mensaje_id_mensaje_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Mensaje_id_mensaje_seq"', 1, false);
          public          postgres    false    225            �           0    0    Planes_id_Plan_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Planes_id_Plan_seq"', 1, false);
          public          postgres    false    227            �           0    0    Puntos_id_punto_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Puntos_id_punto_seq"', 1, false);
          public          postgres    false    229            �           0    0 %   Sede-Departamento_id_Departamento_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."Sede-Departamento_id_Departamento_seq"', 1, false);
          public          postgres    false    231            �           0    0 "   Sede-Departamento_id_SedeDepar_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Sede-Departamento_id_SedeDepar_seq"', 1, true);
          public          postgres    false    232            �           0    0    Sede-Departamento_id_Sede_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Sede-Departamento_id_Sede_seq"', 1, false);
          public          postgres    false    233            �           0    0    Sede_id_Sede_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Sede_id_Sede_seq"', 1, true);
          public          postgres    false    235            �           0    0    Tipo_usuario_id_tipousuario_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Tipo_usuario_id_tipousuario_seq"', 1, true);
          public          postgres    false    237            �           0    0    Usuario_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Usuario_id_usuario_seq"', 1, true);
          public          postgres    false    239            �           0    0    Zona_id_zona_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Zona_id_zona_seq"', 1, false);
          public          postgres    false    241            �           2606    114783    sedes id_Sede 
   CONSTRAINT     R   ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT "id_Sede" PRIMARY KEY (id_sede);
 9   ALTER TABLE ONLY public.sedes DROP CONSTRAINT "id_Sede";
       public            postgres    false    234            �           2606    114785    planes id_plan 
   CONSTRAINT     Q   ALTER TABLE ONLY public.planes
    ADD CONSTRAINT id_plan PRIMARY KEY (id_plan);
 8   ALTER TABLE ONLY public.planes DROP CONSTRAINT id_plan;
       public            postgres    false    226            �           2606    114787    anuncios pk_anuncio 
   CONSTRAINT     Y   ALTER TABLE ONLY public.anuncios
    ADD CONSTRAINT pk_anuncio PRIMARY KEY (id_anuncio);
 =   ALTER TABLE ONLY public.anuncios DROP CONSTRAINT pk_anuncio;
       public            postgres    false    214            �           2606    114789    auditorias pk_auditoria 
   CONSTRAINT     _   ALTER TABLE ONLY public.auditorias
    ADD CONSTRAINT pk_auditoria PRIMARY KEY (id_auditoria);
 A   ALTER TABLE ONLY public.auditorias DROP CONSTRAINT pk_auditoria;
       public            postgres    false    216            �           2606    114791    clientes pk_cliente 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);
 =   ALTER TABLE ONLY public.clientes DROP CONSTRAINT pk_cliente;
       public            postgres    false    218            �           2606    114793    departamentos pk_departamento 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);
 G   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT pk_departamento;
       public            postgres    false    220            �           2606    114795    documentos pk_documentos 
   CONSTRAINT     `   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT pk_documentos PRIMARY KEY (id_documento);
 B   ALTER TABLE ONLY public.documentos DROP CONSTRAINT pk_documentos;
       public            postgres    false    222            �           2606    114797    mensajes pk_mensaje 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT pk_mensaje PRIMARY KEY (id_mensaje);
 =   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT pk_mensaje;
       public            postgres    false    224            �           2606    114799    puntos pk_puntos 
   CONSTRAINT     T   ALTER TABLE ONLY public.puntos
    ADD CONSTRAINT pk_puntos PRIMARY KEY (id_punto);
 :   ALTER TABLE ONLY public.puntos DROP CONSTRAINT pk_puntos;
       public            postgres    false    228            �           2606    114801     sedes_departamentos pk_sededepar 
   CONSTRAINT     p   ALTER TABLE ONLY public.sedes_departamentos
    ADD CONSTRAINT pk_sededepar PRIMARY KEY (id_sede_departamento);
 J   ALTER TABLE ONLY public.sedes_departamentos DROP CONSTRAINT pk_sededepar;
       public            postgres    false    230            �           2606    114803    tipos_usuarios pk_tipousuario 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipos_usuarios
    ADD CONSTRAINT pk_tipousuario PRIMARY KEY (id_tipo_usuario);
 G   ALTER TABLE ONLY public.tipos_usuarios DROP CONSTRAINT pk_tipousuario;
       public            postgres    false    236            �           2606    114805    usuarios pk_usuario 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);
 =   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuario;
       public            postgres    false    238            �           2606    114807    poligonos pk_zona 
   CONSTRAINT     X   ALTER TABLE ONLY public.poligonos
    ADD CONSTRAINT pk_zona PRIMARY KEY (id_poligono);
 ;   ALTER TABLE ONLY public.poligonos DROP CONSTRAINT pk_zona;
       public            postgres    false    240            �           1259    114808    fki_d    INDEX     B   CREATE INDEX fki_d ON public.documentos USING btree (id_usuario);
    DROP INDEX public.fki_d;
       public            postgres    false    222            �           1259    114809    fki_fk_anunciousuario    INDEX     P   CREATE INDEX fki_fk_anunciousuario ON public.anuncios USING btree (id_usuario);
 )   DROP INDEX public.fki_fk_anunciousuario;
       public            postgres    false    214            �           1259    114810    fki_fk_auditoriausuario    INDEX     T   CREATE INDEX fki_fk_auditoriausuario ON public.auditorias USING btree (id_usuario);
 +   DROP INDEX public.fki_fk_auditoriausuario;
       public            postgres    false    216            �           1259    114811    fki_fk_clienteplan    INDEX     J   CREATE INDEX fki_fk_clienteplan ON public.clientes USING btree (id_plan);
 &   DROP INDEX public.fki_fk_clienteplan;
       public            postgres    false    218            �           1259    114812    fki_fk_clienteusuario    INDEX     P   CREATE INDEX fki_fk_clienteusuario ON public.clientes USING btree (id_usuario);
 )   DROP INDEX public.fki_fk_clienteusuario;
       public            postgres    false    218            �           1259    114813    fki_fk_departamento    INDEX     ^   CREATE INDEX fki_fk_departamento ON public.sedes_departamentos USING btree (id_departamento);
 '   DROP INDEX public.fki_fk_departamento;
       public            postgres    false    230            �           1259    114814    fki_fk_documentousuario    INDEX     T   CREATE INDEX fki_fk_documentousuario ON public.documentos USING btree (id_usuario);
 +   DROP INDEX public.fki_fk_documentousuario;
       public            postgres    false    222            �           1259    114815    fki_fk_iddepartamento    INDEX     `   CREATE INDEX fki_fk_iddepartamento ON public.sedes_departamentos USING btree (id_departamento);
 )   DROP INDEX public.fki_fk_iddepartamento;
       public            postgres    false    230            �           1259    114816    fki_fk_idpoligono    INDEX     K   CREATE INDEX fki_fk_idpoligono ON public.puntos USING btree (id_poligono);
 %   DROP INDEX public.fki_fk_idpoligono;
       public            postgres    false    228            �           1259    114817    fki_fk_idsede    INDEX     P   CREATE INDEX fki_fk_idsede ON public.sedes_departamentos USING btree (id_sede);
 !   DROP INDEX public.fki_fk_idsede;
       public            postgres    false    230            �           1259    114818    fki_fk_puntoszona    INDEX     K   CREATE INDEX fki_fk_puntoszona ON public.puntos USING btree (id_poligono);
 %   DROP INDEX public.fki_fk_puntoszona;
       public            postgres    false    228            �           1259    114819    fki_fk_sede    INDEX     N   CREATE INDEX fki_fk_sede ON public.sedes_departamentos USING btree (id_sede);
    DROP INDEX public.fki_fk_sede;
       public            postgres    false    230            �           1259    114820    fki_fk_sededepar    INDEX     M   CREATE INDEX fki_fk_sededepar ON public.usuarios USING btree (id_sededepar);
 $   DROP INDEX public.fki_fk_sededepar;
       public            postgres    false    238            �           1259    114821    fki_fk_tipousuario    INDEX     Q   CREATE INDEX fki_fk_tipousuario ON public.usuarios USING btree (id_tipousuario);
 &   DROP INDEX public.fki_fk_tipousuario;
       public            postgres    false    238            �           1259    114822    fki_fk_usuarioanuncio    INDEX     P   CREATE INDEX fki_fk_usuarioanuncio ON public.anuncios USING btree (id_usuario);
 )   DROP INDEX public.fki_fk_usuarioanuncio;
       public            postgres    false    214            �           1259    114823    fki_fk_usuarioauditoria    INDEX     T   CREATE INDEX fki_fk_usuarioauditoria ON public.auditorias USING btree (id_usuario);
 +   DROP INDEX public.fki_fk_usuarioauditoria;
       public            postgres    false    216            �           1259    114824    fki_fk_usuarioemisor    INDEX     S   CREATE INDEX fki_fk_usuarioemisor ON public.mensajes USING btree (usuario_emisor);
 (   DROP INDEX public.fki_fk_usuarioemisor;
       public            postgres    false    224            �           1259    114825    fki_fk_usuarioreceptor    INDEX     W   CREATE INDEX fki_fk_usuarioreceptor ON public.mensajes USING btree (usuario_receptor);
 *   DROP INDEX public.fki_fk_usuarioreceptor;
       public            postgres    false    224            �           1259    114826    fki_fk_usuariosededepar    INDEX     T   CREATE INDEX fki_fk_usuariosededepar ON public.usuarios USING btree (id_sededepar);
 +   DROP INDEX public.fki_fk_usuariosededepar;
       public            postgres    false    238            �           1259    114827    fki_fk_usuariotipousuario    INDEX     X   CREATE INDEX fki_fk_usuariotipousuario ON public.usuarios USING btree (id_tipousuario);
 -   DROP INDEX public.fki_fk_usuariotipousuario;
       public            postgres    false    238            �           1259    114828    fki_fk_zonausuario    INDEX     N   CREATE INDEX fki_fk_zonausuario ON public.poligonos USING btree (id_usuario);
 &   DROP INDEX public.fki_fk_zonausuario;
       public            postgres    false    240            �           1259    114829    fki_g    INDEX     A   CREATE INDEX fki_g ON public.poligonos USING btree (id_usuario);
    DROP INDEX public.fki_g;
       public            postgres    false    240            �           1259    114830    fki_id_Departamento    INDEX     `   CREATE INDEX "fki_id_Departamento" ON public.sedes_departamentos USING btree (id_departamento);
 )   DROP INDEX public."fki_id_Departamento";
       public            postgres    false    230            �           1259    114831    fki_id_Sede    INDEX     P   CREATE INDEX "fki_id_Sede" ON public.sedes_departamentos USING btree (id_sede);
 !   DROP INDEX public."fki_id_Sede";
       public            postgres    false    230            �           1259    114832    fki_k    INDEX     ?   CREATE INDEX fki_k ON public.puntos USING btree (id_poligono);
    DROP INDEX public.fki_k;
       public            postgres    false    228            �           1259    114833    fki_o    INDEX     @   CREATE INDEX fki_o ON public.anuncios USING btree (id_usuario);
    DROP INDEX public.fki_o;
       public            postgres    false    214            �           1259    114834    fki_u    INDEX     @   CREATE INDEX fki_u ON public.clientes USING btree (id_usuario);
    DROP INDEX public.fki_u;
       public            postgres    false    218            �           2606    114835    auditorias fk_auditoriausuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.auditorias
    ADD CONSTRAINT fk_auditoriausuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public.auditorias DROP CONSTRAINT fk_auditoriausuario;
       public          postgres    false    216    3297    238            �           2606    114840    clientes fk_clienteplan    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_clienteplan FOREIGN KEY (id_plan) REFERENCES public.planes(id_plan) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 A   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fk_clienteplan;
       public          postgres    false    3274    218    226            �           2606    114845    clientes fk_clienteusuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_clienteusuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 D   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fk_clienteusuario;
       public          postgres    false    3297    218    238            �           2606    114850 #   sedes_departamentos fk_departamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.sedes_departamentos
    ADD CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 M   ALTER TABLE ONLY public.sedes_departamentos DROP CONSTRAINT fk_departamento;
       public          postgres    false    220    3264    230            �           2606    114855    documentos fk_documentousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT fk_documentousuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public.documentos DROP CONSTRAINT fk_documentousuario;
       public          postgres    false    222    3297    238            �           2606    114860    puntos fk_idpoligono    FK CONSTRAINT     �   ALTER TABLE ONLY public.puntos
    ADD CONSTRAINT fk_idpoligono FOREIGN KEY (id_poligono) REFERENCES public.poligonos(id_poligono) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 >   ALTER TABLE ONLY public.puntos DROP CONSTRAINT fk_idpoligono;
       public          postgres    false    240    228    3301            �           2606    114865    sedes_departamentos fk_sede    FK CONSTRAINT     �   ALTER TABLE ONLY public.sedes_departamentos
    ADD CONSTRAINT fk_sede FOREIGN KEY (id_sede) REFERENCES public.sedes(id_sede) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 E   ALTER TABLE ONLY public.sedes_departamentos DROP CONSTRAINT fk_sede;
       public          postgres    false    3289    230    234            �           2606    114870    mensajes fk_usuarioemisor    FK CONSTRAINT     �   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT fk_usuarioemisor FOREIGN KEY (usuario_emisor) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 C   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT fk_usuarioemisor;
       public          postgres    false    224    238    3297            �           2606    114875    mensajes fk_usuarioreceptor    FK CONSTRAINT     �   ALTER TABLE ONLY public.mensajes
    ADD CONSTRAINT fk_usuarioreceptor FOREIGN KEY (usuario_receptor) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 E   ALTER TABLE ONLY public.mensajes DROP CONSTRAINT fk_usuarioreceptor;
       public          postgres    false    238    3297    224            �           2606    114880    usuarios fk_usuariosededepar    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuariosededepar FOREIGN KEY (id_sededepar) REFERENCES public.sedes_departamentos(id_sede_departamento) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 F   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_usuariosededepar;
       public          postgres    false    230    3287    238            �           2606    114885    usuarios fk_usuariotipousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuariotipousuario FOREIGN KEY (id_tipousuario) REFERENCES public.tipos_usuarios(id_tipo_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_usuariotipousuario;
       public          postgres    false    238    236    3291            �           2606    114890    poligonos fk_zonausuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.poligonos
    ADD CONSTRAINT fk_zonausuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 B   ALTER TABLE ONLY public.poligonos DROP CONSTRAINT fk_zonausuario;
       public          postgres    false    240    3297    238            �           2606    114895    anuncios id_anunciousuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.anuncios
    ADD CONSTRAINT id_anunciousuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 D   ALTER TABLE ONLY public.anuncios DROP CONSTRAINT id_anunciousuario;
       public          postgres    false    238    3297    214            �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�
���L����� ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   -   x�3�t/M�K,J�4�4�34��34�32�L�4�34\1z\\\ ɆN      �      x�3�4�4����� �X      �      x�3�LL�������� $�      �   Q   x�3��*M�316�4B/ �3,3''5=����~ǔ��<{��LNC#c����Ģ�|�����|NCC�?(J����� !E�     