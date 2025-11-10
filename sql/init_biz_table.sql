create table biz_post (
                          post_id int(11) primary key,
                          post_name varchar(100) not null,
                          post_prov varchar(10) not null,
                          post_dist varchar(10) not null,
                          post_city varchar(10) not null,
                          post_addr varchar(100) not null
);

create table biz_user (
                          user_id int(15) primary key,
                          user_name varchar(18) not null,
                          user_tel int(11) not null,
                          user_sta varchar(10) not null,
                          user_pin char(10) not null
);

create table biz_addr (
                          addr_id int(20) primary key,
                          addr_prov varchar(10) not null,
                          addr_city varchar(10) not null,
                          addr_dist varchar(10) not null,
                          addr_addr varchar(100) not null,
                          addr_name varchar(18) not null,
                          addr_tel int(11) not null,
                          user_id int(15),
                          foreign key (user_id) references biz_user(user_id)
);

create table biz_pack (
                          pack_id int(20) primary key,
                          user_id int(15),
                          pack_sen int(20),
                          pack_rec int(20),
                          pack_dg bool not null,
                          pack_fra bool not null,
                          pack_urg bool not null,
                          pack_fin char(9),
                          pack_sta varchar(100) not null,
                          pack_note varchar(100),
                          foreign key (user_id) references biz_user(user_id),
                          foreign key (pack_sen) references biz_addr(addr_id),
                          foreign key (pack_rec) references biz_addr(addr_id)
);

create table biz_sfv (
                         post_admin_id bigint(20),
                         pack_id int(20),
                         sfv_sta varchar(10) not null default '待审核' check(sfv_sta in ('待审核', '审核通过', '审核未通过')),
                         sfv_note varchar(100),
                         primary key (post_admin_id, pack_id),
                         foreign key (post_admin_id) references sys_user(user_id),
                         foreign key (pack_id) references biz_pack(pack_id)
);

create table biz_ifv (
                         post_admin_id bigint(20),
                         pack_id int(20),
                         ifv_sta varchar(10) not null default '待审核' check(ifv_sta in ('待审核', '审核通过', '审核未通过')),
                         ifv_note varchar(100),
                         primary key (post_admin_id, pack_id),
                         foreign key (post_admin_id) references sys_user(user_id),
                         foreign key (pack_id) references biz_pack(pack_id)
);

create table biz_ura (
                         user_id int(15),
                         pack_id int(20),
                         ura_rsn varchar(100) not null,
                         ura_ver varchar(10) not null default '待审核' check(ura_ver in ('待审核', '审核通过', '审核未通过')),
                         primary key (user_id, pack_id),
                         foreign key (user_id) references biz_user(user_id),
                         foreign key (pack_id) references biz_pack(pack_id)
);
