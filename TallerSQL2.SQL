-- Acá creamos las tablas pais y cliente, y luego insertamos datos de ejemplo en ambas tablas.
create table
    pais (
        id_pais int primary key,
        codigo_pais varchar(3),
        nombre varchar(50),
        continente varchar(50),
        poblacion int
    );

create table
    cliente (
        id_cliente int primary key,
        id_pais int,
        nombre varchar(50),
        apellidos varchar(50),
        direccion varchar(100),
        telefono varchar(15),
        email varchar(50),
        constraint fk_cliente_pais foreign key (id_pais) references pais (id_pais)
    );

insert into
    pais (
        id_pais,
        codigo_pais,
        nombre,
        continente,
        poblacion
    )
values
    (1, '54', 'Argentina', 'América del Sur', 45195777),
    (2, '55', 'Brasil', 'América del Sur', 213993437),
    (3, '56', 'Chile', 'América del Sur', 19116209),
    (4, '58', 'Colombia', 'América del Sur', 50882891),
    (5, '51', 'Perú', 'América del Sur', 33100000);

insert into
    cliente (
        id_cliente,
        nombre,
        apellidos,
        direccion,
        telefono,
        email,
        id_pais
    )
values
    (
        1,
        'Juan',
        'Pérez',
        'Calle Falsa 123',
        '123456789',
        'juan.perez@example.com',
        1
    ),
    (
        2,
        'María',
        'González',
        'Avenida Siempre Viva 456',
        '987654321',
        'maria.gonzalez@example.com',
        2
    ),
    (
        3,
        'Carlos',
        'Ramírez',
        'Calle Luna 789',
        '456123789',
        'carlos.ramirez@example.com',
        3
    ),
    (
        4,
        'Ana',
        'Martínez',
        'Calle Sol 321',
        '789456123',
        'ana.martinez@example.com',
        4
    ),
    (
        5,
        'Luis',
        'Fernández',
        'Avenida Estrella 654',
        '321789456',
        'luis.fernandez@example.com',
        5
    );

-- Acá lo que estamos haciendo crear un select con un inner join entre las tablas pais y cliente, para obtener la cantidad de clientes por país.
-- La consulta agrupa los resultados por el nombre del país y cuenta la cantidad de clientes en cada país.
select
    p.nombre as pais,
    count(c.id_cliente) as cantidad_clientes
from
    pais p
    inner join cliente c on p.id_pais = c.id_pais
group by
    p.nombre;

-- Acá metimos más valores para hacer el AVG de la población de los países.
insert into
    cliente (
        id_cliente,
        nombre,
        apellidos,
        direccion,
        telefono,
        email,
        id_pais
    )
values
    (
        6,
        'Sofía',
        'López',
        'Calle Arco Iris 123',
        '111222333',
        'sofia.lopez@example.com',
        1
    ),
    (
        7,
        'Mateo',
        'García',
        'Avenida Primavera 456',
        '222333444',
        'mateo.garcia@example.com',
        2
    ),
    (
        8,
        'Valentina',
        'Hernández',
        'Calle Verano 789',
        '333444555',
        'valentina.hernandez@example.com',
        3
    ),
    (
        9,
        'Diego',
        'Torres',
        'Calle Invierno 321',
        '444555666',
        'diego.torres@example.com',
        4
    ),
    (
        10,
        'Camila',
        'Castro',
        'Avenida Otoño 654',
        '555666777',
        'camila.castro@example.com',
        5
    ),
    (
        11,
        'Lucas',
        'Morales',
        'Calle Primavera 987',
        '666777888',
        'lucas.morales@example.com',
        1
    ),
    (
        12,
        'Isabella',
        'Ortiz',
        'Avenida Sol 123',
        '777888999',
        'isabella.ortiz@example.com',
        2
    ),
    (
        13,
        'Martín',
        'Vargas',
        'Calle Luna 456',
        '888999000',
        'martin.vargas@example.com',
        3
    ),
    (
        14,
        'Emma',
        'Rojas',
        'Avenida Estrella 789',
        '999000111',
        'emma.rojas@example.com',
        4
    ),
    (
        15,
        'Joaquín',
        'Silva',
        'Calle Fuego 321',
        '000111222',
        'joaquin.silva@example.com',
        5
    ),
    (
        16,
        'Mía',
        'Pérez',
        'Avenida Agua 654',
        '111222333',
        'mia.perez@example.com',
        1
    ),
    (
        17,
        'Sebastián',
        'Gómez',
        'Calle Tierra 987',
        '222333444',
        'sebastian.gomez@example.com',
        2
    ),
    (
        18,
        'Lucía',
        'Díaz',
        'Avenida Aire 123',
        '333444555',
        'lucia.diaz@example.com',
        3
    ),
    (
        19,
        'Tomás',
        'Mendoza',
        'Calle Nieve 456',
        '444555666',
        'tomas.mendoza@example.com',
        4
    ),
    (
        20,
        'Victoria',
        'Reyes',
        'Avenida Mar 789',
        '555666777',
        'victoria.reyes@example.com',
        5
    );

-- -- Calcular el promedio de clientes que se encuentran en el país Colombia, apoyarsen de la función AVG consultar como se utiliza
-- select
--     avg(cantidad_clientes) as promedio_clientes
-- from
--     (
--         select
--             p.nombre as pais,
--             count(c.id_cliente) as cantidad_clientes
--         from
--             pais p
--             inner join cliente c on p.id_pais = c.id_pais
--         where
--             p.nombre = 'Colombia'
--         group by
--             p.nombre
--     ) as subquery;

-- insert into
--     cliente (
--         id_cliente,
--         nombre,
--         apellidos,
--         direccion,
--         telefono,
--         email,
--         id_pais
--     ) value (
--         22,
--         'Victor',
--         'Pérez',
--         'Avenida',
--         '5551261271277',
--         'vic.reyes@example.com',
--         4
--     );

-- Contar la cantidad de clientes que están en Colombia apoyarsen del count
select
    count(*) as cantidad_clientes
FROM
    pais p
    inner join cliente c on p.id_pais = c.id_pais
where
    p.nombre = 'Colombia';

insert into
    cliente (
        id_cliente,
        nombre,
        apellidos,
        direccion,
        telefono,
        email,
        id_pais
    ) value (
        23,
        'Victor',
        'Pérez',
        'Avenida',
        '5551261271277',
        'vic.reyes@example.com',
        4
    );

-- Crear un procedimiento almacenado para actualizar el nombre y apellidos de todos los clientes a mayúsculas usando la función UPPER.

DELIMITER //

CREATE or replace PROCEDURE actualizar_clientes()

BEGIN
    UPDATE cliente
    SET nombre = UPPER(nombre),
        apellidos = UPPER(apellidos);
END //

DELIMITER ;


DELIMITER //

CREATE or replace PROCEDURE actualizar_correos()

BEGIN
    UPDATE cliente
    SET email = UPPER(email);
      
END //

DELIMITER ;
