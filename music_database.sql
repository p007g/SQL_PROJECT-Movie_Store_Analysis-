/* create and use the database named "music_store" */

create database music_store;
use music_store;


/* create a table named "employee" */

CREATE TABLE employee(
    employee_id VARCHAR(50) PRIMARY KEY,
    last_name CHAR(50),
    first_name CHAR(50),
    title VARCHAR(50),
    reports_to VARCHAR(30),
    levels VARCHAR(10),
    birthdate TIMESTAMP,
    hire_date TIMESTAMP,
    address VARCHAR(120),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(30),
    postal_code VARCHAR(30),
    phone VARCHAR(30),
    fax VARCHAR(30),
    email VARCHAR(30));


/* create a table named "customer" */

CREATE TABLE customer(
    customer_id VARCHAR(30) PRIMARY KEY,
    first_name CHAR(30),
    last_name CHAR(30),
    company VARCHAR(30),
    address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    country VARCHAR(30),
    postal_code INT8,
    phone INT,
    fax INT,
    email VARCHAR(30),
    support_rep_id VARCHAR(30));


/* create a table named "invoice" */

CREATE TABLE invoice(
    invoice_id VARCHAR(30) PRIMARY KEY,
    customer_id VARCHAR(30),
    invoice_date TIMESTAMP,
    billing_address VARCHAR(120),
    billing_city VARCHAR(30),
    billing_state VARCHAR(30),
    billing_country VARCHAR(30),
    billing_postal VARCHAR(30),
    total FLOAT8);


/* create a table named "invoice_line" */

CREATE TABLE invoice_line(
    invoice_line_id VARCHAR(50) PRIMARY KEY,
    invoice_id VARCHAR(30),
    track_id VARCHAR(30),
    unit_price VARCHAR(30),
    quantity VARCHAR(30));


/* create a table named "track" */

CREATE TABLE track(
    track_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30),
    album_id VARCHAR(30),
    media_type_id VARCHAR(30),
    genre_id VARCHAR(30),
    composer VARCHAR(30),
    milliseconds TIMESTAMP,
    bytes INT8,
    unit_price INT16);


/* create a table named "playlist" */

CREATE TABLE playlist(
    playlist_id VARCHAR(50) PRIMARY KEY,
    name  VARCHAR(30));


/* create a table named "playlist_track" */

CREATE TABLE playlist_track(
    playlist_id VARCHAR(50) PRIMARY KEY,
    track_id VARCHAR(50) PRIMARY KEY);


/* create a table named "artist" */

CREATE TABLE artist(
    artist_id VARCHAR(50) PRIMARY KEY,
    name  VARCHAR(30));


/* create a table named "album" */

CREATE TABLE album(
    album_id VARCHAR(50) PRIMARY KEY,
    title  VARCHAR(30),
    artist_id  VARCHAR(30));


/* create a table named "media_type" */

CREATE TABLE media_type(
    media_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30));


/* create aa table named "genre" */

CREATE TABLE genre(
    genre_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30));