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