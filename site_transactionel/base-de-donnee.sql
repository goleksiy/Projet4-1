drop database entreprise;

create database entreprise;
use entreprise;

CREATE TABLE client(
    noClient int not null,
    nomClient varchar(40) null,
	ville varchar(40) not null,
	noTel varchar (20) not null,
	motDePasse varchar (100) not null,
	PRIMARY KEY(noClient)
);

CREATE TABLE inventaire(
    noArticle int not null,
    description varchar (100) not null,
	CheminImage varchar (100) not null,
	prixUnitaire DECIMAL(10,2) not null,
	quantiteEnStock int not null,
	quantiteDansPanier int not null,
	PRIMARY KEY(noArticle)
);

CREATE TABLE commande(
    noCommande int not null,
    dateCommande date not null,
	noClient int not null,
	PRIMARY KEY (noCommande),
	FOREIGN KEY (noClient) REFERENCES client(noClient)
);

CREATE TABLE itemEnCommande(
    noItemEnCommande int not null,
    noCommande int not null,
	noArticle int not null,
	quantite int not null,
	PRIMARY KEY(noItemEnCommande),
	FOREIGN KEY (noArticle) REFERENCES inventaire(noArticle),
	FOREIGN KEY (noCommande) REFERENCES commande(noCommande)
);

CREATE TABLE panier(
    noArticle int not null,
    description varchar (100) not null,
	prixUnitaire DECIMAL(10,2) not null,
	quantiteDansPanier int not null,
	verrou boolean
	
);
--Question2 

--clients
INSERT INTO entreprise.client
(noClient, nomClient, ville, noTel, motDePasse)
VALUES(1, 'alex', 'mtl', '9876543', '1234');
INSERT INTO entreprise.client
(noClient, nomClient, ville, noTel, motDePasse)
VALUES(2, 'qwerty', 'lav', '3457890', '4321');
INSERT INTO entreprise.client
(noClient, nomClient, ville, noTel, motDePasse)
VALUES(3, 'kjhgfd', 'iuy', '3456789', '7652');
INSERT INTO entreprise.client
(noClient, nomClient, ville, noTel, motDePasse)
VALUES(4, 'fffff', 'lot', '666666666', '5555');
INSERT INTO entreprise.client
(noClient, nomClient, ville, noTel, motDePasse)
VALUES(5, 'qqqq', 'qqq', '3333333', '9474');

--inventaire

INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(1, 'Brondell SE400-EW Swash Bidet Toilet Seat', 'toilet1', 399.99, 10, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(2, 'TOTO SW2034#01 C100 WASHLET Electronic Bidet Toilet Seat', 'toilet2', 1, 100, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(3, 'Clean Touch CT-2000-RF Bidet Toilet Seat', 'toilet3', 1, 100, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(4, 'TOTO SW2044#01 C200 WASHLET Electronic Bidet Toilet Seat', 'toilet4', 4, 54, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(5, 'Brondell S1400-EW Luxury Bidet Toilet Seat', 'toilet5', 1, 100, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(6, 'IZEN 1 Smart Toilet Seat', 'toilet6', 1, 1, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(7, 'BEIR BR-300 Advanced Bidet Smart Toilet Seat ', 'toilet7', 1, 1, 0);
INSERT INTO entreprise.inventaire
(noArticle, description, CheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier)
VALUES(8, 'Brondell Swash SE600 Bidet Seat', 'toilet8', 1, 1, 0);



