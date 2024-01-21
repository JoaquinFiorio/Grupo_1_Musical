CREATE DATABASE IF NOT EXISTS Musitienda;

USE Musitienda;

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
    id int primary key auto_increment not null, name varchar(100) not null, brands_id int not null, fabrication_year char(4), price double, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (brands_id) references Brands (id)
);

INSERT INTO
    Products (
        name, brands_id, fabrication_year, price
    )
VALUES (
        'guitar', '8', '2010', '16724.72'
    ),
    (
        'piano', '10', '1992', '49191.53'
    ),
    (
        'drums', '2', '1997', '58491.34'
    ),
    (
        'violin', '46', '1996', '81851.34'
    ),
    (
        'trumpet', '34', '1995', '83814.04'
    ),
    (
        'flute', '32', '2011', '97602.46'
    ),
    (
        'saxophone', '4', '2007', '2243.7'
    ),
    (
        'clarinet', '46', '1992', '34377.37'
    ),
    (
        'ukulele', '46', '2003', '49806.77'
    ),
    (
        'accordion', '36', '2009', '59615.37'
    ),
    (
        'banjo', '26', '1963', '43447.26'
    ),
    (
        'cello', '20', '2012', '88957.82'
    ),
    (
        'harp', '42', '2007', '55715.25'
    ),
    (
        'trombone', '5', '1993', '89296.42'
    ),
    (
        'bass guitar', '44', '2010', '11671.09'
    ),
    (
        'harmonica', '20', '2000', '63229.3'
    ),
    (
        'xylophone', '4', '2004', '93358.49'
    ),
    (
        'bagpipes', '34', '2001', '39067.02'
    ),
    (
        'maracas', '18', '1995', '58385.55'
    ),
    (
        'tambourine', '17', '1997', '76203.29'
    ),
    (
        'djembe', '1', '2002', '34469.96'
    ),
    (
        'didgeridoo', '9', '1964', '98839.86'
    ),
    (
        'mandolin', '3', '2006', '94941.41'
    ),
    (
        'oboe', '30', '1989', '55550.43'
    ),
    (
        'bassoon', '12', '2012', '72727.76'
    ),
    (
        'conga', '46', '2005', '94372.8'
    ),
    (
        'tabla', '31', '1988', '67899.3'
    ),
    (
        'synthesizer', '22', '1995', '61323.78'
    ),
    (
        'keyboard', '3', '1993', '17431.19'
    ),
    (
        'electric guitar', '33', '2004', '22757.52'
    ),
    (
        'steel drum', '15', '2002', '22900.74'
    ),
    (
        'theremin', '11', '2003', '97085.73'
    ),
    (
        'vibraphone', '9', '1989', '82123.51'
    ),
    (
        'kalimba', '39', '1999', '59560.79'
    ),
    (
        'ukulele', '22', '2012', '75019.87'
    ),
    (
        'oud', '43', '2005', '56091.86'
    ),
    (
        'sitar', '2', '1990', '37473.06'
    ),
    (
        'erhu', '30', '2007', '54145.12'
    ),
    (
        'pan flute', '8', '1995', '43977.63'
    ),
    (
        'bongo', '3', '1994', '56815.52'
    ),
    (
        'guzheng', '30', '2012', '71827.7'
    ),
    (
        'shamisen', '19', '2010', '93481.73'
    ),
    (
        'koto', '33', '1996', '88314.56'
    ),
    (
        'dulcimer', '4', '1996', '55050.99'
    ),
    (
        'zither', '21', '2005', '11217.75'
    ),
    (
        'mouth organ', '14', '2011', '81077.71'
    ),
    (
        'glockenspiel', '20', '2003', '48202.8'
    ),
    (
        'marimba', '29', '1997', '28533.0'
    ),
    (
        'timpani', '18', '2008', '80298.31'
    ),
    (
        'guitar', '26', '2002', '91191.42'
    ),
    (
        'piano', '2', '2008', '45615.17'
    ),
    (
        'drums', '21', '1994', '385.97'
    ),
    (
        'violin', '7', '1996', '2332.68'
    ),
    (
        'trumpet', '21', '2011', '19623.6'
    ),
    (
        'flute', '27', '1996', '19243.21'
    ),
    (
        'saxophone', '23', '1993', '1783.68'
    ),
    (
        'clarinet', '37', '1996', '87007.38'
    ),
    (
        'ukulele', '39', '2010', '60302.96'
    ),
    (
        'accordion', '18', '2009', '93237.71'
    ),
    (
        'banjo', '50', '2004', '31699.58'
    ),
    (
        'cello', '12', '1993', '2146.1'
    ),
    (
        'harp', '35', '2008', '60181.04'
    ),
    (
        'trombone', '9', '1998', '84526.27'
    ),
    (
        'bass guitar', '43', '1992', '2818.9'
    ),
    (
        'harmonica', '23', '2012', '18985.34'
    ),
    (
        'xylophone', '1', '2010', '42005.69'
    ),
    (
        'bagpipes', '35', '2011', '43912.07'
    ),
    (
        'maracas', '19', '1989', '32084.31'
    ),
    (
        'tambourine', '35', '1998', '50488.9'
    ),
    (
        'djembe', '17', '2011', '81404.19'
    ),
    (
        'didgeridoo', '29', '2007', '76627.25'
    ),
    (
        'mandolin', '7', '1983', '78200.47'
    ),
    (
        'oboe', '13', '2005', '77025.59'
    ),
    (
        'bassoon', '16', '2011', '93529.63'
    ),
    (
        'conga', '8', '1995', '23092.03'
    ),
    (
        'tabla', '40', '1994', '10837.22'
    ),
    (
        'synthesizer', '38', '2008', '57492.28'
    ),
    (
        'keyboard', '5', '2003', '55591.49'
    ),
    (
        'electric guitar', '30', '1995', '53520.8'
    ),
    (
        'steel drum', '8', '1998', '57215.63'
    ),
    (
        'theremin', '28', '2010', '95316.8'
    ),
    (
        'vibraphone', '36', '2006', '43972.73'
    ),
    (
        'kalimba', '42', '1999', '64736.52'
    ),
    (
        'ukulele', '4', '1994', '91696.07'
    ),
    (
        'oud', '18', '1998', '67510.92'
    ),
    (
        'sitar', '18', '1988', '32278.93'
    ),
    (
        'erhu', '4', '1986', '34782.82'
    ),
    (
        'pan flute', '21', '1993', '59762.21'
    ),
    (
        'bongo', '32', '1984', '28329.41'
    ),
    (
        'guzheng', '49', '2004', '78565.94'
    ),
    (
        'shamisen', '45', '2008', '71502.23'
    ),
    (
        'koto', '36', '2004', '75202.37'
    ),
    (
        'dulcimer', '49', '2011', '4417.1'
    ),
    (
        'zither', '20', '2006', '6756.53'
    ),
    (
        'mouth organ', '15', '1996', '4064.14'
    ),
    (
        'glockenspiel', '32', '1996', '14254.34'
    ),
    (
        'marimba', '44', '1985', '95326.0'
    ),
    (
        'timpani', '48', '2009', '93239.92'
    ),
    (
        'guitar', '2', '2003', '85900.86'
    ),
    (
        'piano', '39', '1993', '31376.89'
    );

