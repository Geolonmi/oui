CREATE TABLE produits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price numeric
);

CREATE TABLE cuissons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE garnitures (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100), 
    price numeric
);


CREATE TABLE produits_cuissons_mapping (
    produit_id INT,
    cuisson_id INT,
    FOREIGN KEY (produit_id) REFERENCES produits(id),
    FOREIGN KEY (cuisson_id) REFERENCES cuissons(id),
    PRIMARY KEY (produit_id, cuisson_id)
);


CREATE TABLE produits_garnitures_mapping (
    produit_id INT,
    garniture_id INT,
    FOREIGN KEY (produit_id) REFERENCES produits(id),
    FOREIGN KEY (garniture_id) REFERENCES garnitures(id),
    PRIMARY KEY (produit_id, garniture_id)
);
