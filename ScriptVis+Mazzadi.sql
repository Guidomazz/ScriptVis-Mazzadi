/Vista de nombre y apellido de clientes/ 
Create view Nombres_de_clientes as 
(Select nombre_cliente, apellido_cliente
from clientes); 

Select * from nombres_de_clientes


/Vista de cliente de Buenos Aires/ 

Create or replace view Clientes_Buenos_Aires as
(select id_cliente
from clientes where provincia_cliente="Buenos Aires")

select* from Clientes_Buenos_Aires


/Vista de clientes que compraron mas de un prenda/ 

Create or replace view Pedidos_varios_art as (Select id_cliente, cantidad from pedidos_clientes where cantidad >= 2)

Select* from Pedidos_varios_art


/Vista de clientes que compraron cargo gris/ 

create or replace view Clientes_Cargo_Gris as (Select Id_Cliente, id_articulo from pedidos_clientes where id_articulo=13)

Select * from clientes_cargo_gris

/Vista de productos menores a $10.000/ 

Create or replace view Articulos_Menores_Diez_Mil as (Select id_articulo from articulos where precio >=9999)

Select id_articulo from articulos where precio >= 9999;

select * from articulos_menores_diez_mil