DROP TABLE IF EXISTS Images;

CREATE TABLE Images (
    id int primary key auto_increment not null, name varchar(255) not null, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    Images (name)
VALUES (
        'http://dummyimage.com/128x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/236x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/177x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/102x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/143x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/242x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/119x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/105x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/110x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/154x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/164x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/153x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/118x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/126x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/124x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/148x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/205x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/138x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/220x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/170x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/234x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/106x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/131x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/212x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/141x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/152x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/161x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/219x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/189x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/190x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/179x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/189x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/148x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/154x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/225x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/131x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/196x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/171x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/216x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/195x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/238x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/122x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/227x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/104x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/107x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/111x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/223x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/174x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/218x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/196x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/159x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/162x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/111x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/209x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/188x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/113x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/200x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/246x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/222x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/250x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/126x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/164x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/175x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/196x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/237x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/111x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/225x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/111x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/192x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/146x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/221x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/146x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/112x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/158x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/122x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/200x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/244x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/241x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/229x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/223x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/237x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/134x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/245x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/102x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/175x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/163x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/216x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/135x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/160x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/114x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/241x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/122x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/232x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/222x100.png/dddddd/000000'
    ),
    (
        'http://dummyimage.com/201x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/104x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/124x100.png/ff4444/ffffff'
    ),
    (
        'http://dummyimage.com/115x100.png/5fa2dd/ffffff'
    ),
    (
        'http://dummyimage.com/117x100.png/cc0000/ffffff'
    ),
    (
        'http://dummyimage.com/195x100.png/cc0000/ffffff'
    );

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

INSERT INTO
    Stocks (products_id, products_amount)
VALUES ('1', '199'),
    ('2', '258'),
    ('3', '299'),
    ('4', '201'),
    ('5', '165'),
    ('6', '219'),
    ('7', '5'),
    ('8', '152'),
    ('9', '64'),
    ('10', '40'),
    ('11', '154'),
    ('12', '39'),
    ('13', '30'),
    ('14', '171'),
    ('15', '130'),
    ('16', '18'),
    ('17', '144'),
    ('18', '209'),
    ('19', '246'),
    ('20', '224'),
    ('21', '92'),
    ('22', '241'),
    ('23', '141'),
    ('24', '24'),
    ('25', '156'),
    ('26', '277'),
    ('27', '263'),
    ('28', '254'),
    ('29', '201'),
    ('30', '36'),
    ('31', '16'),
    ('32', '254'),
    ('33', '60'),
    ('34', '183'),
    ('35', '167'),
    ('36', '238'),
    ('37', '105'),
    ('38', '197'),
    ('39', '149'),
    ('40', '158'),
    ('41', '33'),
    ('42', '218'),
    ('43', '185'),
    ('44', '209'),
    ('45', '217'),
    ('46', '64'),
    ('47', '74'),
    ('48', '65'),
    ('49', '183'),
    ('50', '216'),
    ('51', '244'),
    ('52', '117'),
    ('53', '215'),
    ('54', '163'),
    ('55', '8'),
    ('56', '27'),
    ('57', '77'),
    ('58', '280'),
    ('59', '170'),
    ('60', '267'),
    ('61', '28'),
    ('62', '194'),
    ('63', '106'),
    ('64', '10'),
    ('65', '233'),
    ('66', '93'),
    ('67', '11'),
    ('68', '166'),
    ('69', '163'),
    ('70', '64'),
    ('71', '92'),
    ('72', '140'),
    ('73', '111'),
    ('74', '58'),
    ('75', '281'),
    ('76', '248'),
    ('77', '112'),
    ('78', '42'),
    ('79', '187'),
    ('80', '41'),
    ('81', '182'),
    ('82', '271'),
    ('83', '43'),
    ('84', '3'),
    ('85', '15'),
    ('86', '22'),
    ('87', '281'),
    ('88', '77'),
    ('89', '161'),
    ('90', '24'),
    ('91', '101'),
    ('92', '297'),
    ('93', '136'),
    ('94', '33'),
    ('95', '72'),
    ('96', '235'),
    ('97', '146'),
    ('98', '111'),
    ('99', '280'),
    ('100', '300');

DROP TABLE IF EXISTS Roles;

CREATE TABLE Roles (
    id int primary key auto_increment not null, name varchar(50)
);

INSERT INTO Roles (name) VALUES ("Admin"), ("seller");

DROP TABLE IF EXISTS Clients;

CREATE TABLE Clients (
    id int primary key auto_increment not null, user varchar(100), first_name varchar(50), last_name varchar(50), phone_number varchar(20), email text, address varchar(100), postal_code char(6), cities_id int not null, role_id int not null, password text, createdAt timestamp DEFAULT CURRENT_TIMESTAMP, updatedAt timestamp DEFAULT CURRENT_TIMESTAMP, constraint foreign key (cities_id) references Cities (id), constraint foreign key (role_id) references Roles (id)
);

INSERT INTO
    Clients (
        user, first_name, last_name, phone_number, email, address, postal_code, cities_id, role_id, password
    )
VALUES (
        'esubhan0', 'Elayne', 'Subhan', '+62 (417) 686-5527', 'esubhan0@xrea.com', '4 Katie Circle', '4178', '211', '2', '123456'
    ),
    (
        'eologan1', 'Emile', 'O\'Logan', '+86 (327) 773-9502', 'eologan1@cloudflare.com', '4217 Packers Pass', '3596', '58', '2', '123456'
    ),
    (
        'unewe2', 'Ursa', 'Newe', '+254 (791) 114-8069', 'unewe2@icq.com', '5525 Sycamore Junction', '6662', '198', '2', '123456'
    ),
    (
        'gredsall3', 'Goldarina', 'Redsall', '+86 (284) 715-9283', 'gredsall3@fc2.com', '5392 Hayes Plaza', '4782', '109', '2', '123456'
    ),
    (
        'egentner4', 'Easter', 'Gentner', '+55 (892) 547-9205', 'egentner4@businesswire.com', '5590 Doe Crossing Circle', '5484', '121', '2', '123456'
    ),
    (
        'aferreli5', 'Aubrie', 'Ferreli', '+86 (847) 114-7017', 'aferreli5@noaa.gov', '01 Park Meadow Court', '2438', '153', '2', '123456'
    ),
    (
        'akave6', 'Angeli', 'Kave', '+63 (778) 452-8529', 'akave6@time.com', '398 Surrey Plaza', '6017', '57', '2', '123456'
    ),
    (
        'bsimionato7', 'Benn', 'Simionato', '+63 (769) 185-3318', 'bsimionato7@imdb.com', '224 Crownhardt Center', '9183', '40', '2', '123456'
    ),
    (
        'lkernock8', 'Larine', 'Kernock', '+47 (145) 496-1443', 'lkernock8@slashdot.org', '155 Aberg Lane', '7086', '71', '2', '123456'
    ),
    (
        'gkittley9', 'Godard', 'Kittley', '+33 (585) 145-2690', 'gkittley9@theguardian.com', '98022 Holmberg Place', '6418', '142', '2', '123456'
    ),
    (
        'dcrusta', 'Dame', 'Crust', '+86 (565) 465-0901', 'dcrusta@github.io', '515 Gale Place', '1311', '175', '2', '123456'
    ),
    (
        'mnanettib', 'Moss', 'Nanetti', '+383 (208) 511-8445', 'mnanettib@cam.ac.uk', '409 Onsgard Point', '8612', '119', '2', '123456'
    ),
    (
        'mbeaulieuc', 'Maisie', 'Beaulieu', '+691 (608) 668-4944', 'mbeaulieuc@instagram.com', '7487 Cambridge Lane', '1947', '41', '2', '123456'
    ),
    (
        'mtroodd', 'Maisie', 'Trood', '+62 (783) 487-4224', 'mtroodd@nsw.gov.au', '13 Forest Run Avenue', '2307', '30', '2', '123456'
    ),
    (
        'jburrelle', 'Jules', 'Burrell', '+358 (539) 795-8782', 'jburrelle@nature.com', '61 David Park', '4829', '156', '2', '123456'
    ),
    (
        'rvanyatinf', 'Rochester', 'Vanyatin', '+31 (267) 930-7705', 'rvanyatinf@furl.net', '1 Blue Bill Park Pass', '4902', '211', '2', '123456'
    ),
    (
        'aabbotsong', 'Angelina', 'Abbotson', '+86 (580) 808-7532', 'aabbotsong@cpanel.net', '64 Atwood Trail', '9333', '165', '2', '123456'
    ),
    (
        'bperigoh', 'Brandy', 'Perigo', '+33 (280) 443-8983', 'bperigoh@bizjournals.com', '255 Commercial Parkway', '2554', '172', '2', '123456'
    ),
    (
        'tbloyi', 'Trenna', 'Bloy', '+55 (254) 197-3631', 'tbloyi@bizjournals.com', '2236 Sullivan Place', '2612', '76', '2', '123456'
    ),
    (
        'acluittj', 'Alexina', 'Cluitt', '+48 (139) 906-4425', 'acluittj@umich.edu', '47937 Raven Trail', '2852', '72', '2', '123456'
    ),
    (
        'gbartholink', 'Gal', 'Bartholin', '+66 (119) 185-4182', 'gbartholink@godaddy.com', '160 Pleasure Road', '6152', '63', '2', '123456'
    ),
    (
        'fduberryl', 'Forrest', 'Duberry', '+255 (107) 232-3972', 'fduberryl@youku.com', '51 Center Park', '3381', '224', '2', '123456'
    ),
    (
        'kstreetingm', 'Kurtis', 'Streeting', '+57 (654) 534-6392', 'kstreetingm@newsvine.com', '74 Debra Road', '8956', '187', '2', '123456'
    ),
    (
        'rphilipssonn', 'Rikki', 'Philipsson', '+675 (777) 467-9686', 'rphilipssonn@gravatar.com', '579 1st Alley', '2878', '1', '2', '123456'
    ),
    (
        'agrattono', 'Austina', 'Gratton', '+41 (504) 522-4154', 'agrattono@ucsd.edu', '1438 Sundown Hill', '1223', '123', '2', '123456'
    ),
    (
        'ekermottp', 'Estrellita', 'Kermott', '+62 (761) 622-0460', 'ekermottp@ucla.edu', '6 Hayes Lane', '4974', '187', '2', '123456'
    ),
    (
        'lcrollaq', 'Lacie', 'Crolla', '+7 (635) 904-4281', 'lcrollaq@github.com', '6739 Meadow Ridge Crossing', '5051', '148', '2', '123456'
    ),
    (
        'llabonr', 'Lottie', 'Labon', '+93 (603) 782-0497', 'llabonr@ihg.com', '300 Village Green Hill', '5856', '35', '2', '123456'
    ),
    (
        'fklimts', 'Freida', 'Klimt', '+62 (239) 594-7514', 'fklimts@sogou.com', '9351 Red Cloud Plaza', '3999', '105', '2', '123456'
    ),
    (
        'rsymerst', 'Rolando', 'Symers', '+351 (944) 402-5773', 'rsymerst@dailymotion.com', '49634 Sheridan Avenue', '5678', '27', '2', '123456'
    ),
    (
        'pvanhoveu', 'Packston', 'Van Hove', '+1 (486) 507-5386', 'pvanhoveu@biblegateway.com', '4 Bultman Point', '9918', '172', '2', '123456'
    ),
    (
        'orolfsv', 'Obie', 'Rolfs', '+81 (269) 605-5661', 'orolfsv@cdc.gov', '3 Melby Trail', '1827', '123', '2', '123456'
    ),
    (
        'cconingw', 'Cherri', 'Coning', '+502 (253) 393-7276', 'cconingw@army.mil', '2858 Anniversary Crossing', '7685', '59', '2', '123456'
    ),
    (
        'cbarnsleyx', 'Cindie', 'Barnsley', '+86 (748) 720-6508', 'cbarnsleyx@dell.com', '72627 Tomscot Circle', '9937', '201', '2', '123456'
    ),
    (
        'fhawesy', 'Frederik', 'Hawes', '+46 (171) 279-0819', 'fhawesy@exblog.jp', '5493 Clove Terrace', '2685', '210', '2', '123456'
    ),
    (
        'agrinikhinz', 'Alla', 'Grinikhin', '+62 (694) 893-9240', 'agrinikhinz@so-net.ne.jp', '92 Spohn Court', '4522', '198', '2', '123456'
    ),
    (
        'sfavela10', 'Shina', 'Favela', '+216 (992) 188-0829', 'sfavela10@house.gov', '7701 Eagan Road', '5954', '72', '2', '123456'
    ),
    (
        'akaming11', 'Ari', 'Kaming', '+48 (657) 616-0075', 'akaming11@unc.edu', '14 Knutson Avenue', '8649', '140', '2', '123456'
    ),
    (
        'taldam12', 'Tania', 'Aldam', '+7 (481) 971-7342', 'taldam12@comcast.net', '207 Ilene Parkway', '6182', '234', '2', '123456'
    ),
    (
        'ntuckwood13', 'Nicolette', 'Tuckwood', '+63 (685) 412-8256', 'ntuckwood13@opera.com', '7 Stephen Court', '5797', '130', '2', '123456'
    ),
    (
        'gscurrer14', 'Gothart', 'Scurrer', '+1 (845) 631-2746', 'gscurrer14@ifeng.com', '84 Messerschmidt Hill', '1316', '154', '2', '123456'
    ),
    (
        'rodee15', 'Raynell', 'O\'Dee', '+351 (502) 386-7024', 'rodee15@exblog.jp', '69 Banding Circle', '2050', '224', '2', '123456'
    ),
    (
        'ybroadist16', 'Yetta', 'Broadist', '+30 (469) 596-7679', 'ybroadist16@livejournal.com', '09363 Gulseth Alley', '6985', '71', '2', '123456'
    ),
    (
        'msylvaine17', 'Maxy', 'Sylvaine', '+86 (806) 414-9812', 'msylvaine17@netscape.com', '55391 Dottie Trail', '3498', '228', '2', '123456'
    ),
    (
        'agibke18', 'Annie', 'Gibke', '+381 (299) 235-7104', 'agibke18@umich.edu', '513 Quincy Place', '8375', '139', '2', '123456'
    ),
    (
        'hviccars19', 'Hilliard', 'Viccars', '+86 (728) 769-8839', 'hviccars19@omniture.com', '83 Carpenter Crossing', '3394', '171', '2', '123456'
    ),
    (
        'amenco1a', 'Almeria', 'Menco', '+689 (967) 573-2536', 'amenco1a@domainmarket.com', '8 Division Crossing', '2721', '111', '2', '123456'
    ),
    (
        'rgirardey1b', 'Reine', 'Girardey', '+36 (533) 163-0235', 'rgirardey1b@wired.com', '8320 Knutson Court', '2607', '74', '2', '123456'
    ),
    (
        'tyitzowitz1c', 'Terrel', 'Yitzowitz', '+62 (117) 332-1743', 'tyitzowitz1c@harvard.edu', '9990 Harbort Parkway', '4150', '14', '2', '123456'
    ),
    (
        'gdulin1d', 'Gilburt', 'Dulin', '+86 (191) 311-9683', 'gdulin1d@japanpost.jp', '8906 Blue Bill Park Trail', '3512', '7', '2', '123456'
    ),
    (
        'otoulch1e', 'Olag', 'Toulch', '+33 (740) 314-2465', 'otoulch1e@addtoany.com', '0070 Wayridge Pass', '4203', '150', '2', '123456'
    ),
    (
        'lcottage1f', 'Lombard', 'Cottage', '+48 (689) 622-6722', 'lcottage1f@tamu.edu', '8 Annamark Court', '9539', '238', '2', '123456'
    ),
    (
        'bmarchi1g', 'Brnaby', 'Marchi', '+7 (591) 371-3080', 'bmarchi1g@hatena.ne.jp', '5 6th Way', '4610', '107', '2', '123456'
    ),
    (
        'mbednell1h', 'Mufi', 'Bednell', '+44 (147) 301-7268', 'mbednell1h@bbb.org', '809 Anniversary Way', '1924', '7', '2', '123456'
    ),
    (
        'mreagan1i', 'Marwin', 'Reagan', '+48 (644) 553-3196', 'mreagan1i@un.org', '076 Ruskin Plaza', '4844', '51', '2', '123456'
    ),
    (
        'tflippini1j', 'Tiff', 'Flippini', '+86 (484) 395-7288', 'tflippini1j@answers.com', '689 Karstens Road', '5560', '36', '2', '123456'
    ),
    (
        'rkubas1k', 'Ramon', 'Kubas', '+261 (566) 391-1739', 'rkubas1k@nydailynews.com', '676 Spohn Plaza', '4426', '193', '2', '123456'
    ),
    (
        'ahadcock1l', 'Algernon', 'Hadcock', '+55 (273) 331-7011', 'ahadcock1l@google.fr', '8089 Sachtjen Lane', '9973', '160', '2', '123456'
    ),
    (
        'ecloute1m', 'Eveleen', 'Cloute', '+81 (580) 385-9549', 'ecloute1m@techcrunch.com', '34 John Wall Court', '7370', '164', '2', '123456'
    ),
    (
        'snicholson1n', 'Sumner', 'Nicholson', '+53 (383) 267-6468', 'snicholson1n@arizona.edu', '71 Loeprich Place', '6584', '188', '2', '123456'
    ),
    (
        'ldallon1o', 'Loralyn', 'Dallon', '+62 (325) 430-8808', 'ldallon1o@addtoany.com', '2 Brown Plaza', '1011', '113', '2', '123456'
    ),
    (
        'cbligh1p', 'Carlo', 'Bligh', '+53 (282) 991-2210', 'cbligh1p@google.de', '9562 Granby Court', '5735', '21', '2', '123456'
    ),
    (
        'rbampforth1q', 'Randie', 'Bampforth', '+48 (422) 752-0819', 'rbampforth1q@thetimes.co.uk', '11222 Buell Plaza', '7896', '55', '2', '123456'
    ),
    (
        'long1r', 'Lin', 'Ong', '+7 (516) 355-9866', 'long1r@abc.net.au', '32 Dayton Pass', '1222', '202', '2', '123456'
    ),
    (
        'pmcane1s', 'Pippo', 'McAne', '+1 (619) 833-6640', 'pmcane1s@ibm.com', '2228 Spenser Crossing', '5218', '49', '2', '123456'
    ),
    (
        'vpeddel1t', 'Vassili', 'Peddel', '+7 (469) 811-1236', 'vpeddel1t@buzzfeed.com', '708 Ridge Oak Street', '9314', '151', '2', '123456'
    ),
    (
        'rcorro1u', 'Rani', 'Corro', '+47 (231) 941-4675', 'rcorro1u@squidoo.com', '99 East Road', '5301', '236', '2', '123456'
    ),
    (
        'ekondratenya1v', 'Edan', 'Kondratenya', '+33 (541) 600-1009', 'ekondratenya1v@ustream.tv', '2153 Rieder Plaza', '3440', '49', '2', '123456'
    ),
    (
        'rmacmakin1w', 'Redford', 'MacMakin', '+63 (233) 802-7028', 'rmacmakin1w@acquirethisname.com', '20 American Circle', '7558', '87', '2', '123456'
    ),
    (
        'amehew1x', 'Abel', 'Mehew', '+389 (223) 945-6243', 'amehew1x@ibm.com', '5 Lindbergh Plaza', '4789', '111', '2', '123456'
    ),
    (
        'bcianni1y', 'Berte', 'Cianni', '+220 (177) 674-2982', 'bcianni1y@parallels.com', '587 Sunfield Trail', '2167', '127', '2', '123456'
    ),
    (
        'dstitwell1z', 'Dee', 'Stitwell', '+81 (926) 288-4692', 'dstitwell1z@usa.gov', '1 Main Park', '6414', '12', '2', '123456'
    ),
    (
        'ftuke20', 'Fanny', 'Tuke', '+355 (921) 930-1516', 'ftuke20@ox.ac.uk', '097 Mariners Cove Pass', '2991', '208', '2', '123456'
    ),
    (
        'jkane21', 'Jennette', 'Kane', '+62 (487) 943-2804', 'jkane21@google.ru', '414 Heffernan Place', '2218', '89', '2', '123456'
    ),
    (
        'ledwards22', 'Lorette', 'Edwards', '+1 (208) 673-6715', 'ledwards22@gov.uk', '9 Daystar Street', '6769', '94', '2', '123456'
    ),
    (
        'cmccreath23', 'Cindra', 'McCreath', '+7 (864) 351-5495', 'cmccreath23@mlb.com', '92815 Arkansas Way', '3111', '54', '2', '123456'
    ),
    (
        'ebumphrey24', 'Estrellita', 'Bumphrey', '+963 (951) 297-3615', 'ebumphrey24@woothemes.com', '6862 Chive Avenue', '3080', '61', '2', '123456'
    ),
    (
        'dzute25', 'Derk', 'Zute', '+7 (492) 172-0611', 'dzute25@ft.com', '439 Kensington Plaza', '6491', '51', '2', '123456'
    ),
    (
        'ctimperley26', 'Clevie', 'Timperley', '+84 (479) 169-7565', 'ctimperley26@wsj.com', '5517 Fallview Park', '9617', '40', '2', '123456'
    ),
    (
        'ccarleton27', 'Court', 'Carleton', '+1 (893) 444-8646', 'ccarleton27@altervista.org', '58 Lillian Center', '1608', '178', '2', '123456'
    ),
    (
        'kdamper28', 'Kerry', 'Damper', '+66 (230) 514-5179', 'kdamper28@flavors.me', '8 Leroy Crossing', '6851', '190', '2', '123456'
    ),
    (
        'kgreydon29', 'Kendal', 'Greydon', '+86 (467) 746-0579', 'kgreydon29@1688.com', '7 Forest Dale Park', '3769', '60', '2', '123456'
    ),
    (
        'cschwandermann2a', 'Cointon', 'Schwandermann', '+63 (270) 721-4312', 'cschwandermann2a@163.com', '35 Granby Junction', '9376', '55', '2', '123456'
    ),
    (
        'dpetrasso2b', 'Darsey', 'Petrasso', '+55 (488) 786-9597', 'dpetrasso2b@shinystat.com', '11970 Oxford Hill', '2650', '134', '2', '123456'
    ),
    (
        'acurnok2c', 'Atalanta', 'Curnok', '+55 (686) 970-7232', 'acurnok2c@w3.org', '872 Morningstar Point', '9394', '132', '2', '123456'
    ),
    (
        'tbates2d', 'Templeton', 'Bates', '+48 (945) 463-0061', 'tbates2d@canalblog.com', '14 Gerald Circle', '3510', '240', '2', '123456'
    ),
    (
        'ugowenlock2e', 'Una', 'Gowenlock', '+62 (396) 319-1342', 'ugowenlock2e@google.ca', '21990 Redwing Circle', '3311', '35', '2', '123456'
    ),
    (
        'cpetrillo2f', 'Corri', 'Petrillo', '+351 (539) 687-8360', 'cpetrillo2f@earthlink.net', '8 Summer Ridge Lane', '8540', '140', '2', '123456'
    ),
    (
        'mmayling2g', 'Marji', 'Mayling', '+7 (605) 969-0898', 'mmayling2g@businesswire.com', '344 Butternut Way', '3822', '118', '2', '123456'
    ),
    (
        'kwhaley2h', 'Koren', 'Whaley', '+62 (451) 421-8777', 'kwhaley2h@tinyurl.com', '81 Lighthouse Bay Terrace', '5260', '44', '2', '123456'
    ),
    (
        'klockney2i', 'Kayne', 'Lockney', '+62 (173) 950-1993', 'klockney2i@theatlantic.com', '99 Commercial Terrace', '5418', '50', '2', '123456'
    ),
    (
        'ufranciotti2j', 'Ursulina', 'Franciotti', '+34 (916) 382-4781', 'ufranciotti2j@purevolume.com', '7 Novick Junction', '6538', '168', '2', '123456'
    ),
    (
        'estiant2k', 'Ermina', 'Stiant', '+420 (619) 117-4486', 'estiant2k@goo.ne.jp', '2 Russell Way', '2017', '198', '2', '123456'
    ),
    (
        'lburges2l', 'Lita', 'Burges', '+234 (411) 970-6550', 'lburges2l@spiegel.de', '49 Prairie Rose Center', '1715', '132', '2', '123456'
    ),
    (
        'lnewlove2m', 'Laurens', 'Newlove', '+54 (276) 623-2366', 'lnewlove2m@blogger.com', '037 Express Drive', '8632', '47', '2', '123456'
    ),
    (
        'jpringle2n', 'Janaye', 'Pringle', '+355 (794) 422-6577', 'jpringle2n@hexun.com', '796 Marcy Court', '7793', '232', '2', '123456'
    ),
    (
        'tperello2o', 'Tildi', 'Perello', '+48 (106) 619-9254', 'tperello2o@wordpress.org', '4 Transport Park', '8962', '181', '2', '123456'
    ),
    (
        'vgonnin2p', 'Valentine', 'Gonnin', '+63 (795) 153-3521', 'vgonnin2p@cbslocal.com', '6 Lotheville Avenue', '6887', '24', '2', '123456'
    ),
    (
        'hpohl2q', 'Hayes', 'Pohl', '+63 (837) 894-4606', 'hpohl2q@xinhuanet.com', '7934 Lakewood Gardens Park', '9640', '112', '2', '123456'
    ),
    (
        'jredholes2r', 'Jocelyn', 'Redholes', '+63 (402) 347-0210', 'jredholes2r@usda.gov', '9090 Summit Parkway', '3770', '97', '2', '123456'
    );

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
    id int primary key auto_increment not null, clients_id int not null, order_status varchar(50) default null, request_date datetime, delivery_date datetime, arrival_date datetime, constraint foreign key (clients_id) references Clients (id)
);

