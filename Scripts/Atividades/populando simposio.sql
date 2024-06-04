use simposio;

-- insert into tema
insert into tema ( nome, descricao ) values 
( "Biologia", "Plantas e várias coisas" ),
( "Matemática", "Número e várias coisas" ),
( "Física", "Newton e várias coisas" );
-- -----------------------------------------------------------------------------------
-- insert into artigo
insert into artigo ( titulo, descricao, tipo, id_tema ) values 
( "As plantas e outras coisas", "Artigo que fala sobre plantas entre outras coisas", "Pesquisa", 1 ),
( "Integrais", "Artigo que fala cálculos de integrais", "Extenão", 2 ),
( "As leis de Newton", "Sobre as 3 leis de Newton", "Pesquisa", 3 );
-- -----------------------------------------------------------------------------------
-- insert into comissao
insert into comissao ( assunto, descricao, id_tema ) values 
( "Biologia e derivados", "Comissao para julgamento de trabalhos de biologia", 1 ),
( "Matematica e derivados", "Comissao para julgamento de trabalhos de matematica", 2 ),
( "Fisica e derivados", "Comissao para julgamento de trabalhos de fisica", 3 );
-- -----------------------------------------------------------------------------------
-- insert into organizacao
insert into organizacao ( atribuicoes ) values 
( "Manter as salas de minicurso organizadas" ),
( "Monitorar o fluxo do corredor da ala B" );
-- -----------------------------------------------------------------------------------
-- insert into parecer
insert into parecer ( id_comissao, id_artigo, nota, descricao ) values 
( 1, 1, 8.50, "Artigo muito bom traz uma ideia muito boa sobre biologia, podia ser melhor" ),
( 2, 2, 6.50, "Deixou a desejar, mas foi uma boa apresentação" ),
( 3, 3, 10, "Parece que foi escrito por Newton mesmo" );
-- -----------------------------------------------------------------------------------
-- insert into universidade
insert into universidade ( nome, rua, numero, bairro, cidade, pais, cep ) values ( "Uniarp", "Castelo Branco", 89, "Limoeiro", "Não-Me-Toque", "Butão", "49020-922" );
-- -----------------------------------------------------------------------------------
-- insert into simposio
insert into simposio ( nome, data_hora_inicio, data_hora_fim, id_universidade ) values ("ScienceFlow", "2024-06-15 10:00:00", "2024-06-28 16:00:00", 1);
-- -----------------------------------------------------------------------------------
-- insert into palestra
insert into palestra ( nome, assunto, local, hora, id_simposio ) values 
( "Os impactos da biologia na vida", "Biologia", "SALA 02", "2024-06-15 19:00:00", 1),
( "Matemática aplicada", "Financeiro", "SALA 03", "2024-06-20 19:00:00", 1);
-- -----------------------------------------------------------------------------------
-- insert into minicurso
insert into minicurso ( nome, assunto, local, hora, id_simposio ) values 
( "Como aplicar biologia na minha vida?", "Biologia", "SALA 12", "2024-06-16 19:00:00", 1),
( "Física: o caminho até o topo", "Física", "SALA 08", "2024-06-23 19:00:00", 1);
-- -----------------------------------------------------------------------------------
-- insert into inscricao
insert into inscricao ( id_palestra, id_minicurso, nome, data_hora_inscricao ) values 
( 1, 1, "Douglas castro", "2024-06-01 19:00:00"),
( 2, 1, "Alexandre Josen", "2024-06-01 20:00:00"),
( 2, 1, "Wesley Fe", "2024-06-02 19:00:00"),
( 2, 2, "Camar Gueles", "2024-06-01 21:00:00");

-- insert into pessoa
insert into pessoa (nome, idade, email, id_simposio) values 
("Zeca Pimenteira", 22, "zeca.pimenteira@gmail.com", 1),
("João da Esquina", 35, "joao.esquina@gmail.com", 1),
("Maria Botina", 29, "maria.botina@gmail.com", 1),
("Chico Fumaça", 24, "chico.fumaca@gmail.com", 1),
("Tião Carreiro", 33, "tiao.carreiro@gmail.com", 1),
("Jeca Tatu", 28, "jeca.tatu@gmail.com", 1),
("Toninho Malvadeza", 30, "toninho.malvadeza@gmail.com", 1);

insert into palestrante (id_palestra, id_pessoa) values
(1,3),
(2,4),
(2,5);

insert into professor (id_minicurso, id_pessoa, especializacao) values
(1,1, "Formado em ADM"),
(2,2, "Doutorado em Biologia"),
(2,3, "Bacharelado em Matemática");

insert into organizador (id_organizacao, id_pessoa) values
(1,4);

insert into comissionario (id_comissao, id_pessoa) values
(2,6);

insert into inscrito (id_inscricao, id_pessoa) values
(3,6),
(2,4);

insert into autor (id_artigo, id_pessoa) values
(3,6),
(2,4);




