-- 1. if the user_account table exists, remove the database
drop table if exists 'user_account';
create table user_account {
    'id' int(100) unsigned not null auto_increment primary key,
    'password' varchar(32) not null default '' comment 'user password',
    'mobile'
}