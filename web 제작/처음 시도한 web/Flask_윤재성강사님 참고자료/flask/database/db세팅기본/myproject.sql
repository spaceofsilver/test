create database mymy_project;
default character set utf8
collate mymy_project;

# 데이터 베이스 사용 설정
use pusan_board_db;

# 회원정보 테이블 만들기
create table user_table(
    user_idx int not null,
    user_name character(10) not null,
    user_id varchar(100) not null, 
    user_pw varchar(100) not null,
    -- 제약조건
    constraint user_pk primary key(user_idx),
    constraint user_uni unique(user_id)
);

# 게시판 테이블 만들기
create table board_table(
    board_idx int not null,
    board_name varchar(100) not null,
    -- 제약조건
    constraint board_pk primary key(board_idx),
    constraint board_uni unique(board_name)
);

# 게시글 테이블 만들기
create table content_table(
    content_idx int not null,
    content_subject varchar(100) not null,
    content_date date not null,
    content_writer_idx int not null,
    content_text varchar(500) not null, 
    content_file varchar(500),
    content_board_idx int not null,
    -- 제약조건
    constraint content_pk primary key(content_idx),
    constraint content_fk1 foreign key(content_writer_idx)
    references user_talbe(user_idx),
    constraint content_fk2 foreign key(content_board_idx)
    references board_table(board_idx)
);