/* Lógico_3: */
create database bardodba; 

use bardodba;

CREATE TABLE garcom (
    id INT PRIMARY KEY,
    nome VARCHAR(80)
);

CREATE TABLE mesa (
    id INT PRIMARY KEY,
    NumeroDaMesa INT
);

CREATE TABLE comanda (
    Id INT PRIMARY KEY,
    valortotal DECIMAL(10,2),
    fechada INT,
    fk_garcom_id INT,
    fk_mesa_id INT
);
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_2
    FOREIGN KEY (fk_garcom_id)
    REFERENCES garcom (id)
    ON DELETE CASCADE;
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_3
    FOREIGN KEY (fk_mesa_id)
    REFERENCES mesa (id)
    ON DELETE CASCADE;