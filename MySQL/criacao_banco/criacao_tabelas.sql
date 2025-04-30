	create table Locais (
		Cidade varchar(255) primary key,
		Estado varchar(255),
		Regiao varchar(255)
	);

	create table Categorias (
		ID_Categoria int primary key auto_increment,
		Categoria varchar(255)
	);

	create table Lojas (
		ID_Loja int primary key auto_increment,
		Loja varchar(255),
		Gerente varchar(255),
		Endereco varchar(255),
		Num_funcionarios int,
		Telefone varchar(255),
		constraint loja_cidade foreign key (Loja) references Locais (Cidade)
	);

	create table Produtos (
		ID_Produto int primary key auto_increment,
		Nome_produto varchar(255),
		ID_Categoria int,
		Marca_produto varchar(255),
		Num_serie varchar(255),
		Preco_unit int,
		Custo_unit double,
		constraint prouduto_categoria foreign key (ID_Categoria) references Categorias (ID_Categoria)
	);

	create table Clientes (
		ID_Cliente int primary key auto_increment,
		Nome varchar(255),
		Sobrenome varchar(255),
		Data_nascimento varchar(255),
		Estado_civil varchar(255),
		Sexo varchar(255),
		Email varchar(255),
		Telefone varchar(255),
		Renda_anual int,
		Qtd_filhos int,
		Escolaridade varchar(255)
	);

	create table Pedidos (
		ID_Pedido int primary key auto_increment,
		Data_venda varchar(255),
		ID_Loja int,
		ID_Produto int,
		ID_Cliente int,
		Qtd_vendida int,
		Preco_unit int,
		Custo_unit double,
		Receita_venda int,
		Custo_venda double,
		constraint pedido_loja foreign key (ID_Loja) references Lojas (ID_Loja),
		constraint pedido_produto foreign key (ID_Produto) references Produtos (ID_Produto),
		constraint pedido_cliente foreign key (ID_Cliente) references Clientes (ID_Cliente)
	);