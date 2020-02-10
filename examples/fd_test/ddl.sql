create table R(
	a varchar(10),
	b varchar(10)
);
create table S(
	b varchar(10),
	c varchar(10)	
);
create table T(
	c varchar(10),
	d varchar(10)
);

insert into R values ('1', 'Joe');
insert into R values ('2', 'Steve');
insert into R values ('3', 'Rob');
insert into R values ('4', 'Mike');
insert into R values ('5', 'Tim');
insert into R values ('6', 'Samuel');

insert into S values ('Samuel', 'cop');
insert into S values ('Steve', 'teacher');
insert into S values ('Rob', 'ceo');
insert into S values ('Joe', 'accountant');
insert into S values ('Mike', 'doctor');
insert into S values ('Tim', 'waiter');

insert into T values ('cop', '$63000');
insert into T values ('teacher', '$56000');
insert into T values ('accountant', '$79000');
insert into T values ('doctor', '$340000');
insert into T values ('ceo', '$750000');
insert into T values ('waiter', '$47000');

create table td_TEST_NEG(
	a varchar(10),
	d varchar(10)
);
create table td_TEST_POS(
	a varchar(10),
	d varchar(10)
);
create table td_TRAIN_NEG(
	a varchar(10),
	d varchar(10)
);
create table td_TRAIN_POS(
	a varchar(10),
	d varchar(10)
);

insert into td_TRAIN_POS values ('4', '340000');
insert into td_TRAIN_POS values ('5', '47000');
insert into td_TRAIN_POS values ('6', '63000');

insert into td_TRAIN_NEG values ('4', '47000');
insert into td_TRAIN_NEG values ('4', '63000');
insert into td_TRAIN_NEG values ('5', '340000');
insert into td_TRAIN_NEG values ('5', '63000');
insert into td_TRAIN_NEG values ('6', '47000');
insert into td_TRAIN_NEG values ('6', '340000');

insert into td_TEST_POS values ('3', '750000');
insert into td_TEST_POS values ('2', '56000');
insert into td_TEST_POS values ('1', '79000');

insert into td_TEST_NEG values ('3', '635000');
insert into td_TEST_NEG values ('3', '899000');
insert into td_TEST_NEG values ('2', '12300');
insert into td_TEST_NEG values ('2', '64300');
insert into td_TEST_NEG values ('1', '95000');
insert into td_TEST_NEG values ('1', '86300');


