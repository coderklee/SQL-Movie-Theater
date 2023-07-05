create table customers(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100)
);

create table tickets (
	ticket_id SERIAL primary key,
	amount DECIMAL,
	movie_id SERIAL,
	customer_id SERIAL,
	foreign key(customer_id) references customers(customer_id)
);

create table concessions (
	item_id SERIAL primary key,
	item_name VARCHAR(100),
	amount DECIMAL,
	customer_id SERIAL,
	foreign key(customer_id) references customers(customer_id)
);

create table movies (
	movie_id SERIAL primary key,
	rating VARCHAR(10),
	ticket_id SERIAL,
	customer_id SERIAL,
	foreign key(customer_id) references customers(customer_id),
	foreign key(ticket_id) references tickets(ticket_id)
);

insert into customers(customer_id, first_name, last_name, address)
values (1, 'Kaleigh', 'Collins', '123 Main St, Oceanside, CA 92058');

insert into tickets(ticket_id, customer_id, amount, movie_id)
values (1, 1, 12.00, 1);

insert into concessions(item_id, item_name, customer_id, amount)
values(1, 'lg popcorn', 1, 8.00);

insert into movies (movie_id, customer_id, rating, ticket_id)
values(1, 1, 'R', 1);
