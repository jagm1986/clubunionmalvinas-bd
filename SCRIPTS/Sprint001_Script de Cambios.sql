create table estado_socio
(
    id          bigint       not null
        primary key,
    descripcion varchar(255) null
);

create table socio
(
    id                bigint       not null
        primary key,
    apellido          varchar(255) null,
    direccion         varchar(255) null,
    documento         varchar(255) null,
    email             varchar(255) null,
    fecha_socio       varchar(255) null,
    nombre            varchar(255) null,
    telefono          varchar(255) null,
    url_foto          varchar(255) null,
    estado_socio_id   bigint       null,
    tipo_documento_id bigint       null,
    constraint FK1ktmvw7ujxnm0wn5pxxbc7dtw
        foreign key (tipo_documento_id) references tipo_documento (id),
    constraint FKn2de2e3guudsmb4auge07slnf
        foreign key (estado_socio_id) references estado_socio (id)
);

import random


names = ['Carlos', 'Pedro', 'Andres', 'Diego', 'Matias', 'Jose', 'Iris', 'Pablo', 'Eric', 'Gonzalo', 'Carla', 'Camila', 'Serena', 'Enzo', 'Silvia']
lastNames = ['Paglia', 'Gudin', 'Juarez', 'Perez', 'Gonzalez', 'Ibañez', 'Romarino', 'Riquelme', 'Zelarayan', 'Vegetti', 'Luna', 'Diaz', 'Lozada', 'Herrera', 'Dybala', 'Messi', 'Hesar']

print('INSERT INTO socio(apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)  values ')
for i in range(30):
    nombre = random.choice(names)
    apellido = random.choice(lastNames)
    email = nombre+apellido+'@gmail.com'
    direccion = 'Av. Siempre Viva' + str(random.randint(100, 9999))
    telefono = '351' + str(random.randint(1000000,9999999))
    documento = str(random.randint(1000000,99999999))
    fecha = '06/05/2022'
    foto = 'foto.png'
    estado= '1'
    tipo_doc= '1'
    print("('" + apellido+"', '"+direccion+"', '"+documento+"', '"+email+"', '"+fecha+"', '"+nombre+"', '"+telefono+"', '"+foto+"', '"+estado+"', '"+tipo_doc+"'),")

