CREATE TABLE Ingredient(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   "COST"            INT     NOT NULL
);

CREATE TABLE Pizza(
   ID INT PRIMARY KEY     NOT NULL,
   BASE           TEXT    NOT NULL,
   BORST          TEXT    NOT NULL,
   CLOSED         Bool 
);

CREATE TABLE Customer(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL
);

CREATE TABLE Employe(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   SALARY         REAL
);

CREATE table "Order"(
   ID INT PRIMARY KEY     NOT NULL,
   SUM            INT     NOT NULL,
   STATUS         Bool     NOT NULL,
   ADDRESS        CHAR(50),
   Customer_Id INT not null,
   employe_Id INT not null,
   Pizza_Id int not null
);

alter table "Order" 
add constraint fk_order_customer
foreign key (Customer_Id) references Customer(id); 

alter table "Order" 
add constraint fk_order_pizza
foreign key (Pizza_Id) references Pizza(id);

alter table "Order" 
add constraint fk_order_employe
foreign key (employe_Id) references Employe(id); 


CREATE TABLE PizzaIngredient(
   Pizza_ID INT     NOT NULL,
   Ingredient_ID INT     NOT NULL   
);

alter table PizzaIngredient 
add constraint fk_pi_pizza
foreign key (Pizza_ID) references pizza(id); 

alter table  PizzaIngredient 
add constraint fk_pi_ingredient
foreign key (Ingredient_ID) references ingredient(id);
