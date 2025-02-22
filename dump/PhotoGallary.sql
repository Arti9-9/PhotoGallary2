PGDMP                         y            Web2    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    Web2    DATABASE     �   CREATE DATABASE "Web2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "Web2";
                postgres    false                       0    0    DATABASE "Web2"    COMMENT     e   COMMENT ON DATABASE "Web2" IS 'лабораторная работа по Web-разработке';
                   postgres    false    2842            �            1259    16402    publications    TABLE     �   CREATE TABLE public.publications (
    id integer NOT NULL,
    comment character varying(500),
    image character varying(1000) NOT NULL,
    "Email" character varying(100) NOT NULL,
    "averageRating" real
);
     DROP TABLE public.publications;
       public         heap    postgres    false                       0    0    TABLE publications    ACL     C   GRANT SELECT,INSERT,UPDATE ON TABLE public.publications TO "user";
          public          postgres    false    203            �            1259    16457    publications_id_seq    SEQUENCE     �   ALTER TABLE public.publications ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            �            1259    16417    ratings    TABLE     �   CREATE TABLE public.ratings (
    rating integer NOT NULL,
    "user" character varying(100) NOT NULL,
    "idR" integer NOT NULL,
    img character varying(1000) NOT NULL,
    "userPubl" character varying(100)
);
    DROP TABLE public.ratings;
       public         heap    postgres    false                       0    0    TABLE ratings    ACL     >   GRANT SELECT,INSERT,UPDATE ON TABLE public.ratings TO "user";
          public          postgres    false    204            �            1259    16459    ratings_idR_seq    SEQUENCE     �   ALTER TABLE public.ratings ALTER COLUMN "idR" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ratings_idR_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    16394    users    TABLE     �   CREATE TABLE public.users (
    "Name" character varying(100) NOT NULL,
    "Email" character varying(100) NOT NULL,
    password character varying(250) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false                       0    0    TABLE users    ACL     <   GRANT SELECT,INSERT,UPDATE ON TABLE public.users TO "user";
          public          postgres    false    202                      0    16402    publications 
   TABLE DATA           T   COPY public.publications (id, comment, image, "Email", "averageRating") FROM stdin;
    public          postgres    false    203   �                 0    16417    ratings 
   TABLE DATA           I   COPY public.ratings (rating, "user", "idR", img, "userPubl") FROM stdin;
    public          postgres    false    204   #                 0    16394    users 
   TABLE DATA           :   COPY public.users ("Name", "Email", password) FROM stdin;
    public          postgres    false    202   �                  0    0    publications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.publications_id_seq', 35, true);
          public          postgres    false    205                        0    0    ratings_idR_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."ratings_idR_seq"', 13, true);
          public          postgres    false    206            �
           2606    16409    publications publications_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
       public            postgres    false    203            �
           2606    16426    ratings ratings_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY ("idR");
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    204            �
           2606    16398    users user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY ("Email");
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    202            �
           2606    16410    publications fk_email    FK CONSTRAINT     �   ALTER TABLE ONLY public.publications
    ADD CONSTRAINT fk_email FOREIGN KEY ("Email") REFERENCES public.users("Email") NOT VALID;
 ?   ALTER TABLE ONLY public.publications DROP CONSTRAINT fk_email;
       public          postgres    false    203    202    2700               b  x���KN�0���)زp��$Nv=r7�I�G[���H�3 �G��@{�ɍp0�,�=�����<3B�>`���'�`s{}X�
���c�U��יS�qp9�<��g5��(�D��"řHk���bH�i+��TJ�)n�DT3ވ
�H�����e�x��3�s�l����E��Y�ڄ�����^������Z�����p�ɺ�VZ�+��+��7�0񹮪
U��D*4��F��8��Kݐx�M�أ4��]'7v|/�1��{A��k���ǡ�� �w�X?X�:<������V�k�z�1q���`��S�/�ie7̴0�y~Yʸ�
�;��_��mY�?��         t  x�Œ�J�0Ư�w95�Ҥ�ۃ�6Y�4Mi�m�J��|	E�!�3dodF6d�E��!|~��|�F����"�ʴG���%�A��h#j�P�r m���a��
��N�[hctS��H�-D�:+F9�9N��*���Ĉ�9��1B�S�q�S�9rp=T�p��c�Q��R&�N�v�`>���@Hwy���mk�����!�	��2�!��V�.(�PƾC�hD`��d�pI�4�_@�Ex�����7�k�k�\���oa[�x���)��ۦ�w��Ñ|�KF߹*OC�Ɔ��fU���5�05��:���ۻ��7�g���v�N��k*|F	�q��L�)!Y!����3Z"���Oq���q�����         3  x�]�Mn�@ �ᵜ��("";G��EH�f�EWMO��I��J�41ͷ��_n/�W������9�[QU�F��H�B���r��e��@�ҋa5�z��fĝб�pK��(z��;���&�!\O~�_��h�h�����{v����`
�3����E��=H3�"S3�����r�ᕲ&3(8����';m� ��jU)T1�SP�ҟ�VfӦŊ�]�|�;��X�&����'��ɭ ��לG�#�-��<��݈�1Џ,�]�0vkRGwM ��U/J%�e��륁U     