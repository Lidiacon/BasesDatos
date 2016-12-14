create table Jugador(
nick varchar2(15) not null,
sexo varchar2(1) not null,
edad number not null,
primary key (nick)
);

create table Partida(
nickRetador varchar2(15) not null,
nickRetado varchar2(15) not null,
juego varchar2(20) not null,
fecha date not null,
resultado number,
constraint ch_players check (nickRetador <>nickRetado),
Foreign Key (nickRetador) references Jugador(nick),
Foreign Key (nickRetado) references Jugador(nick),
Primary Key (nickRetador, nickRetado, juego, fecha)
);

create table Maestro(
nick varchar2(15) not null,
juego varchar2(20) not null,
Primary Key (nick, juego),
Foreign Key (nick) references Jugador(nick)
);
