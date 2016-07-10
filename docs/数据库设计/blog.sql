drop table if exists BLOGD_REPLY;

drop table if exists BLOG_ALBUM;

drop table if exists BLOG_ARTICLE;

drop table if exists BLOG_ARTICLE_REPLY;

drop table if exists BLOG_CATALOG;

drop table if exists BLOG_FILE;

drop table if exists BLOG_PHOTO;

drop table if exists BLOG_PHOTO_REPLY;

drop table if exists BLOG_ROLE;

drop table if exists BLOG_USER;

drop table if exists BLOG_USER_ROLE;

/*==============================================================*/
/* Table: BLOGD_REPLY                                           */
/*==============================================================*/
create table BLOGD_REPLY
(
   id                   bigint not null,
   name                 varchar(100) not null,
   email                varchar(100) not null,
   comment              varchar(1000) not null,
   create_time          timestamp not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_ALBUM                                            */
/*==============================================================*/
create table BLOG_ALBUM
(
   id                   bigint not null,
   name                 varchar(100) not null,
   is_visible           int not null,
   description          varchar(1000),
   create_time          timestamp not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_ARTICLE                                          */
/*==============================================================*/
create table BLOG_ARTICLE
(
   id                   bigint not null,
   title                varchar(200) not null,
   content              longtext,
   catalog_id           bigint not null,
   accessory_id         bigint,
   labels               varchar(200),
   is_visible           int not null,
   creater              bigint not null,
   create_time          timestamp not null,
   modify_time          timestamp not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_ARTICLE_REPLY                                    */
/*==============================================================*/
create table BLOG_ARTICLE_REPLY
(
   id                   bigint not null,
   reply_id             bigint not null,
   article_id           bigint not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_CATALOG                                          */
/*==============================================================*/
create table BLOG_CATALOG
(
   id                   bigint not null,
   name                 varchar(100) not null,
   create_time          timestamp not null,
   modify_time          timestamp not null,
   description          varchar(100),
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_FILE                                             */
/*==============================================================*/
create table BLOG_FILE
(
   id                   bigint not null,
   original_name        varchar(200) not null,
   unique_name          varchar(200) not null,
   absolute_path        varchar(1000) not null,
   create_time          timestamp not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_PHOTO                                            */
/*==============================================================*/
create table BLOG_PHOTO
(
   ID                   bigint not null,
   album_id             bigint not null,
   file_id              bigint not null,
   description          varchar(1000),
   primary key (ID)
);

/*==============================================================*/
/* Table: BLOG_PHOTO_REPLY                                      */
/*==============================================================*/
create table BLOG_PHOTO_REPLY
(
   id                   bigint not null,
   reply_id             bigint not null,
   BLO_ID               bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_ROLE                                             */
/*==============================================================*/
create table BLOG_ROLE
(
   id                   bigint not null,
   name                 varchar(100) not null,
   title                varchar(100) not null,
   comment              varchar(1000),
   create_time          timestamp not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_USER                                             */
/*==============================================================*/
create table BLOG_USER
(
   id                   bigint not null,
   username             varchar(100) not null,
   password             varchar(100) not null,
   create_time          timestamp not null,
   primary key (id)
);

/*==============================================================*/
/* Table: BLOG_USER_ROLE                                        */
/*==============================================================*/
create table BLOG_USER_ROLE
(
   id                   bigint not null,
   user_id              bigint not null,
   role_id              bigint not null,
   primary key (id)
);

alter table BLOG_ARTICLE add constraint FK_Reference_1 foreign key (catalog_id)
      references BLOG_CATALOG (id) on delete restrict on update restrict;

alter table BLOG_ARTICLE add constraint FK_Reference_12 foreign key (accessory_id)
      references BLOG_FILE (id) on delete restrict on update restrict;

alter table BLOG_ARTICLE_REPLY add constraint FK_Reference_2 foreign key (reply_id)
      references BLOGD_REPLY (id) on delete restrict on update restrict;

alter table BLOG_ARTICLE_REPLY add constraint FK_Reference_8 foreign key (article_id)
      references BLOG_ARTICLE (id) on delete restrict on update restrict;

alter table BLOG_PHOTO add constraint FK_Reference_10 foreign key (album_id)
      references BLOG_ALBUM (id) on delete restrict on update restrict;

alter table BLOG_PHOTO add constraint FK_Reference_9 foreign key (file_id)
      references BLOG_FILE (id) on delete restrict on update restrict;

alter table BLOG_PHOTO_REPLY add constraint FK_Reference_11 foreign key (BLO_ID)
      references BLOG_PHOTO (ID) on delete restrict on update restrict;

alter table BLOG_PHOTO_REPLY add constraint FK_Reference_4 foreign key (reply_id)
      references BLOGD_REPLY (id) on delete restrict on update restrict;

alter table BLOG_USER_ROLE add constraint FK_Reference_6 foreign key (user_id)
      references BLOG_USER (id) on delete restrict on update restrict;

alter table BLOG_USER_ROLE add constraint FK_Reference_7 foreign key (role_id)
      references BLOG_ROLE (id) on delete restrict on update restrict;
