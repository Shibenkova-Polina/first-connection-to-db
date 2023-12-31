create table audit_department (
    Ревизионный_номер varchar not null primary key,
    Тип_изделия text not null,
    Адрес_расположения text not null
);

insert into audit_department
(Ревизионный_номер, Тип_изделия, Адрес_расположения)
values
    ('Xg_5124', 'Компьютер', 'Общага'),
    ('Eg_8462', 'Принтер', 'Библиотека'),
    ('Xl_6513', 'Системный блок', 'Кабинет 426'),
    ('Zn_2196', 'Монитор', 'Кабинет 426'),
    ('Fb_5487', 'Компьютер', 'Библиотека'),
    ('Tc_7698', 'Компьютер', 'Лаборатория'),
    ('Lm_4132', 'Системный блок', 'Кабинет 302'),
    ('Hj_7853', 'Монитор', 'Кабинет 302'),
    ('Am_7584', 'Ноутбук', 'Аудитория 1'),
    ('Nr_5187', 'Проектор', 'Аудитория 1'),
    ('Dk_4596', 'Компьютер', 'Лаборатория'),
    ('Qp_6247', 'Компьютер', 'Общага'),
    ('Ws_8453', 'Компьютер', 'Библиотека'),
    ('Rt_2679', 'Принтер', 'Общага'),
    ('Vn_3465', 'Компьютер', 'КПП'),
    ('Kz_1952', 'Сканер', 'Библиотека'),
    ('Qs_6529', 'Ноутбук', 'Аудитория 3'),
    ('Zp_8976', 'Проектор', 'Аудитория 3');

select Ревизионный_номер, Тип_изделия, Адрес_расположения
from audit_department;