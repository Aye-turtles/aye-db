USE aye;

INSERT INTO aye.user (id, username, name, lastname, email) VALUES (1, 'josue_aguilar', 'josue', 'aguilar', 'josueaguilarjnai@gmail.com');
INSERT INTO aye.user (id, username, name, lastname, email) VALUES (2, 'angel_lara', 'angel', 'lara', 'osonefastoso@gmail.com');

INSERT INTO aye.nestlogs (id, id_nest, log_date, temperature, humidity) VALUES (1, 1, '2021-07-18 00:17:23', 25, 50);

INSERT INTO aye.status (id, name, value) VALUES (1, 'created', 'created');

INSERT INTO aye.nest (id, amount_eggs, recollection_date, status, hatching_date, collector) VALUES (1, 85, '2021-07-18', 1, '2021-09-17', 1);