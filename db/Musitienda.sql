CREATE DATABASE IF NOT EXISTS Musitienda;
USE musitienda;

DROP TABLE IF EXISTS Provinces;

CREATE TABLE Provinces (
    id int primary key auto_increment not null, name varchar(100) not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    Provinces (name)
VALUES ('Buenos Aires'),
    ('CABA'),
    ('Catamarca'),
    ('Chaco'),
    ('Chubut'),
    ('Córdoba'),
    ('Corrientes'),
    ('Entre Ríos'),
    ('Formosa'),
    ('Jujuy'),
    ('La Pampa'),
    ('La Rioja'),
    ('Mendoza'),
    ('Misiones'),
    ('Neuquén'),
    ('Río Negro'),
    ('Salta'),
    ('San Juan'),
    ('San Luis'),
    ('Santa Cruz'),
    ('Santa Fe'),
    ('Santiago del Estero'),
    ('Tierra del Fuego'),
    ('Tucumán');

DROP TABLE IF EXISTS Cities;

CREATE TABLE Cities (
    id int primary key auto_increment not null, name varchar(100) not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAtproductscities timestamp DEFAULT CURRENT_TIMESTAMP, provinces_id int not null, constraint foreign key (provinces_id) references Provinces (id)
);

INSERT INTO
    Cities (name, provinces_id)
VALUES ('Buenos Aires Ciudad', 1),
    ('La Plata', 1),
    ('Mar del Plata', 1),
    ('Quilmes', 1),
    ('La Matanza', 1),
    ('San Isidro', 1),
    ('Tigre', 1),
    ('Lomas de Zamora', 1),
    ('Avellaneda', 1),
    ('Banfield', 1),
    ('Balvanera', 2),
    ('Belgrano', 2),
    ('Recoleta', 2),
    ('Palermo', 2),
    ('Caballito', 2),
    ('San Telmo', 2),
    ('Nueva Pompeya', 2),
    ('Villa Crespo', 2),
    ('Almagro', 2),
    ('Villa Urquiza', 2),
    (
        'San Fernando del Valle de Catamarca', 3
    ),
    ('San Isidro', 3),
    ('San José', 3),
    ('Santa Rosa', 3),
    ('Recreo', 3),
    ('Valle Viejo', 3),
    ('Fray Mamerto Esquiú', 3),
    ('Tinogasta', 3),
    ('Belén', 3),
    ('Andalgalá', 3),
    ('Resistencia', 4),
    ('Barranqueras', 4),
    ('Fontana', 4),
    (
        'Presidencia Roque Sáenz Peña', 4
    ),
    ('Villa Ángela', 4),
    ('Charata', 4),
    ('Machagai', 4),
    ('Castelli', 4),
    ('Quitilipi', 4),
    ('Las Breñas', 4),
    ('Comodoro Rivadavia', 5),
    ('Trelew', 5),
    ('Puerto Madryn', 5),
    ('Esquel', 5),
    ('Rawson', 5),
    ('Gaiman', 5),
    ('Dolavon', 5),
    ('Sarmiento', 5),
    ('Trevelin', 5),
    ('El Hoyo', 5),
    ('Córdoba', 6),
    ('Villa María', 6),
    ('Río Cuarto', 6),
    ('Jesús María', 6),
    ('Alta Gracia', 6),
    ('Bell Ville', 6),
    ('La Carlota', 6),
    ('San Francisco', 6),
    ('Villa Allende', 6),
    ('Río Tercero', 6),
    ('Corrientes', 7),
    ('Goya', 7),
    ('Mercedes', 7),
    ('Curuzú Cuatiá', 7),
    ('Esquina', 7),
    ('Bella Vista', 7),
    ('Santo Tomé', 7),
    ('Ituzaingó', 7),
    ('Monte Caseros', 7),
    ('Paso de los Libres', 7),
    ('Paraná', 8),
    ('Concordia', 8),
    ('Gualeguaychú', 8),
    ('Chajarí', 8),
    ('Villaguay', 8),
    ('Gualeguay', 8),
    ('Diamante', 8),
    ('Victoria', 8),
    ('La Paz', 8),
    ('Federación', 8),
    ('Formosa', 9),
    ('Clorinda', 9),
    ('Pirané', 9),
    ('Las Lomitas', 9),
    ('El Colorado', 9),
    ('San Martín 1', 9),
    ('Comandante Fontana', 9),
    ('Ibarreta', 9),
    ('General Güemes', 9),
    ('Herradura', 9),
    ('San Salvador de Jujuy', 10),
    ('San Pedro', 10),
    ('La Quiaca', 10),
    ('Palpalá', 10),
    (
        'Libertador General San Martín', 10
    ),
    ('Humahuaca', 10),
    ('Perico', 10),
    ('El Carmen', 10),
    ('Tilcara', 10),
    ('Abra Pampa', 10),
    ('Santa Rosa', 11),
    ('General Pico', 11),
    ('Toay', 11),
    ('Victorica', 11),
    ('Eduardo Castex', 11),
    ('Realicó', 11),
    ('Macachín', 11),
    ('General Acha', 11),
    ('General Campos', 11),
    ('Alpachiri', 11),
    ('La Rioja', 12),
    ('Chilecito', 12),
    ('Aimogasta', 12),
    ('Chepes', 12),
    ('Chamical', 12),
    ('Villa Unión', 12),
    ('Famatina', 12),
    ('Tama', 12),
    ('Olta', 12),
    ('Villa Castelli', 12),
    ('Mendoza', 13),
    ('San Rafael', 13),
    ('Godoy Cruz', 13),
    ('Guaymallén', 13),
    ('Las Heras', 13),
    ('Maipú', 13),
    ('Luján de Cuyo', 13),
    ('Malargüe', 13),
    ('San Martín', 13),
    ('Tunuyán', 13),
    ('Posadas', 14),
    ('Puerto Iguazú', 14),
    ('Oberá', 14),
    ('Eldorado', 14),
    ('San Vicente', 14),
    ('Apóstoles', 14),
    ('Montecarlo', 14),
    ('Jardín América', 14),
    ('Aristóbulo del Valle', 14),
    ('Leandro N. Alem', 14),
    ('Neuquén', 15),
    ('Cutral Có', 15),
    ('Plottier', 15),
    ('Zapala', 15),
    ('Centenario', 15),
    ('Villa Regina', 15),
    ('Chos Malal', 15),
    ('Senillosa', 15),
    ('Rincón de los Sauces', 15),
    ('San Martín de los Andes', 15),
    ('Viedma', 16),
    ('General Roca', 16),
    ('Cipolletti', 16),
    ('San Carlos de Bariloche', 16),
    ('Cinco Saltos', 16),
    ('Allen', 16),
    ('El Bolsón', 16),
    ('Catriel', 16),
    ('Ingeniero Huergo', 16),
    ('Choele Choel', 16),
    ('Salta', 17),
    (
        'San Ramón de la Nueva Orán', 17
    ),
    ('San Salvador de Jujuy', 17),
    ('Tartagal', 17),
    ('Embarcación', 17),
    ('Metán', 17),
    ('Cafayate', 17),
    ('El Carril', 17),
    ('Rosario de la Frontera', 17),
    ('La Caldera', 17),
    ('San Juan', 18),
    ('Rawson', 18),
    ('Chimbas', 18),
    ('Santa Lucía', 18),
    ('Pocito', 18),
    ('Caucete', 18),
    ('Albardón', 18),
    ('Rivadavia', 18),
    ('Zonda', 18),
    ('San Martín', 18),
    ('San Luis', 19),
    ('Villa Mercedes', 19),
    ('Merlo', 19),
    ('La Toma', 19),
    ('Nueva Galia', 19),
    ('Quines', 19),
    ('Concarán', 19),
    ('Santa Rosa del Conlara', 19),
    ('Juana Koslay', 19),
    ('La Punta', 19),
    ('Río Gallegos', 20),
    ('Caleta Olivia', 20),
    ('El Calafate', 20),
    ('Puerto Deseado', 20),
    ('Pico Truncado', 20),
    ('Las Heras', 20),
    ('Perito Moreno', 20),
    ('28 de Noviembre', 20),
    ('Río Turbio', 20),
    ('Gobernador Gregores', 20),
    ('Santa Fe', 21),
    ('Rosario', 21),
    ('Santo Tomé', 21),
    ('Venado Tuerto', 21),
    ('Reconquista', 21),
    ('Rafaela', 21),
    ('Funes', 21),
    ('Granadero Baigorria', 21),
    ('Capitán Bermúdez', 21),
    ('Villa Gobernador Gálvez', 21),
    ('Santiago del Estero', 22),
    ('La Banda', 22),
    ('Termas de Río Hondo', 22),
    ('Fernández', 22),
    ('Añatuya', 22),
    ('Suncho Corral', 22),
    ('Santiago Temple', 22),
    ('Bandera', 22),
    ('Forres', 22),
    ('Frías', 22),
    ('Ushuaia', 23),
    ('Río Grande', 23),
    ('Tolhuin', 23),
    ('Puerto Almanza', 23),
    ('San Sebastián', 23),
    ('Lago Escondido', 23),
    ('Porvenir', 23),
    ('Cerro Sombrero', 23),
    ('Cameron', 23),
    ('Cullen', 23),
    ('San Miguel de Tucumán', 24),
    ('Yerba Buena', 24),
    ('Concepción', 24),
    ('Banda del Río Salí', 24),
    ('Alderetes', 24),
    ('Tafí Viejo', 24),
    ('Lastenia', 24),
    ('Río Seco', 24),
    ('Famaillá', 24),
    ('Monteros', 24);

DROP TABLE IF EXISTS Brands;

CREATE TABLE Brands (
    id int primary key auto_increment not null, name varchar(100) not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    Brands (name)
VALUES ('Meedoo'),
    ('Leenti'),
    ('Youspan'),
    ('Topdrive'),
    ('Zazio'),
    ('Abatz'),
    ('Fatz'),
    ('Divavu'),
    ('Skyndu'),
    ('Aimbu'),
    ('Trilith'),
    ('Bubblebox'),
    ('Gabvine'),
    ('Buzzbean'),
    ('Agivu'),
    ('Topiczoom'),
    ('Meedoo'),
    ('Realcube'),
    ('Pixope'),
    ('Edgeblab'),
    ('Buzzdog'),
    ('Oloo'),
    ('Ntag'),
    ('Photojam'),
    ('Agimba'),
    ('Babbleblab'),
    ('Zoomcast'),
    ('Oba'),
    ('Linkbridge'),
    ('Tazzy'),
    ('Jamia'),
    ('Agivu'),
    ('Centimia'),
    ('Fivebridge'),
    ('Fivespan'),
    ('Flipbug'),
    ('Skyvu'),
    ('Babbleset'),
    ('Eare'),
    ('Dabfeed'),
    ('Miboo'),
    ('Wordpedia'),
    ('Gabcube'),
    ('Mynte'),
    ('Skajo'),
    ('Cogidoo'),
    ('Jabbercube'),
    ('Rhybox'),
    ('Edgepulse'),
    ('Twinte');

DROP TABLE IF EXISTS Categories;

CREATE TABLE Categories (
    id int primary key auto_increment not null, name varchar(100) not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    Categories (name)
VALUES ('Cuerda'),
    (
        'madera (instrumento de viento)'
    ),
    (
        'metal (instrumento de viento)'
    ),
    ('percusión'),
    ('teclado'),
    (
        'cuerda (instrumento de cuerda)'
    ),
    ('electrónico'),
    ('folklórico'),
    ('vocal');

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    id int primary key auto_increment not null, name varchar(100) not null, brands_id int not null, fabrication_year char(4), price double, description text, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (brands_id) references Brands (id)
);

INSERT INTO
    Products (
        name, brands_id, fabrication_year, price, description
    )
VALUES (
        'guitar', '8', '2010', '16724.72', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'piano', '10', '1992', '49191.53', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'drums', '2', '1997', '58491.34', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'violin', '46', '1996', '81851.34', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'trumpet', '34', '1995', '83814.04', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'flute', '32', '2011', '97602.46', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'saxophone', '4', '2007', '2243.7', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'clarinet', '46', '1992', '34377.37', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'ukulele', '46', '2003', '49806.77', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'accordion', '36', '2009', '59615.37', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'banjo', '26', '1963', '43447.26', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'cello', '20', '2012', '88957.82', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'harp', '42', '2007', '55715.25', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'trombone', '5', '1993', '89296.42', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bass guitar', '44', '2010', '11671.09', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'harmonica', '20', '2000', '63229.3', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'xylophone', '4', '2004', '93358.49', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bagpipes', '34', '2001', '39067.02', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'maracas', '18', '1995', '58385.55', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'tambourine', '17', '1997', '76203.29', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'djembe', '1', '2002', '34469.96', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'didgeridoo', '9', '1964', '98839.86', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'mandolin', '3', '2006', '94941.41', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'oboe', '30', '1989', '55550.43', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bassoon', '12', '2012', '72727.76', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'conga', '46', '2005', '94372.8', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'tabla', '31', '1988', '67899.3', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'synthesizer', '22', '1995', '61323.78', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'keyboard', '3', '1993', '17431.19', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'electric guitar', '33', '2004', '22757.52', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'steel drum', '15', '2002', '22900.74', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'theremin', '11', '2003', '97085.73', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'vibraphone', '9', '1989', '82123.51', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'kalimba', '39', '1999', '59560.79', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'ukulele', '22', '2012', '75019.87', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'oud', '43', '2005', '56091.86', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'sitar', '2', '1990', '37473.06', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'erhu', '30', '2007', '54145.12', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'pan flute', '8', '1995', '43977.63', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bongo', '3', '1994', '56815.52', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'guzheng', '30', '2012', '71827.7', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'shamisen', '19', '2010', '93481.73', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'koto', '33', '1996', '88314.56', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'dulcimer', '4', '1996', '55050.99', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'zither', '21', '2005', '11217.75', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'mouth organ', '14', '2011', '81077.71', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'glockenspiel', '20', '2003', '48202.8', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'marimba', '29', '1997', '28533.0', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'timpani', '18', '2008', '80298.31', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'guitar', '26', '2002', '91191.42', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'piano', '2', '2008', '45615.17', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'drums', '21', '1994', '385.97', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'violin', '7', '1996', '2332.68', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'trumpet', '21', '2011', '19623.6', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'flute', '27', '1996', '19243.21', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'saxophone', '23', '1993', '1783.68', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'clarinet', '37', '1996', '87007.38', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'ukulele', '39', '2010', '60302.96', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'accordion', '18', '2009', '93237.71', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'banjo', '50', '2004', '31699.58', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'cello', '12', '1993', '2146.1', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'harp', '35', '2008', '60181.04', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'trombone', '9', '1998', '84526.27', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bass guitar', '43', '1992', '2818.9', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'harmonica', '23', '2012', '18985.34', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'xylophone', '1', '2010', '42005.69', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bagpipes', '35', '2011', '43912.07', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'maracas', '19', '1989', '32084.31', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'tambourine', '35', '1998', '50488.9', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'djembe', '17', '2011', '81404.19', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'didgeridoo', '29', '2007', '76627.25', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'mandolin', '7', '1983', '78200.47', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'oboe', '13', '2005', '77025.59', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bassoon', '16', '2011', '93529.63', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'conga', '8', '1995', '23092.03', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'tabla', '40', '1994', '10837.22', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'synthesizer', '38', '2008', '57492.28', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'keyboard', '5', '2003', '55591.49', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'electric guitar', '30', '1995', '53520.8', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'steel drum', '8', '1998', '57215.63', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'theremin', '28', '2010', '95316.8', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'vibraphone', '36', '2006', '43972.73', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'kalimba', '42', '1999', '64736.52', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'ukulele', '4', '1994', '91696.07', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'oud', '18', '1998', '67510.92', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'sitar', '18', '1988', '32278.93', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'erhu', '4', '1986', '34782.82', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'pan flute', '21', '1993', '59762.21', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'bongo', '32', '1984', '28329.41', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'guzheng', '49', '2004', '78565.94', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'shamisen', '45', '2008', '71502.23', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'koto', '36', '2004', '75202.37', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'dulcimer', '49', '2011', '4417.1', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'zither', '20', '2006', '6756.53', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'mouth organ', '15', '1996', '4064.14', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'glockenspiel', '32', '1996', '14254.34', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'marimba', '44', '1985', '95326.0', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'timpani', '48', '2009', '93239.92', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'guitar', '2', '2003', '85900.86', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    ),
    (
        'piano', '39', '1993', '31376.89', 'Esto es una descripcion generica para poder probar toda la info de los productos'
    );

DROP TABLE IF EXISTS Images;

CREATE TABLE Images (
    id int primary key auto_increment not null, name text not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    Images (name)
VALUES ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg'),
    ('product-1706032306048.jpeg');

DROP TABLE IF EXISTS Products_Images;

CREATE TABLE Products_Images (
    id int primary key auto_increment not null, products_id int not null, images_id int not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (products_id) references Products (id), constraint foreign key (images_id) references Images (id)
);

INSERT INTO
    Products_Images (products_id, images_id)
VALUES ('16', '73'),
    ('38', '56'),
    ('84', '97'),
    ('30', '3'),
    ('3', '67'),
    ('18', '80'),
    ('21', '43'),
    ('76', '92'),
    ('42', '88'),
    ('43', '13'),
    ('31', '24'),
    ('28', '42'),
    ('8', '35'),
    ('26', '44'),
    ('92', '71'),
    ('4', '25'),
    ('17', '14'),
    ('20', '79'),
    ('64', '70'),
    ('32', '55'),
    ('42', '40'),
    ('31', '65'),
    ('50', '1'),
    ('60', '89'),
    ('38', '83'),
    ('80', '26'),
    ('37', '71'),
    ('98', '8'),
    ('5', '46'),
    ('13', '49'),
    ('6', '6'),
    ('22', '34'),
    ('67', '9'),
    ('100', '72'),
    ('98', '72'),
    ('68', '55'),
    ('89', '20'),
    ('54', '89'),
    ('20', '16'),
    ('95', '17'),
    ('40', '6'),
    ('40', '10'),
    ('45', '18'),
    ('96', '43'),
    ('90', '2'),
    ('56', '83'),
    ('4', '72'),
    ('44', '5'),
    ('11', '58'),
    ('74', '34'),
    ('86', '89'),
    ('15', '50'),
    ('65', '22'),
    ('71', '18'),
    ('37', '94'),
    ('40', '44'),
    ('7', '31'),
    ('69', '39'),
    ('40', '49'),
    ('23', '74'),
    ('64', '81'),
    ('33', '39'),
    ('69', '38'),
    ('26', '27'),
    ('61', '27'),
    ('25', '48'),
    ('52', '47'),
    ('94', '90'),
    ('5', '50'),
    ('75', '78'),
    ('93', '42'),
    ('24', '90'),
    ('7', '75'),
    ('57', '29'),
    ('49', '43'),
    ('71', '32'),
    ('7', '82'),
    ('36', '79'),
    ('27', '38'),
    ('49', '84'),
    ('70', '76'),
    ('86', '81'),
    ('32', '83'),
    ('81', '58'),
    ('17', '3'),
    ('8', '66'),
    ('6', '37'),
    ('43', '67'),
    ('84', '65'),
    ('78', '85'),
    ('98', '57'),
    ('82', '43'),
    ('73', '97'),
    ('46', '32'),
    ('3', '39'),
    ('97', '63'),
    ('88', '19'),
    ('37', '83'),
    ('18', '62'),
    ('88', '17'),
    ('11', '24'),
    ('63', '65'),
    ('47', '80'),
    ('25', '26'),
    ('36', '31'),
    ('40', '19'),
    ('58', '22'),
    ('83', '25'),
    ('29', '55'),
    ('35', '6'),
    ('97', '100'),
    ('12', '44'),
    ('30', '84'),
    ('88', '7'),
    ('50', '52'),
    ('15', '24'),
    ('57', '92'),
    ('6', '2'),
    ('6', '10'),
    ('62', '49'),
    ('50', '13'),
    ('66', '31'),
    ('87', '97'),
    ('23', '21'),
    ('97', '89'),
    ('58', '37'),
    ('79', '47'),
    ('49', '91'),
    ('26', '17'),
    ('52', '73'),
    ('8', '92'),
    ('97', '49'),
    ('35', '61'),
    ('6', '37'),
    ('38', '37'),
    ('16', '77'),
    ('46', '21'),
    ('43', '31'),
    ('91', '66'),
    ('86', '7'),
    ('7', '35'),
    ('31', '50'),
    ('68', '40'),
    ('88', '22'),
    ('41', '54'),
    ('88', '59'),
    ('71', '88'),
    ('26', '31'),
    ('93', '85'),
    ('78', '2'),
    ('3', '30'),
    ('4', '52'),
    ('97', '12'),
    ('7', '39'),
    ('93', '35'),
    ('78', '37'),
    ('70', '17'),
    ('40', '85'),
    ('11', '25'),
    ('18', '54'),
    ('55', '49'),
    ('1', '52'),
    ('75', '90'),
    ('78', '66'),
    ('28', '5'),
    ('67', '86'),
    ('77', '55'),
    ('87', '47'),
    ('78', '20'),
    ('51', '97'),
    ('71', '20'),
    ('39', '41'),
    ('73', '24'),
    ('88', '13'),
    ('30', '49'),
    ('98', '25'),
    ('92', '12'),
    ('96', '89'),
    ('81', '65'),
    ('51', '29'),
    ('25', '72'),
    ('58', '31'),
    ('6', '64'),
    ('42', '61'),
    ('85', '87'),
    ('27', '67'),
    ('11', '61'),
    ('28', '57'),
    ('55', '82'),
    ('69', '67'),
    ('82', '49'),
    ('83', '52'),
    ('29', '14'),
    ('43', '48'),
    ('90', '61'),
    ('54', '60'),
    ('21', '38'),
    ('70', '89'),
    ('44', '7'),
    ('91', '81'),
    ('56', '28'),
    ('62', '29'),
    ('42', '75'),
    ('52', '35'),
    ('91', '82'),
    ('4', '22'),
    ('89', '58'),
    ('55', '53'),
    ('25', '40'),
    ('4', '41'),
    ('49', '68'),
    ('78', '78'),
    ('19', '22'),
    ('91', '66'),
    ('74', '35'),
    ('2', '91'),
    ('54', '88'),
    ('2', '1'),
    ('82', '38'),
    ('30', '40'),
    ('100', '1'),
    ('90', '77'),
    ('4', '55'),
    ('38', '18'),
    ('6', '89'),
    ('51', '52'),
    ('61', '5'),
    ('18', '52'),
    ('75', '10'),
    ('64', '77'),
    ('49', '62'),
    ('91', '57'),
    ('50', '48'),
    ('2', '92'),
    ('95', '31'),
    ('21', '79'),
    ('9', '91'),
    ('66', '22'),
    ('21', '84'),
    ('61', '25'),
    ('94', '83'),
    ('23', '19'),
    ('76', '13'),
    ('13', '49'),
    ('92', '27'),
    ('2', '79'),
    ('39', '21'),
    ('56', '20'),
    ('15', '37'),
    ('62', '69'),
    ('28', '71'),
    ('63', '24'),
    ('100', '79'),
    ('47', '99'),
    ('20', '14'),
    ('32', '39'),
    ('49', '2'),
    ('19', '36'),
    ('80', '21'),
    ('99', '89'),
    ('78', '80'),
    ('86', '36'),
    ('73', '82'),
    ('96', '21'),
    ('16', '66'),
    ('94', '3'),
    ('69', '58'),
    ('20', '45'),
    ('64', '30'),
    ('19', '75'),
    ('92', '20'),
    ('38', '81'),
    ('17', '46'),
    ('34', '69'),
    ('60', '17'),
    ('14', '13'),
    ('67', '44'),
    ('83', '67'),
    ('14', '86'),
    ('13', '83'),
    ('52', '9'),
    ('34', '2'),
    ('23', '26'),
    ('54', '14'),
    ('88', '51'),
    ('7', '82'),
    ('82', '57'),
    ('28', '9'),
    ('40', '30'),
    ('29', '10'),
    ('4', '18'),
    ('86', '30'),
    ('38', '67'),
    ('96', '81'),
    ('60', '68'),
    ('46', '34'),
    ('67', '25'),
    ('84', '14'),
    ('29', '41');

DROP TABLE IF EXISTS Products_Categories;

CREATE TABLE Products_Categories (
    id int primary key auto_increment not null, products_id int not null, categories_id int not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (categories_id) references Categories (id), constraint foreign key (products_id) references Products (id)
);

INSERT INTO
    Products_Categories (products_id, categories_id)
VALUES ('52', '5'),
    ('52', '5'),
    ('93', '6'),
    ('22', '2'),
    ('71', '7'),
    ('79', '9'),
    ('49', '2'),
    ('76', '8'),
    ('63', '8'),
    ('26', '5'),
    ('31', '5'),
    ('22', '6'),
    ('97', '2'),
    ('11', '7'),
    ('56', '4'),
    ('75', '1'),
    ('44', '7'),
    ('3', '9'),
    ('92', '8'),
    ('55', '8'),
    ('66', '5'),
    ('15', '1'),
    ('30', '6'),
    ('44', '1'),
    ('35', '8'),
    ('13', '9'),
    ('81', '1'),
    ('26', '2'),
    ('47', '8'),
    ('49', '1'),
    ('34', '6'),
    ('6', '1'),
    ('36', '7'),
    ('59', '4'),
    ('34', '4'),
    ('3', '6'),
    ('49', '1'),
    ('57', '2'),
    ('14', '7'),
    ('88', '2'),
    ('5', '6'),
    ('8', '4'),
    ('77', '5'),
    ('81', '3'),
    ('29', '2'),
    ('14', '8'),
    ('13', '9'),
    ('20', '1'),
    ('60', '3'),
    ('5', '2'),
    ('63', '5'),
    ('73', '7'),
    ('10', '8'),
    ('100', '8'),
    ('1', '4'),
    ('83', '9'),
    ('55', '9'),
    ('15', '7'),
    ('3', '9'),
    ('50', '8'),
    ('12', '9'),
    ('24', '4'),
    ('73', '9'),
    ('28', '8'),
    ('26', '6'),
    ('77', '6'),
    ('21', '7'),
    ('21', '2'),
    ('59', '2'),
    ('80', '3'),
    ('71', '8'),
    ('35', '6'),
    ('74', '2'),
    ('40', '5'),
    ('2', '8'),
    ('98', '8'),
    ('51', '7'),
    ('77', '1'),
    ('6', '3'),
    ('1', '4'),
    ('70', '1'),
    ('77', '9'),
    ('68', '1'),
    ('29', '1'),
    ('5', '1'),
    ('14', '9'),
    ('94', '4'),
    ('9', '1'),
    ('1', '4'),
    ('67', '2'),
    ('27', '2'),
    ('22', '1'),
    ('17', '3'),
    ('46', '3'),
    ('93', '3'),
    ('59', '9'),
    ('5', '4'),
    ('33', '5'),
    ('58', '2'),
    ('77', '7'),
    ('77', '6'),
    ('53', '3'),
    ('94', '4'),
    ('18', '8'),
    ('9', '6'),
    ('22', '5'),
    ('15', '4'),
    ('95', '9'),
    ('11', '5'),
    ('68', '6'),
    ('99', '1'),
    ('86', '2'),
    ('8', '6'),
    ('81', '2'),
    ('72', '3'),
    ('80', '1'),
    ('77', '9'),
    ('20', '1'),
    ('84', '4'),
    ('20', '3'),
    ('89', '1'),
    ('16', '9'),
    ('93', '1'),
    ('21', '4'),
    ('58', '5'),
    ('13', '4'),
    ('60', '8'),
    ('51', '4'),
    ('56', '1'),
    ('45', '9'),
    ('58', '7'),
    ('47', '8'),
    ('19', '8'),
    ('64', '8'),
    ('47', '5'),
    ('30', '9'),
    ('55', '2'),
    ('9', '1'),
    ('14', '7'),
    ('79', '6'),
    ('44', '3'),
    ('47', '7'),
    ('59', '1'),
    ('6', '5'),
    ('6', '5'),
    ('80', '5'),
    ('16', '8'),
    ('42', '7'),
    ('41', '4'),
    ('82', '8'),
    ('45', '3'),
    ('78', '2'),
    ('17', '4'),
    ('6', '2'),
    ('21', '1'),
    ('31', '4'),
    ('52', '6'),
    ('73', '4'),
    ('54', '4'),
    ('29', '6'),
    ('63', '9'),
    ('96', '5'),
    ('73', '5'),
    ('66', '6'),
    ('29', '3'),
    ('92', '3'),
    ('4', '2'),
    ('54', '5'),
    ('20', '4'),
    ('51', '5'),
    ('3', '7'),
    ('40', '9'),
    ('94', '9'),
    ('5', '3'),
    ('40', '8'),
    ('49', '2'),
    ('12', '3'),
    ('77', '5'),
    ('82', '8'),
    ('11', '9'),
    ('42', '1'),
    ('32', '8'),
    ('2', '4'),
    ('3', '8'),
    ('30', '9'),
    ('94', '1'),
    ('70', '5'),
    ('75', '3'),
    ('5', '8'),
    ('68', '6'),
    ('23', '7'),
    ('70', '7'),
    ('61', '9'),
    ('97', '7'),
    ('12', '7'),
    ('55', '4'),
    ('98', '1'),
    ('3', '6'),
    ('32', '9'),
    ('12', '3'),
    ('60', '5'),
    ('56', '9'),
    ('39', '9'),
    ('95', '3'),
    ('24', '3'),
    ('50', '3'),
    ('9', '4'),
    ('80', '5'),
    ('97', '8'),
    ('56', '2'),
    ('41', '6'),
    ('37', '6'),
    ('87', '8'),
    ('21', '2'),
    ('20', '1'),
    ('56', '9'),
    ('89', '5'),
    ('20', '9'),
    ('42', '7'),
    ('49', '4'),
    ('45', '9'),
    ('71', '3'),
    ('72', '7'),
    ('44', '7'),
    ('47', '1'),
    ('43', '7'),
    ('78', '9'),
    ('21', '1'),
    ('82', '2'),
    ('96', '8'),
    ('50', '5'),
    ('45', '7'),
    ('51', '1'),
    ('1', '5'),
    ('34', '5'),
    ('83', '8'),
    ('66', '2'),
    ('63', '7'),
    ('77', '1'),
    ('88', '1'),
    ('70', '2'),
    ('98', '9'),
    ('79', '7'),
    ('38', '3'),
    ('1', '4'),
    ('76', '6'),
    ('67', '1'),
    ('70', '6'),
    ('69', '1'),
    ('81', '7'),
    ('59', '7'),
    ('28', '8'),
    ('22', '3'),
    ('89', '3'),
    ('66', '8'),
    ('65', '6'),
    ('86', '8'),
    ('6', '4'),
    ('58', '1'),
    ('50', '9'),
    ('63', '9'),
    ('80', '7'),
    ('98', '5'),
    ('31', '2'),
    ('89', '9'),
    ('87', '3'),
    ('7', '1'),
    ('43', '3'),
    ('71', '2'),
    ('41', '4'),
    ('36', '6'),
    ('38', '4'),
    ('4', '4'),
    ('61', '6'),
    ('12', '6'),
    ('56', '2'),
    ('10', '1'),
    ('19', '3'),
    ('2', '4'),
    ('57', '4'),
    ('99', '1'),
    ('8', '7'),
    ('83', '6'),
    ('73', '8'),
    ('42', '7'),
    ('46', '9'),
    ('40', '5'),
    ('2', '9'),
    ('87', '6'),
    ('68', '7'),
    ('53', '4'),
    ('22', '9'),
    ('30', '2'),
    ('34', '3'),
    ('34', '1'),
    ('37', '9'),
    ('75', '9'),
    ('53', '9'),
    ('88', '1'),
    ('6', '2');

DROP TABLE IF EXISTS Stocks;

CREATE TABLE Stocks (
    id int primary key auto_increment not null, products_id int not null, products_amount int not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (products_id) references Products (id)
);

DROP TABLE IF EXISTS Roles;

CREATE TABLE Roles (
    id int primary key auto_increment not null, name varchar(50)
);

INSERT INTO Roles (name) VALUES ("Cliente"), ("Vendedor");

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    id int primary key auto_increment not null, first_name varchar(50), last_name varchar(50), phone_number varchar(20), email text, address varchar(100), postal_code char(6), city_id int not null, role_id int not null, password text, avatar text, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (cities_id) references Cities (id), constraint foreign key (role_id) references Roles (id)
);

INSERT INTO
    Users (
        first_name, last_name, phone_number, email, address, postal_code, city_id, role_id, password, avatar
    )
VALUES (
        'Elayne', 'Subhan', '+62 (417) 686-5527', 'esubhan0@xrea.com', '4 Katie Circle', '4178', '211', '2', '$2b$10$3znIeXCHpBtBGhvv14Yvr.QYdjBhR7RRHadV4U/7rYELfnYkKYqsG', 'user-1701959206715.png'
    );

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
    id int primary key auto_increment not null, users_id int not null, order_status varchar(50) default null, request_date datetime, delivery_date datetime, arrival_date datetime, constraint foreign key (users_id) references Users (id)
);

DROP TABLE IF EXISTS Orders_Details;

CREATE TABLE Orders_Details (
    id int primary key auto_increment not null, orders_id int not null, products_id int not null, product_count int not null, price double not null, discount double, constraint foreign key (orders_id) references Orders (id), constraint foreign key (products_id) references Products (id)
);

-- SELECT * FROM musitienda.provinces;
-- SELECT * FROM musitienda.cities;
-- SELECT * FROM musitienda.brands;
-- SELECT * FROM musitienda.categories;
-- SELECT * FROM musitienda.products;
-- SELECT * FROM musitienda.images;
-- SELECT * FROM musitienda.products_images;
-- SELECT * FROM musitienda.products_categories;
-- SELECT * FROM musitienda.clients;
-- SELECT * FROM orders;