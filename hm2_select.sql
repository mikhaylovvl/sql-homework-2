-- �������� � ��� ������ ��������, �������� � 2017 ����;
select album_name, release_year
from albums 
where release_year = 2017; 


-- �������� � ����������������� ������ ����������� �����;
select track_name, track_length
from tracks
where track_length = (select max(track_length) from tracks);

-- �������� ������, ����������������� ������� �� ����� 3,5 ������;
select track_name
from tracks
where track_length >= 210;

-- �������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������;
select name_of_collection
from name_collections
where release_year between 2018 and 2020;

--�����������, ��� ��� ������� �� 1 �����;
select signer_name
from signers 
where array_length(regexp_split_to_array(signer_name, '\s+'), 1) = 1;


-- �������� ������, ������� �������� ����� "���"/"ea".
select track_name
from tracks 
where track_name like '%���%' or track_name like '%ea%';
