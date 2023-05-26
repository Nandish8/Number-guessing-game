#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=postgres --tuples-only --no-align -c"
# DROP_IE= $($PSQL "DROP DATABASE IF EXISTS number_guess WITH (FORCE);")
CREATE_DB="$($PSQL "CREATE DATABASE number_guess;")"
echo $($PSQL "\c number_guess")
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"
echo $($PSQL "DROP TABLE IF EXISTS ng")
echo $($PSQL "DROP TABLE IF EXISTS gi")
echo $($PSQL "CREATE TABLE ng(user_id serial primary key,user_name varchar(22) unique)")
echo $($PSQL "CREATE TABLE gi(user_id int, game_id serial primary key, num_of_g int)") 