INSERT INTO
    Orders (
        clients_id, request_date, delivery_date, arrival_date
    )
VALUES (
        '73', '2023-01-18 12:38:05', '2023-04-22 22:40:35', '2023-05-28 05:23:31'
    ),
    (
        '85', '2023-01-06 08:45:33', '2023-03-13 23:02:53', '2023-06-13 11:05:26'
    ),
    (
        '89', '2023-01-23 11:11:12', '2023-04-04 14:17:00', '2023-05-08 09:23:04'
    ),
    (
        '88', '2023-01-02 14:56:39', '2023-03-18 13:56:44', '2023-05-27 01:35:30'
    ),
    (
        '77', '2023-01-28 10:01:45', '2023-04-23 13:05:04', '2023-06-15 07:39:37'
    ),
    (
        '81', '2023-01-25 01:35:30', '2023-03-21 05:11:37', '2023-05-30 13:41:40'
    ),
    (
        '77', '2023-01-29 02:08:49', '2023-03-01 20:43:20', '2023-05-02 16:33:21'
    ),
    (
        '85', '2023-02-01 04:07:49', '2023-03-06 18:29:48', '2023-06-24 18:36:33'
    ),
    (
        '89', '2023-02-11 00:05:52', '2023-03-04 15:41:14', '2023-05-01 10:09:56'
    ),
    (
        '78', '2023-01-10 18:10:25', '2023-04-08 14:50:52', '2023-05-29 05:10:46'
    ),
    (
        '57', '2023-02-06 14:32:24', '2023-03-29 19:15:11', '2023-06-10 10:47:07'
    ),
    (
        '99', '2023-02-14 17:50:13', '2023-03-05 22:14:11', '2023-06-29 02:51:54'
    ),
    (
        '9', '2023-02-01 01:13:29', '2023-03-27 10:18:30', '2023-05-21 18:02:09'
    ),
    (
        '80', '2023-02-15 07:42:03', '2023-03-30 13:43:24', '2023-05-25 00:53:08'
    ),
    (
        '55', '2023-01-04 04:32:48', '2023-03-13 17:29:30', '2023-06-13 06:38:46'
    ),
    (
        '37', '2023-02-11 19:58:31', '2023-04-16 00:54:48', '2023-05-12 15:53:22'
    ),
    (
        '12', '2023-01-28 02:11:43', '2023-04-03 17:40:19', '2023-06-18 22:17:21'
    ),
    (
        '69', '2023-02-01 09:52:04', '2023-04-20 10:10:11', '2023-06-26 00:34:39'
    ),
    (
        '23', '2023-02-03 20:30:09', '2023-04-23 00:50:16', '2023-05-20 15:09:15'
    ),
    (
        '23', '2023-01-07 17:12:48', '2023-03-07 05:24:33', '2023-06-28 21:02:24'
    ),
    (
        '42', '2023-02-24 15:11:53', '2023-04-08 08:49:34', '2023-05-23 20:24:18'
    ),
    (
        '80', '2023-02-16 14:53:02', '2023-04-15 15:02:21', '2023-06-06 19:34:05'
    ),
    (
        '73', '2023-01-21 21:12:14', '2023-03-24 02:02:24', '2023-05-21 16:34:28'
    ),
    (
        '43', '2023-02-27 03:09:53', '2023-03-04 08:01:14', '2023-06-27 14:13:30'
    ),
    (
        '87', '2023-02-27 01:50:50', '2023-04-06 21:40:07', '2023-05-02 01:46:36'
    ),
    (
        '71', '2023-01-04 14:31:16', '2023-03-30 13:17:38', '2023-05-10 23:52:10'
    ),
    (
        '64', '2023-02-22 18:22:22', '2023-04-02 13:21:29', '2023-06-24 17:53:24'
    ),
    (
        '61', '2023-02-21 09:50:53', '2023-03-14 12:10:39', '2023-06-25 16:27:40'
    ),
    (
        '16', '2023-01-13 05:50:37', '2023-04-06 05:08:00', '2023-05-17 00:15:32'
    ),
    (
        '39', '2023-01-12 20:13:04', '2023-04-13 06:43:04', '2023-06-01 14:21:34'
    );

