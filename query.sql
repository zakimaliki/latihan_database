create database kuliah;
\l;
\c kuliah;


-- struktur tabel

create table mahasiswa(
    nim int primary key,
    nama varchar(255),
    age int
);

create table dosen(
    id_dosen int primary key,
    nama varchar(255),
    age int
);


create table jurusan(
    kode_jurusan varchar(255) primary key,
    nama_jurusan varchar(255),
    fakulutas varchar(255),
    id_dosen int,
    CONSTRAINT fk_dosen FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);


create table mata_kuliah(
    id_mata_kuliah int primary key,
    nama_mata_kuliah varchar(255),
    sks int
);

create table nilai(
    id_nilai int primary key,
    id_mata_kuliah int,
    CONSTRAINT fk_mata_kuliah FOREIGN KEY (id_mata_kuliah) REFERENCES mata_kuliah(id_mata_kuliah), 
    nim int ,
    CONSTRAINT fk_nim FOREIGN KEY (nim) REFERENCES mahasiswa(nim) 
);

-- CRUD TABEL MAHASISWA
-- insert 
-- insert into mahasiswa(nim,nama,age) values(1,'zero',19),(2,'zeroo',20);
-- read
-- select * from mahasiswa;
-- select nama,age from mahasiswa;
-- update 
-- update mahasiswa set nama='zeroUpdate' , age=22 where nim=1;
-- update mahasiswa set nama='zeroUpdate' , age=22 where nim IN(1,2);
-- delete
-- delete from mahasiwa where nim=1;
-- delete from mahasiwa where nim in(1,2);

