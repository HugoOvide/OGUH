
-- Crea primero la base de datos y después ejecuta el script
CREATE DATABASE OGUH;

BEGIN;

CREATE TABLE restaurantes (
    nombre text not null, 
    calle text  not null,
    especialidad text not null,
    ciudad text not null,
    link  text
);
   
CREATE TABLE pastelerias (
    nombre text not null, 
    calle text  not null,
    especialidad text not null,
    ciudad text not null,
    link  text
);

CREATE TABLE criticas_rest (
    nombre text not null, 
    puntuacion int  not null,
    valoracion text not null
);

CREATE TABLE criticas_past (
    nombre_past text not null, 
    puntuacion int  not null,
    valoracion text not null
);

ALTER TABLE restaurantes ADD CONSTRAINT pk_restaurantes PRIMARY KEY (nombre);
ALTER TABLE pastelerias ADD CONSTRAINT pk_pastelerias PRIMARY KEY (nombre);
ALTER TABLE criticas ADD CONSTRAINT fk_nombre FOREIGN KEY (nombre) REFERENCES restaurantes(nombre);
ALTER TABLE criticas_past ADD CONSTRAINT fk_nombre_past FOREIGN KEY (nombre_past) REFERENCES pastelerias(nombre);

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('El Imparcial', ' C. del Duque de Alba, 4, Centro', 'Española Moderna', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=http://elimparcialmadrid.com/&ved=2ahUKEwje043TiuuIAxVv3gIHHUtjJw0QFnoECEQQAQ&usg=AOvVaw3blwi3sFfz5UC42D6k3Wnk');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('La Primera', 'Gran Vía, 1, Centro', 'Española Moderna', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://restaurantelaprimera.com/&ved=2ahUKEwib49exjOuIAxUxnf0HHUBwKUgQFnoECD4QAQ&usg=AOvVaw16c6OnZIHjxKIiTg5KPpbn');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('La Mordida', 'C. de Pío Baroja, 9', 'Mexicana', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.lamordida.com/&ved=2ahUKEwjgm6W5seuIAxVD9rsIHQH7L-gQFnoECBkQAQ&usg=AOvVaw3VSKZ6cECCj7BF0E5rgLzC');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('La Potxola', 'C. de San Mateo, 19, Centro', 'Comida Vasca', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.instagram.com/lapotxola_madrid/&ved=2ahUKEwjQ_cift-uIAxV-g_0HHchUBU0QFnoECBcQAQ&usg=AOvVaw2eLUsj7EudPl-NrW7cdtyh');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('Roostiq', 'C. de Augusto Figueroa, 47, Centro', 'Pizza y Brasa', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://roostiq.com/&ved=2ahUKEwjtxqXwt-uIAxWAif0HHaHZDIcQFnoECCYQAQ&usg=AOvVaw0tT1kXPJlAOd81oaLG1Z67');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('El Cubanito', 'C. de Cartagena, 5, Salamanca', 'Cubana', 'Madrid', 'https://elcubanito.eatbu.com/?lang=es');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('Gofio Madrid', 'C. del Caballero de Gracia, 20, Centro', 'Canaria', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://gofiorestaurant.com/&ved=2ahUKEwi-qcaVueuIAxVinf0HHRL8OxgQFnoECEsQAQ&usg=AOvVaw1PTm_fPx-djAVKJ6K6TkxO');

insert into restaurantes (nombre, calle, especialidad, ciudad, link)
values ('Nomo Braganza', 'C/ de Bárbara de Braganza, 8, Centro', 'Japones', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://gruponomo.com/restaurantes/braganza/&ved=2ahUKEwiGweOrueuIAxUI8LsIHdlzJXoQFnoECEYQAQ&usg=AOvVaw3CpNOnsw2KyLx1ez6rJ6EF');

insert into pastelerias (nombre, calle, especialidad, ciudad, link)
values ('Estela Hojaldre', 'Pl. Jesús, 5, Centro', 'Palmeras de Hojaldre', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://estelahojaldre.es/&ved=2ahUKEwjE9dWfuuuIAxVw7rsIHQWAJLsQFnoECDYQAQ&usg=AOvVaw0q1RGfeGRuG6hANp01-vt_');

insert into pastelerias (nombre, calle, especialidad, ciudad, link)
values ('Panod', 'C. de Prim, 1, Centro', 'Croissants', 'Madrid', 'https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=http://panod.es/&ved=2ahUKEwjP9ofOuuuIAxWihf0HHVCdA4UQFnoECBYQAQ&usg=AOvVaw2QU3GLp6pzvQS5anysi0xS');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('El Imparcial', 4, 'Un restaurante muy interesante, comida simple, buenos productos, que por momentos sorprende, un sitio donde comer bien y disfrutar.');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('La Primera', 4.3, 'Para mí la mejor tortilla de patatas de madrid, desayunos imprescindibles hasta casi la 1 de la mañana, la comida especialidad cantabra, simple, buena y a buen precio.');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('La Mordida', 4.3, 'Un mexicano que simplemente por quien fue su dueño explica la excelencia del local, Joaquin Sabina, ambiente perfecto y comida 100% mexicana una autentica recomendación.');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('La Potxola', 3.4, 'Comida vasca entretenida, para tomar lago en la barra tomandote un vino o cerveza y comer compartiendo, perfecto para un charla de 2');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('Roostiq', 4.4, 'Pizzas y Brasa, todo dicho, pizzas espectaculares y brasa perfecta, es decir todo hecho con brasa excepto als pizzas, la ensalada cesar increible y los torreznos un imprescendible.');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('El Cubanito', 4, 'Comida cubana autentica');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('Gofio Madrid', 4, 'Autenticamente canario, y tan canario que hasta tienen vino de alli');

insert into criticas_rest (nombre, puntuacion, valoracion)
values ('Nomo Braganza', 4, 'Japones con muy buena presencia, se come bastante bien y el sushi es el original, no las fusiones raras que no gustan, recomendable si te apetece comer japones bien' );

insert into criticas_past (nombre_past, puntuacion, valoracion)
values ('Estela Hojaldre', 4.8, 'Lugar o templo del hojaldre perfecto los dulces son un autentico placer, si n has probado este hojaldre tienes un deber vital');

insert into criticas_past (nombre_past, puntuacion, valoracion)
values ('Panod', 4.3, 'Pan muy bueno y original, ademas los croissants son autenticos y las tartas estan espectaculares aunque hay alguna que flaquea');

commit;