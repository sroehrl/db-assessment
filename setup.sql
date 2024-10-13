create table animal -- or replace
(
    id   int auto_increment primary key,
        primary key,
    name varchar(255) null
);

create table extremity -- or replace
(
    id       int auto_increment,
        primary key,
    animalId int not null,
    legs     int null,
    tails    int null,
    constraint extremity_animal_id_fk
        foreign key (animalId) references animal (id)
);

create table pet -- or replace
(
    uuid        binary(16)   not null
        primary key,
    animalId    int          not null,
    givenName   varchar(255) not null,
    dateOfBirth datetime     not null,
    gender      tinyint      not null -- comment '0 = female, 1 = male',
    constraint pet_animal_id_fk
        foreign key (animalId) references animal (id)
);

INSERT INTO animal (id, name) VALUES
                                        (1, 'snake'),
                                        (2, 'dog'),
                                        (3, 'cat'),
                                        (4, 'pigeon');

INSERT INTO extremity (id, animalId, legs, tails) VALUES
                                                                (1, 1, 0, 1),
                                                                (2, 2, 4, 1),
                                                                (3, 3, 4, 1),
                                                                (4, 4, 2, 1);

INSERT INTO pet (uuid, animalId, givenName, dateOfBirth, gender) VALUES
                                                                                 (0x33313636363236353636333533393336, 1, 'Anna', '2024-10-12 11:08:57', 0),
                                                                                 (0x33323636333936323633363433383337, 4, 'Paul', '2021-08-11 00:00:00', 1),
                                                                                 (0x33353331333533333635333933333338, 1, 'Berta', '2023-11-12 00:00:00', 0),
                                                                                 (0x33383334333036353338333633323636, 2, 'Henry', '2022-06-02 00:00:00', 1),
                                                                                 (0x33393631333136313333333236353632, 2, 'Magda', '2020-01-02 00:00:00', 0),
                                                                                 (0x36323333333836363333363233353332, 2, 'Tony', '2018-01-02 00:00:00', 1),
                                                                                 (0x36343337333736353635333136363635, 3, 'Felix', '2019-08-20 00:00:00', 1),
                                                                                 (0x36353334333933383339333336343335, 3, 'Mandy', '2022-06-24 00:00:00', 0),
                                                                                 (0x36363633333936353634333336343332, 3, 'Linda', '2018-11-03 00:00:00', 0);