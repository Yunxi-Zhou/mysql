-- 1. if the user_account table exists, remove the database
drop table if exists `user_account`;
create table `user_account` (
    `id` int(100) unsigned not null auto_increment primary key,
    `password` varchar(32) not null default '' comment 'user password',
    `reset_password` varchar(32) not null default 0 comment 'user type: 0-not reset pwd; 1-reset pwd',
    `mobile` varchar(20) not null default '' comment 'phone',
    `create_at` timestamp(6) not null default current_timestamp(6),
    `update_at` timestamp(6) not null default current_timestamp(6) on update current_timestamp(6),
    -- create the unique index, not allow repeat
    unique index idx_user_mobile(`mobile`)
)
engine = InnoDB default charset = utf8
comment = 'user table information';