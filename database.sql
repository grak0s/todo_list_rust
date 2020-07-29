drop table if exists todo_item;
drop table if exists todo_list;

create table todo_list {
    id serial primary key,
    title varchar(150) not null
};

create table todo_item {
    id serial primry key,
    title varchar(150) not null,
    checked boolean not null defalut false,
    list_id integer not null,
    foreing key (list_id) references todo_list(id)
}

insert into todo_list (title) values ('list1'), ('list2');

insert into todo_item(title, list_id)
    values ('Item 1', 1),('Item 2', 2), ('Item 3',3);