DROP TABLE IF EXISTS Orders_Details;

CREATE TABLE Orders_Details (
    id int primary key auto_increment not null, orders_id int not null, products_id int not null, product_count int not null, price double not null, discount double, constraint foreign key (orders_id) references Orders (id), constraint foreign key (products_id) references Products (id)
);

INSERT INTO
    Orders_Details (
        orders_id, products_id, product_count, price, discount
    )
VALUES (
        '17', '46', '16', '28547.92', '764.60'
    ),
    (
        '12', '51', '1', '75410.01', '976.67'
    ),
    (
        '3', '21', '24', '16477.05', '143.62'
    ),
    (
        '6', '65', '12', '18165.02', '541.79'
    ),
    (
        '11', '100', '16', '92711.42', '193.66'
    ),
    (
        '12', '8', '23', '70947.04', '931.99'
    ),
    (
        '10', '71', '13', '17158.33', '615.01'
    ),
    (
        '11', '57', '8', '77370.23', '472.40'
    ),
    (
        '3', '16', '4', '99122.72', '568.73'
    ),
    (
        '22', '98', '17', '68766.30', '197.94'
    ),
    (
        '29', '25', '19', '81212.31', '138.50'
    ),
    (
        '16', '79', '16', '53552.32', '675.44'
    ),
    (
        '22', '6', '24', '89492.58', '784.92'
    ),
    (
        '17', '95', '25', '84698.39', '118.72'
    ),
    (
        '18', '67', '17', '81283.56', '865.95'
    ),
    (
        '11', '23', '4', '86562.45', '147.01'
    ),
    (
        '13', '25', '20', '82750.86', '693.45'
    ),
    (
        '17', '33', '23', '1988.77', '906.56'
    ),
    (
        '13', '21', '7', '37277.55', '271.23'
    ),
    (
        '3', '85', '8', '79217.92', '697.06'
    ),
    (
        '21', '85', '11', '55693.12', '286.92'
    ),
    (
        '29', '39', '20', '92768.26', '989.77'
    ),
    (
        '21', '53', '6', '22439.52', '945.45'
    ),
    (
        '3', '52', '21', '70075.47', '402.09'
    ),
    (
        '25', '22', '15', '96983.36', '126.49'
    ),
    (
        '20', '64', '4', '92128.95', '717.25'
    ),
    (
        '17', '34', '20', '43073.92', '971.00'
    ),
    (
        '5', '40', '17', '20493.60', '385.79'
    ),
    (
        '16', '68', '3', '60641.13', '191.06'
    ),
    (
        '16', '24', '17', '61834.79', '849.09'
    ),
    (
        '28', '72', '8', '83508.28', '161.41'
    ),
    (
        '26', '3', '16', '56231.89', '147.15'
    ),
    (
        '29', '99', '9', '8175.43', '660.90'
    ),
    (
        '8', '21', '19', '81661.75', '795.64'
    ),
    (
        '7', '7', '5', '33671.99', '336.03'
    ),
    (
        '4', '83', '19', '4710.11', '449.64'
    ),
    (
        '17', '99', '2', '79677.88', '136.33'
    ),
    (
        '9', '58', '5', '49853.15', '509.14'
    ),
    (
        '10', '60', '24', '34088.42', '803.00'
    ),
    (
        '28', '84', '7', '29739.66', '421.15'
    ),
    (
        '25', '87', '5', '91739.29', '564.84'
    ),
    (
        '6', '46', '24', '88258.71', '102.06'
    ),
    (
        '7', '88', '16', '12156.50', '805.59'
    ),
    (
        '15', '41', '10', '62210.10', '883.08'
    ),
    (
        '11', '90', '22', '87780.63', '840.39'
    ),
    (
        '13', '58', '16', '27291.77', '305.93'
    ),
    (
        '2', '33', '3', '97363.40', '465.75'
    ),
    (
        '10', '22', '25', '13070.58', '721.19'
    ),
    (
        '9', '95', '22', '35803.01', '667.72'
    ),
    (
        '2', '18', '23', '69324.68', '526.00'
    ),
    (
        '23', '20', '24', '24955.68', '953.61'
    ),
    (
        '23', '2', '20', '53194.77', '557.99'
    ),
    (
        '8', '62', '23', '68419.48', '349.39'
    ),
    (
        '8', '9', '1', '87332.50', '101.70'
    ),
    (
        '25', '32', '3', '56353.59', '141.83'
    ),
    (
        '7', '81', '4', '10163.61', '758.39'
    ),
    (
        '9', '39', '3', '22038.06', '218.28'
    ),
    (
        '1', '88', '3', '43116.22', '966.94'
    ),
    (
        '6', '76', '12', '47740.22', '435.56'
    ),
    (
        '28', '82', '23', '93438.24', '216.41'
    ),
    (
        '20', '87', '21', '24617.29', '324.40'
    ),
    (
        '24', '49', '3', '64922.43', '681.31'
    ),
    (
        '23', '62', '12', '72604.26', '664.67'
    ),
    (
        '20', '92', '14', '27402.77', '934.77'
    ),
    (
        '17', '41', '16', '51096.61', '512.10'
    ),
    (
        '15', '21', '21', '33483.39', '248.94'
    ),
    (
        '6', '14', '21', '13026.61', '477.38'
    ),
    (
        '5', '1', '2', '59784.49', '113.20'
    ),
    (
        '30', '21', '16', '74662.78', '873.16'
    ),
    (
        '15', '59', '22', '85912.98', '377.41'
    ),
    (
        '1', '98', '22', '19232.25', '309.56'
    ),
    (
        '28', '93', '4', '18422.82', '536.67'
    ),
    (
        '23', '60', '5', '58278.85', '801.43'
    ),
    (
        '11', '99', '12', '40685.57', '860.85'
    ),
    (
        '27', '4', '23', '99404.79', '170.29'
    ),
    (
        '27', '58', '16', '11645.91', '593.30'
    ),
    (
        '2', '44', '19', '58596.70', '810.56'
    ),
    (
        '30', '22', '8', '96981.20', '203.44'
    ),
    (
        '19', '83', '23', '17855.39', '174.78'
    ),
    (
        '8', '68', '3', '96551.64', '241.90'
    ),
    (
        '15', '52', '7', '87891.22', '332.03'
    ),
    (
        '13', '39', '2', '54137.94', '626.85'
    ),
    (
        '12', '81', '1', '86787.08', '613.73'
    ),
    (
        '8', '10', '2', '88827.82', '774.10'
    ),
    (
        '2', '3', '1', '11998.01', '322.42'
    ),
    (
        '24', '9', '18', '93163.06', '483.75'
    ),
    (
        '30', '84', '16', '4410.89', '299.20'
    ),
    (
        '12', '67', '12', '34208.40', '988.70'
    ),
    (
        '13', '8', '3', '57035.72', '603.99'
    ),
    (
        '30', '66', '6', '99999.56', '151.89'
    ),
    (
        '9', '51', '4', '3867.40', '439.21'
    ),
    (
        '24', '60', '18', '3244.42', '205.17'
    ),
    (
        '20', '35', '7', '83769.29', '860.46'
    ),
    (
        '19', '27', '9', '38104.05', '292.91'
    ),
    (
        '1', '39', '22', '91927.43', '735.52'
    ),
    (
        '10', '64', '8', '14108.78', '954.54'
    ),
    (
        '19', '94', '15', '71791.52', '778.84'
    ),
    (
        '24', '4', '22', '88322.75', '334.30'
    ),
    (
        '30', '28', '16', '5722.77', '513.77'
    ),
    (
        '30', '11', '9', '29770.34', '642.20'
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