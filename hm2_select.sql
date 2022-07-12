-- название и год выхода альбомов, вышедших в 2017 году;
select album_name, release_year
from albums 
where release_year = 2017; 


-- название и продолжительность самого длительного трека;
select track_name, track_length
from tracks
where track_length = (select max(track_length) from tracks);

-- название треков, продолжительность которых не менее 3,5 минуты;
select track_name
from tracks
where track_length >= 210;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно;
select name_of_collection
from name_collections
where release_year between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова;
select signer_name
from signers 
where array_length(regexp_split_to_array(signer_name, '\s+'), 1) = 1;


-- название треков, которые содержат слово "мой"/"ea".
select track_name
from tracks 
where track_name like '%мой%' or track_name like '%ea%';
