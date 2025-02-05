toc.dat                                                                                             0000600 0004000 0002000 00000015750 14653002763 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |         
   Biblioteca    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    262995 
   Biblioteca    DATABASE     �   CREATE DATABASE "Biblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "Biblioteca";
                postgres    false         �            1259    263001    Autores    TABLE     �   CREATE TABLE public."Autores" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombres" character varying(50),
    "Apellido_paterno" character varying(30),
    "Apellido_materno" character varying(30)
);
    DROP TABLE public."Autores";
       public         heap    postgres    false         �            1259    263006    Editoriales    TABLE     |   CREATE TABLE public."Editoriales" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombre" character varying(80)
);
 !   DROP TABLE public."Editoriales";
       public         heap    postgres    false         �            1259    263021    Generos    TABLE     x   CREATE TABLE public."Generos" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombre" character varying(30)
);
    DROP TABLE public."Generos";
       public         heap    postgres    false         �            1259    262996    Libros    TABLE     �   CREATE TABLE public."Libros" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Titulo" character varying(150),
    "Autor_id" uuid,
    "Editorial_id" uuid,
    "Genero_id" uuid,
    "Publicacion" smallint
);
    DROP TABLE public."Libros";
       public         heap    postgres    false         �            1259    263011 	   Prestamos    TABLE     �   CREATE TABLE public."Prestamos" (
    "Id_libro" uuid,
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Fecha_prestamo" date,
    "Fecha_devolucion" date,
    "Estado" boolean,
    "Id_usuario" uuid
);
    DROP TABLE public."Prestamos";
       public         heap    postgres    false         �            1259    263016    Usuarios    TABLE       CREATE TABLE public."Usuarios" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombres" character varying(50),
    "Apellido_materno" character varying(30),
    "Apellido_paterno" character varying(30),
    "Direccion" character varying(60),
    "Telefono" bigint
);
    DROP TABLE public."Usuarios";
       public         heap    postgres    false         �          0    263001    Autores 
   TABLE DATA                 public          postgres    false    216       4819.dat �          0    263006    Editoriales 
   TABLE DATA                 public          postgres    false    217       4820.dat �          0    263021    Generos 
   TABLE DATA                 public          postgres    false    220       4823.dat �          0    262996    Libros 
   TABLE DATA                 public          postgres    false    215       4818.dat �          0    263011 	   Prestamos 
   TABLE DATA                 public          postgres    false    218       4821.dat �          0    263016    Usuarios 
   TABLE DATA                 public          postgres    false    219       4822.dat 6           2606    263005    Autores Autores_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Autores"
    ADD CONSTRAINT "Autores_pkey" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Autores" DROP CONSTRAINT "Autores_pkey";
       public            postgres    false    216         8           2606    263010    Editoriales Editoriales_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Editoriales"
    ADD CONSTRAINT "Editoriales_pkey" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."Editoriales" DROP CONSTRAINT "Editoriales_pkey";
       public            postgres    false    217         >           2606    263025    Generos Generos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Generos"
    ADD CONSTRAINT "Generos_pkey" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Generos" DROP CONSTRAINT "Generos_pkey";
       public            postgres    false    220         4           2606    263000    Libros Libros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Libros_pkey" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Libros" DROP CONSTRAINT "Libros_pkey";
       public            postgres    false    215         :           2606    263015    Prestamos Prestamos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_pkey" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."Prestamos" DROP CONSTRAINT "Prestamos_pkey";
       public            postgres    false    218         <           2606    263020    Usuarios Usuarios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    219         ?           2606    271196    Libros Autor    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Autor" FOREIGN KEY ("Autor_id") REFERENCES public."Autores"("Id") NOT VALID;
 :   ALTER TABLE ONLY public."Libros" DROP CONSTRAINT "Autor";
       public          postgres    false    4662    215    216         @           2606    271201    Libros Editorial    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Editorial" FOREIGN KEY ("Editorial_id") REFERENCES public."Editoriales"("Id") NOT VALID;
 >   ALTER TABLE ONLY public."Libros" DROP CONSTRAINT "Editorial";
       public          postgres    false    217    215    4664         A           2606    263026    Prestamos Libro    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Libro" FOREIGN KEY ("Id_libro") REFERENCES public."Libros"("Id") NOT VALID;
 =   ALTER TABLE ONLY public."Prestamos" DROP CONSTRAINT "Libro";
       public          postgres    false    215    4660    218         B           2606    271216    Prestamos Usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Usuario" FOREIGN KEY ("Id_usuario") REFERENCES public."Usuarios"("Id") NOT VALID;
 ?   ALTER TABLE ONLY public."Prestamos" DROP CONSTRAINT "Usuario";
       public          postgres    false    4668    218    219                                4819.dat                                                                                            0000600 0004000 0002000 00000006347 14653002763 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'Ray', ' Bradbury', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('da322ba1-57af-4b58-8739-a884547eb0ce', 'Franklin', ' W.', ' Dixon');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('9fab5e14-9a52-4179-8294-eea44f66ae43', 'Mary', ' Higgins', ' Clark');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('9437f678-33e0-4f86-abe9-d9976a621252', 'J. R.', ' R.', ' Tolkien');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('51931986-9644-4fa6-961f-84499f35ae2a', 'Robert', ' James', ' Waller');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('c12f2bd4-ca5a-44f5-804f-454c768f24fa', 'LAURA', ' HILLENBRAND', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('0ebad053-2f02-4cc4-8b9e-07f37b6ff093', 'SUZANNE', ' FISHER', ' STAPLES');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('8273b0d2-3544-4329-b9b9-c8c3e0da482d', 'Gabriel', ' Garcia', ' Marquez');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('88c5062f-2676-4f8b-a348-18a5c4e6e38d', 'Sandra', ' Brown', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('77c90cc3-4878-4720-8548-d50fe45bd0f0', 'Jerome', ' D.', ' Salinger');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('d2cff1d8-bc45-4b5c-95a4-b98f9ac7cc37', 'Amy', ' Tan', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('cb5764ca-18aa-4d06-842b-a88a37055840', 'Jane', ' Austen', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('7f0eb263-ebc8-4d7f-9ef8-191d7d42d446', 'Rich', ' Shapero', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('f80dc9fc-d637-4588-b602-be4134c1d432', 'Dolores', ' Krieger', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('3b245478-94d6-4608-9c1a-f4e7b85d6b7c', 'RAY', ' BRADBURY', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('9639178a-1a75-469d-a6a6-90f7f3e9c431', 'Shirley', ' Rousseau', ' Murphy');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('6cb5ed46-5140-46ac-99f8-e174d4fd345a', 'Valerie', ' Frankel', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('64d609b8-c392-4b15-a5a8-29377c968eea', 'Robert', ' Hendrickson', NULL);
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('ec8fe303-46a0-4dd0-a230-8723d8725f24', 'M.D Bernie', ' S.', ' Siegel');
INSERT INTO public."Autores" ("Id", "Nombres", "Apellido_paterno", "Apellido_materno") VALUES ('6e7ce281-f6ed-436a-a0c9-42ae68a65465', 'Piers', ' Anthony', NULL);


                                                                                                                                                                                                                                                                                         4820.dat                                                                                            0000600 0004000 0002000 00000005530 14653002763 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('9b5d9e20-1caf-4ef1-a7ab-b9346b49dcb3', 'Rowohlt Tb.');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('e2a1bc30-4819-4f9a-b4ba-945e15fe5bd5', 'Diogenes');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('236b3748-83db-40cc-85d1-3fd4ba3af782', 'Aladdin');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('9e40861c-7e75-436a-b09f-891b95d194c1', 'Laurel Leaf');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('4b49d7da-7a19-4b15-ab5b-84aeff324990', 'Distribooks');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('624ff30a-5ed8-4209-b306-d725b584f528', 'Avon Trade');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('1a548e81-9b4e-4922-a6d6-2e85cfeb39d3', 'Ballantine Books');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('38ec4c2c-a876-48eb-a740-075cb8bfcb0b', 'Dover Publications');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('963f37fc-8899-4891-b849-869cecddefe2', 'Perennial');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('5c9d19cb-1912-4300-990b-7f2104d9e2a2', 'Deutscher Taschenbuch Verlag (DTV)');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('7f0a1a96-d0b9-4b45-9483-57b2e55fb733', 'Putnam Pub Group');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('0802af23-ffd5-42c7-a77a-3dec0f7fd9de', 'Roc');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('2a7af4f1-6ef8-4025-9aad-4984093d6e1e', 'Simon Pulse');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('aded066a-4b95-44b6-a090-8d829cd26425', 'Prentice Hall (K-12)');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('f65dbfb0-0547-4afd-a2db-d5b47dd9bf70', 'Del Rey Books');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('94dc88d3-ca8c-4b7a-8031-0500162a9e74', 'Bantam');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('fbb9ae95-7358-4e45-9c31-4025e7f48681', 'Diogenes Verlag');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('b36514b8-9655-40e2-a57d-b55a5282f4f4', 'HarperCollins Publishers');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('9dabcf68-97aa-4e2f-bbbd-3f4feb563cfd', 'Kensington Publishing Corp.');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('1d7f643f-424c-48ce-a1d9-c2fc9c4d1748', 'Distribooks Inc');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('beac7aa5-7f99-4adb-9dee-47dca5803cc7', 'Fireside');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('c0c643a3-5d51-4a73-b604-4d7670b5e186', 'Warner Books');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('d6b1a6c8-3708-43bd-827a-dea8789535fb', 'Too Far');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('0d8a6bb3-73c9-4249-8634-7c0ddecb401d', 'Minotauro');
INSERT INTO public."Editoriales" ("Id", "Nombre") VALUES ('d8deca7f-7978-4713-a996-18d9a355c849', 'Pocket');


                                                                                                                                                                        4823.dat                                                                                            0000600 0004000 0002000 00000002276 14653002763 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('c185520f-fb21-49ab-9282-48ea61aa8330', 'Biografia');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('552f63c4-e71c-4950-b685-1f9c90df1b95', 'Ficcion Historica');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('bc4f3599-5ab0-41a8-acd5-93255153edb4', 'Medicina Alternativa');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('456325b3-dfc9-4a75-b637-c29817472212', 'Autoayuda');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('b9157781-6676-4e84-9976-0f281acf6eaf', 'Historia');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('701decde-96a1-404b-86d1-130343e83e52', 'Misterio');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('558d486e-17bc-4e21-8b8c-c7819220db5f', 'Ficcion');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('08e1043a-9875-4699-8182-7e58ad96c9a7', 'Romance');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('06e00595-28e8-4080-a446-0ecbc629cadc', 'Fantasia');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 'Ciencia Ficcion');
INSERT INTO public."Generos" ("Id", "Nombre") VALUES ('a87ed4d1-56f4-4ee8-9621-c86b8aeb0041', 'Realismo Magico');


                                                                                                                                                                                                                                                                                                                                  4818.dat                                                                                            0000600 0004000 0002000 00000030717 14653002763 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('94391e09-3c0c-4c27-be9a-74ea9999b6a9', 'Shabanu: Daughter of the Wind (Border Trilogy)', '0ebad053-2f02-4cc4-8b9e-07f37b6ff093', '9e40861c-7e75-436a-b09f-891b95d194c1', '552f63c4-e71c-4950-b685-1f9c90df1b95', 1991);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('f3c1ca1b-5029-4891-ba7d-65e22b591f39', 'I''ll Be Seeing You', '9fab5e14-9a52-4179-8294-eea44f66ae43', 'd8deca7f-7978-4713-a996-18d9a355c849', '701decde-96a1-404b-86d1-130343e83e52', 1994);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('1c581016-087c-4f60-9e56-7f7f58116dc0', 'The Kitchen God''s Wife', 'd2cff1d8-bc45-4b5c-95a4-b98f9ac7cc37', '7f0a1a96-d0b9-4b45-9483-57b2e55fb733', '552f63c4-e71c-4950-b685-1f9c90df1b95', 1991);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('e5670988-f43e-4540-abe0-ac1eb3d911ab', 'Wild Animus', '7f0eb263-ebc8-4d7f-9ef8-191d7d42d446', 'd6b1a6c8-3708-43bd-827a-dea8789535fb', '558d486e-17bc-4e21-8b8c-c7819220db5f', 2004);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('96af6ddb-75b6-4a43-a7b3-e938692350f4', 'Seabiscuit: An American Legend', 'c12f2bd4-ca5a-44f5-804f-454c768f24fa', '1a548e81-9b4e-4922-a6d6-2e85cfeb39d3', 'c185520f-fb21-49ab-9282-48ea61aa8330', 2002);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('921e9c01-ec48-41b7-89a6-8b4348084e3d', 'Pride and Prejudice', 'cb5764ca-18aa-4d06-842b-a88a37055840', '94dc88d3-ca8c-4b7a-8031-0500162a9e74', '552f63c4-e71c-4950-b685-1f9c90df1b95', 1983);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('5d322e2e-b62f-4392-826d-a18ce7cddeaa', 'The Therapeutic Touch: How to Use Your Hands to Help or to Heal', 'f80dc9fc-d637-4588-b602-be4134c1d432', 'beac7aa5-7f99-4adb-9dee-47dca5803cc7', 'bc4f3599-5ab0-41a8-acd5-93255153edb4', 1979);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('fc61abe7-d8c2-46e8-b4b7-e8d382793afb', 'Love, Medicine and Miracles', 'ec8fe303-46a0-4dd0-a230-8723d8725f24', 'b36514b8-9655-40e2-a57d-b55a5282f4f4', '456325b3-dfc9-4a75-b637-c29817472212', 1988);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('7677c12e-a75f-4511-9ce4-3e85f4944016', 'More Cunning Than Man: A Social History of Rats and Man', '64d609b8-c392-4b15-a5a8-29377c968eea', '9dabcf68-97aa-4e2f-bbbd-3f4feb563cfd', 'b9157781-6676-4e84-9976-0f281acf6eaf', 1999);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('8bb45e91-0599-456d-8104-103435f15000', 'Haveli (Laurel Leaf Books)', '0ebad053-2f02-4cc4-8b9e-07f37b6ff093', '9e40861c-7e75-436a-b09f-891b95d194c1', '552f63c4-e71c-4950-b685-1f9c90df1b95', 1995);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('da44a5c1-8990-48d7-b60e-1ce8dd6b6d66', 'The Accidental Virgin', '6cb5ed46-5140-46ac-99f8-e174d4fd345a', '624ff30a-5ed8-4209-b306-d725b584f528', '08e1043a-9875-4699-8182-7e58ad96c9a7', 2003);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('32f791bd-171d-4dc4-bc56-8b925bf83dfb', 'Seabiscuit', 'c12f2bd4-ca5a-44f5-804f-454c768f24fa', '1a548e81-9b4e-4922-a6d6-2e85cfeb39d3', 'c185520f-fb21-49ab-9282-48ea61aa8330', 2003);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('29c7735d-ab10-430d-acf0-2360535db7db', 'El Senor De Los Anillos: El Retorno Del Rey (Tolkien, J. R. R. Lord of the Rings. 3.)', '9437f678-33e0-4f86-abe9-d9976a621252', '4b49d7da-7a19-4b15-ab5b-84aeff324990', '06e00595-28e8-4080-a446-0ecbc629cadc', 2001);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('4002ab80-7299-4a3c-9113-91e40eb1bf53', 'El Senor De Los Anillos: Las DOS Torres (Lord of the Rings (Paperback))', '9437f678-33e0-4f86-abe9-d9976a621252', '0d8a6bb3-73c9-4249-8634-7c0ddecb401d', '06e00595-28e8-4080-a446-0ecbc629cadc', 2001);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('4738f46f-00c6-4e0b-8cb2-5e54682240ff', 'El Senor De Los Anillos: LA Comunidad Del Anillo (Lord of the Rings (Spanish))', '9437f678-33e0-4f86-abe9-d9976a621252', '0d8a6bb3-73c9-4249-8634-7c0ddecb401d', '06e00595-28e8-4080-a446-0ecbc629cadc', 2001);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('2d381ba3-c40e-4c2d-b9a1-6eec90e72397', 'Pretend You Don''t See Her', '9fab5e14-9a52-4179-8294-eea44f66ae43', 'd8deca7f-7978-4713-a996-18d9a355c849', '701decde-96a1-404b-86d1-130343e83e52', 1998);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('5a33aaf6-9e75-4ca3-9d2d-5e554e2cccd7', 'The Joy Luck Club', 'd2cff1d8-bc45-4b5c-95a4-b98f9ac7cc37', 'aded066a-4b95-44b6-a090-8d829cd26425', '552f63c4-e71c-4950-b685-1f9c90df1b95', 1994);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('24757884-f6db-4eb0-8a68-ba45b8681553', 'The Alibi', '88c5062f-2676-4f8b-a348-18a5c4e6e38d', 'c0c643a3-5d51-4a73-b604-4d7670b5e186', '08e1043a-9875-4699-8182-7e58ad96c9a7', 2000);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('17fc7119-cf17-4211-841b-3c4f0633464a', 'A Kiss Remembered', '88c5062f-2676-4f8b-a348-18a5c4e6e38d', 'c0c643a3-5d51-4a73-b604-4d7670b5e186', '08e1043a-9875-4699-8182-7e58ad96c9a7', 2003);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('effd97a6-9cbf-4e18-93b4-64b9903e2cd5', 'Puerto Vallarta Squeeze', '51931986-9644-4fa6-961f-84499f35ae2a', 'c0c643a3-5d51-4a73-b604-4d7670b5e186', '08e1043a-9875-4699-8182-7e58ad96c9a7', 1995);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('24305d26-699c-4e57-ab96-ff37e86c3b4a', 'Las Maquinariad De La Alegria', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'fbb9ae95-7358-4e45-9c31-4025e7f48681', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 2000);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('07e9ef7e-ce00-4d36-a08c-3456c8781162', 'Cronicas Marcianas', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'fbb9ae95-7358-4e45-9c31-4025e7f48681', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 1981);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('4fb451f2-7822-465b-b944-0fa425d13c44', 'Slow Waltz in Cedar Bend', '51931986-9644-4fa6-961f-84499f35ae2a', 'c0c643a3-5d51-4a73-b604-4d7670b5e186', '08e1043a-9875-4699-8182-7e58ad96c9a7', 1994);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('e25a394e-6afc-4ed9-9119-23b4a3b90579', 'El amor en los tiempos del cólera', '8273b0d2-3544-4329-b9b9-c8c3e0da482d', '5c9d19cb-1912-4300-990b-7f2104d9e2a2', 'a87ed4d1-56f4-4ee8-9621-c86b8aeb0041', 1985);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('28a19a27-72ce-4687-8748-176eeb213093', 'LAW OF THE JUNGLE (HARDY BOYS CASE FILE 105) : LAW OF THE JUNGLE (Hardy Boys, The)', 'da322ba1-57af-4b58-8739-a884547eb0ce', '2a7af4f1-6ef8-4025-9aad-4984093d6e1e', '701decde-96a1-404b-86d1-130343e83e52', 1995);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('fc2931d3-6be4-480e-b8ce-0bb33b7b6f5a', 'El Hombre Ilustrado', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'e2a1bc30-4819-4f9a-b4ba-945e15fe5bd5', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 2002);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('8aa52939-f8f6-48c2-9061-a4c5b09f6cb8', 'Skin And Bones', 'da322ba1-57af-4b58-8739-a884547eb0ce', '236b3748-83db-40cc-85d1-3fd4ba3af782', '558d486e-17bc-4e21-8b8c-c7819220db5f', 2000);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('dd3267e9-91e3-4fca-b623-43f18a760368', 'Before I Say Good-Bye', '9fab5e14-9a52-4179-8294-eea44f66ae43', 'd8deca7f-7978-4713-a996-18d9a355c849', '701decde-96a1-404b-86d1-130343e83e52', 2001);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('0ddf75c1-866c-4598-a36f-498d24dad270', 'One Hundred Years of Solitude', '8273b0d2-3544-4329-b9b9-c8c3e0da482d', '963f37fc-8899-4891-b849-869cecddefe2', 'a87ed4d1-56f4-4ee8-9621-c86b8aeb0041', 1998);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('7d08df60-53e0-4070-8d78-89aa2c01e5a8', 'Fahrenheit 451', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', '1d7f643f-424c-48ce-a1d9-c2fc9c4d1748', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 1994);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('b8b96e51-d736-4430-8c98-0e3794343c99', 'Pride and Prejudice (Dover Thrift Editions)', 'cb5764ca-18aa-4d06-842b-a88a37055840', '38ec4c2c-a876-48eb-a740-075cb8bfcb0b', '552f63c4-e71c-4950-b685-1f9c90df1b95', 1995);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('bdd94e5e-3011-45df-a0ef-7d6f715cf814', 'The Catswold Portal', '9639178a-1a75-469d-a6a6-90f7f3e9c431', '0802af23-ffd5-42c7-a77a-3dec0f7fd9de', '06e00595-28e8-4080-a446-0ecbc629cadc', 1993);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('237e4192-f01a-4af1-95e2-05cbc0fac074', 'EYE ON CRIME: HARDY BOYS #153', 'da322ba1-57af-4b58-8739-a884547eb0ce', '236b3748-83db-40cc-85d1-3fd4ba3af782', '701decde-96a1-404b-86d1-130343e83e52', 1998);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('70f08485-1152-4fe6-be77-e6eb8d70f63e', 'Night Mare (Xanth Novels (Paperback))', '6e7ce281-f6ed-436a-a0c9-42ae68a65465', 'f65dbfb0-0547-4afd-a2db-d5b47dd9bf70', '06e00595-28e8-4080-a446-0ecbc629cadc', 1990);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('af361ca2-0580-40ac-83b8-2cbef9a8642e', 'Raise High the Roof Beam, Carpenters and Seymour: An Introduction', '77c90cc3-4878-4720-8548-d50fe45bd0f0', '9b5d9e20-1caf-4ef1-a7ab-b9346b49dcb3', '558d486e-17bc-4e21-8b8c-c7819220db5f', 1998);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('fb2d185b-7e03-47fb-9b0f-e66c29b46d57', 'I Sing The Body Electric', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'fbb9ae95-7358-4e45-9c31-4025e7f48681', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 2000);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('0195344f-c33c-448e-a423-5b070cadd94d', 'A Memory Of Murders', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'fbb9ae95-7358-4e45-9c31-4025e7f48681', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 1988);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('ce70b08e-44a9-4c7c-bdb6-b6ea53fcbb2f', 'El Pais de Octubre', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'fbb9ae95-7358-4e45-9c31-4025e7f48681', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 2000);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('1eb9d14f-96f4-4d2b-b8c3-c6a98e651f56', 'Nueve cuentos', '77c90cc3-4878-4720-8548-d50fe45bd0f0', '9b5d9e20-1caf-4ef1-a7ab-b9346b49dcb3', '558d486e-17bc-4e21-8b8c-c7819220db5f', 1968);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('5e370807-577b-4218-a33b-95aed25a86d3', 'La Feria De Las Tinieblas', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'e2a1bc30-4819-4f9a-b4ba-945e15fe5bd5', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 2003);
INSERT INTO public."Libros" ("Id", "Titulo", "Autor_id", "Editorial_id", "Genero_id", "Publicacion") VALUES ('ad1d4be7-0285-4949-8a00-092474f383f0', 'El vino del Estio', '735ac9a9-8dec-4b0a-8ac9-ebe4a8da7b12', 'fbb9ae95-7358-4e45-9c31-4025e7f48681', '419e7c67-d3b0-4d5c-8f87-b7d78855cbdb', 1999);


                                                 4821.dat                                                                                            0000600 0004000 0002000 00000005302 14653002763 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('07e9ef7e-ce00-4d36-a08c-3456c8781162', '94a51889-0bcb-4acb-8850-9567bdc0c504', '2024-07-28', '2024-08-10', true, '5d8cbf0d-4882-4f78-9d15-0241d6481f3f');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('24757884-f6db-4eb0-8a68-ba45b8681553', 'a78747cb-1673-4ca0-ab7f-f62ca50648b7', '2024-07-15', '2024-07-25', false, 'ad15f465-1c3d-485f-baa0-a88a188c9957');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('4002ab80-7299-4a3c-9113-91e40eb1bf53', 'b39c7be2-fb1a-4cab-a3b0-0db857719717', '2024-07-28', '2024-08-10', true, '5d8cbf0d-4882-4f78-9d15-0241d6481f3f');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('4fb451f2-7822-465b-b944-0fa425d13c44', 'd5661cf9-2d41-4320-b996-eab7d6558879', '2024-08-08', '2024-07-27', true, 'f4a4fb2b-08f3-4f59-a020-72214d7e588b');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('7d08df60-53e0-4070-8d78-89aa2c01e5a8', 'eb84cc57-f612-4ef2-a49e-14aada5967be', '2024-08-06', '2024-07-22', true, '85c8f03f-8438-4d10-8f5e-55eb2aa3e633');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('921e9c01-ec48-41b7-89a6-8b4348084e3d', 'ec67f03e-b70c-4422-ac93-9c962c84f144', '2024-04-22', '2024-04-28', false, 'a1ff0739-1bf5-4fe6-83f4-08b4ab52e86b');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('e25a394e-6afc-4ed9-9119-23b4a3b90579', 'f95b567d-8e17-4a71-a52a-0e5372bc23be', '2024-07-27', '2024-08-08', true, '5d8cbf0d-4882-4f78-9d15-0241d6481f3f');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('0195344f-c33c-448e-a423-5b070cadd94d', '1a74990e-2194-417d-924b-c0285883cf95', '2024-07-27', '2024-08-08', true, 'a29cd3bf-497a-4620-bebe-649bce72063e');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('0ddf75c1-866c-4598-a36f-498d24dad270', '873a4b20-5268-4394-a26f-74b555c887fb', '2024-07-28', '2024-08-10', true, 'a29cd3bf-497a-4620-bebe-649bce72063e');
INSERT INTO public."Prestamos" ("Id_libro", "Id", "Fecha_prestamo", "Fecha_devolucion", "Estado", "Id_usuario") VALUES ('17fc7119-cf17-4211-841b-3c4f0633464a', '985d6238-966b-4365-a506-554fba310037', '2024-07-27', '2024-08-08', true, 'a29cd3bf-497a-4620-bebe-649bce72063e');


                                                                                                                                                                                                                                                                                                                              4822.dat                                                                                            0000600 0004000 0002000 00000002555 14653002763 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."Usuarios" ("Id", "Nombres", "Apellido_materno", "Apellido_paterno", "Direccion", "Telefono") VALUES ('ad15f465-1c3d-485f-baa0-a88a188c9957', 'Jose Samuel', 'Granja', 'Rodriguez', 'Andador Desierto del Sahara 2053B', 4442346578);
INSERT INTO public."Usuarios" ("Id", "Nombres", "Apellido_materno", "Apellido_paterno", "Direccion", "Telefono") VALUES ('a1ff0739-1bf5-4fe6-83f4-08b4ab52e86b', 'Jaime', 'Granja', 'Rodriguez', 'General Blanco 637', 4446786543);
INSERT INTO public."Usuarios" ("Id", "Nombres", "Apellido_materno", "Apellido_paterno", "Direccion", "Telefono") VALUES ('85c8f03f-8438-4d10-8f5e-55eb2aa3e633', 'Eduardo', 'Rivera', 'Sanchez', 'Carranza 728', 4441443355);
INSERT INTO public."Usuarios" ("Id", "Nombres", "Apellido_materno", "Apellido_paterno", "Direccion", "Telefono") VALUES ('5d8cbf0d-4882-4f78-9d15-0241d6481f3f', 'Ana Gabriela', 'Perez', 'Flores', 'Valentin Amador 1456', 4447665432);
INSERT INTO public."Usuarios" ("Id", "Nombres", "Apellido_materno", "Apellido_paterno", "Direccion", "Telefono") VALUES ('a29cd3bf-497a-4620-bebe-649bce72063e', 'Jose Luis', 'Andrade', 'Melo', 'Circuito San Abel 34', 4448765398);
INSERT INTO public."Usuarios" ("Id", "Nombres", "Apellido_materno", "Apellido_paterno", "Direccion", "Telefono") VALUES ('f4a4fb2b-08f3-4f59-a020-72214d7e588b', 'Maribel', 'Cervantes', 'Orozco', 'Av. Cortes 55', 4441228745);


                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000013371 14653002763 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Biblioteca";
--
-- Name: Biblioteca; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Biblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';


ALTER DATABASE "Biblioteca" OWNER TO postgres;

\connect "Biblioteca"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Autores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Autores" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombres" character varying(50),
    "Apellido_paterno" character varying(30),
    "Apellido_materno" character varying(30)
);


ALTER TABLE public."Autores" OWNER TO postgres;

--
-- Name: Editoriales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Editoriales" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombre" character varying(80)
);


ALTER TABLE public."Editoriales" OWNER TO postgres;

--
-- Name: Generos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Generos" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombre" character varying(30)
);


ALTER TABLE public."Generos" OWNER TO postgres;

--
-- Name: Libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Libros" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Titulo" character varying(150),
    "Autor_id" uuid,
    "Editorial_id" uuid,
    "Genero_id" uuid,
    "Publicacion" smallint
);


ALTER TABLE public."Libros" OWNER TO postgres;

--
-- Name: Prestamos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Prestamos" (
    "Id_libro" uuid,
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Fecha_prestamo" date,
    "Fecha_devolucion" date,
    "Estado" boolean,
    "Id_usuario" uuid
);


ALTER TABLE public."Prestamos" OWNER TO postgres;

--
-- Name: Usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuarios" (
    "Id" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Nombres" character varying(50),
    "Apellido_materno" character varying(30),
    "Apellido_paterno" character varying(30),
    "Direccion" character varying(60),
    "Telefono" bigint
);


ALTER TABLE public."Usuarios" OWNER TO postgres;

--
-- Data for Name: Autores; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4819.dat

--
-- Data for Name: Editoriales; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4820.dat

--
-- Data for Name: Generos; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4823.dat

--
-- Data for Name: Libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4818.dat

--
-- Data for Name: Prestamos; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4821.dat

--
-- Data for Name: Usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4822.dat

--
-- Name: Autores Autores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autores"
    ADD CONSTRAINT "Autores_pkey" PRIMARY KEY ("Id");


--
-- Name: Editoriales Editoriales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editoriales"
    ADD CONSTRAINT "Editoriales_pkey" PRIMARY KEY ("Id");


--
-- Name: Generos Generos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Generos"
    ADD CONSTRAINT "Generos_pkey" PRIMARY KEY ("Id");


--
-- Name: Libros Libros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Libros_pkey" PRIMARY KEY ("Id");


--
-- Name: Prestamos Prestamos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Prestamos_pkey" PRIMARY KEY ("Id");


--
-- Name: Usuarios Usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY ("Id");


--
-- Name: Libros Autor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Autor" FOREIGN KEY ("Autor_id") REFERENCES public."Autores"("Id") NOT VALID;


--
-- Name: Libros Editorial; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Editorial" FOREIGN KEY ("Editorial_id") REFERENCES public."Editoriales"("Id") NOT VALID;


--
-- Name: Prestamos Libro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Libro" FOREIGN KEY ("Id_libro") REFERENCES public."Libros"("Id") NOT VALID;


--
-- Name: Prestamos Usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Prestamos"
    ADD CONSTRAINT "Usuario" FOREIGN KEY ("Id_usuario") REFERENCES public."Usuarios"("Id") NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       