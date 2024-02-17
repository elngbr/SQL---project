
      
      
        CREATE TABLE "ROOMS" 
   (	"HALL_NUMBER" NUMBER(3,0), 
	"SEATING_CAPACITY" NUMBER(3,0) CONSTRAINT "C1" NOT NULL ENABLE, 
	"HALL_TYPE" VARCHAR2(200), 
	"FACILITIES" VARCHAR2(300), 
	 CONSTRAINT "P1" PRIMARY KEY ("HALL_NUMBER")
  USING INDEX  ENABLE
   ) ;
   
   delete from rooms;
   
   insert into rooms (hall_number, seating_capacity, hall_type, facilities) 
values (1, 300, '3D Hall', 'Advanced projectors and glasses for immersive depth. Clear 3D visuals with HD projectors. Synchronized for depth perception. It also includes a ramp for people with disabilities and special chairs allocated for such individuals.');


insert into rooms (hall_number, seating_capacity, hall_type, facilities) 
values (2, 150, 'Standard',  'Classic cinema room with a large screen and standard digital projectors for clear visuals. Regular seating offers a comfortable experience for all, with inclusive features like ramps for accessibility and special chairs for individuals with disabilities. ');

insert into rooms (hall_number, seating_capacity, hall_type, facilities) 
values (3, 100, 'IMAX',  'Immerse yourself in cinematic grandeur at our IMAX cinema. With a colossal screen and advanced technology, experience unparalleled visuals and immersive sound. Welcome to the future of film comfort, only at our IMAX venue.');

insert into rooms (hall_number, seating_capacity, hall_type, facilities) 
values (4, 200, 'Dolby Atmos Hall', 'Indulge in a sonic masterpiece with our Dolby Atmos Hall. Crystal-clear audio from all directions for an immersive sound experience. Premium seating ensures comfort, while ramps and special chairs cater to individuals with disabilities.');


insert into rooms (hall_number, seating_capacity, hall_type, facilities) 
values (5, 120, 'VIP Lounge', 'Elevate your movie night in our VIP Lounge. Enjoy an intimate setting with luxurious seating, personalized service, and a private screening experience. Accessible amenities ensure a cinematic escape for everyone.');

insert into rooms (hall_number, seating_capacity, hall_type, facilities) 
values (6, 180, 'CineClassics', 'Step into nostalgia with our CineClassics room. Featuring a curated selection of timeless films on a vintage-inspired screen.');


INSERT INTO rooms (hall_number, seating_capacity, hall_type, facilities)
VALUES
  (100, 10, 'Corner Office', 'Executive Desk, Private Restroom, View');
  INSERT INTO rooms (hall_number, seating_capacity, hall_type, facilities)
VALUES
  (101, 8, 'Corner Office', 'Manager Desk, Private Restroom, View');
  INSERT INTO rooms (hall_number, seating_capacity, hall_type, facilities)
VALUES
  (102, 8, 'Corner Office', 'Manager Desk, Private Restroom, View');

commit

select * from rooms

CREATE TABLE "STAFF" 
   (	"EMPLOYEE_ID" VARCHAR2(5), 
	"FIRST_NAME" VARCHAR2(10), 
	"LAST_NAME" VARCHAR2(10), 
	"TASK" VARCHAR2(20), 
	"PHONE" VARCHAR2(11), 
	"EMAIL" VARCHAR2(30), 
	"HALL_NUMBER" NUMBER(3,0), 
	"SALARY" NUMBER(8,4),  
	 CONSTRAINT "P2" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "STAFF" ADD FOREIGN KEY ("HALL_NUMBER")
	  REFERENCES "ROOMS" ("HALL_NUMBER") ENABLE;



-- Insertions for STAFF table

INSERT INTO STAFF (employee_id, first_name, last_name, task, phone, email, hall_number) values ('C888', 'Elena', 'Eftimie', 'CEO', '0787823221', 'eftimieelena22@stud.ase.ro', 100);

insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E001', 'Ana', 'Popescu', 'Manager', '07123456789', 'ana.popescu@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E002', 'Mihai', 'Ionescu', 'Projectionist', '07234567890', 'mihai.ionescu@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E003', 'Elena', 'Dumitrescu', 'Cleaner', '07345678901', 'elena.dumitrescu@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E004', 'Adrian', 'Radu', 'Usher', '07456789012', 'adrian.radu@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E005', 'Cristina', 'Marin', 'Ticket Seller', '07567890123', 'cristina.marin@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E006', 'Alexandru', 'Tudor', 'Concession Stand', '07678901234', 'alexandru.tudor@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E007', 'Ioana', 'Vasile', 'Manager', '07789012345', 'ioana.vasile@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E008', 'Radu', 'Dinu', 'Projectionist', '07890123456', 'radu.dinu@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E009', 'Andreea', 'Georgescu', 'Cleaner', '07901234567', 'andreea.georgescu@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E010', 'Ion', 'Vlad', 'Usher', '08012345678', 'ion.vlad@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E011', 'Mara', 'Stanciu', 'Ticket Seller', '08123456789', 'mara.stanciu@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E012', 'Dorin', 'Barbu', 'Concession Stand', '08234567890', 'dorin.barbu@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E013', 'Larisa', 'Gheorghe', 'Manager', '08345678901', 'larisa.gheorghe@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E014', 'Vladimir', 'Moldovan', 'Projectionist', '08456789012', 'vladimir.moldovan@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E015', 'Camelia', 'Toma', 'Cleaner', '08567890123', 'camelia.toma@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E016', 'Marius', 'Stoica', 'Usher', '08678901234', 'marius.stoica@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E017', 'Ana-Maria', 'Constantin', 'Ticket Seller', '08789012345', 'ana-maria.constantin@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E018', '?tefan', 'Munteanu', 'Concession Stand', '08890123456', 'stefan.munteanu@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E019', 'Anda', 'Cozma', 'Manager', '08901234567', 'anda.cozma@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E020', 'Bogdan', 'Ion', 'Projectionist', '09012345678', 'bogdan.ion@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E021', 'Georgiana', 'Filip', 'Cleaner', '09123456789', 'georgiana.filip@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E022', 'C?t?lin', 'Albu', 'Usher', '09234567890', 'catalin.albu@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E023', 'Diana', 'Enache', 'Ticket Seller', '09345678901', 'diana.enache@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E024', 'Gabriel', 'Antonescu', 'Concession Stand', '09456789012', 'gabriel.antonescu@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E025', 'Roxana', 'Gavril', 'Manager', '09567890123', 'roxana.gavril@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E026', '?tefania', 'Dinu', 'Projectionist', '09678901234', 'stefania.dinu@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E027', 'Dorin', 'Florea', 'Cleaner', '09789012345', 'dorin.florea@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E028', 'Adela', 'Badea', 'Usher', '09890123456', 'adela.badea@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E029', 'Iulian', 'Barbu', 'Ticket Seller', '09901234567', 'iulian.barbu@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E030', 'Ana', 'Gheorghe', 'Concession Stand', '10012345678', 'ana.gheorghe@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E031', 'C?t?lin', 'Mihai', 'Manager', '10123456789', 'catalin.mihai@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E032', 'Elena', 'Vasile', 'Projectionist', '10234567890', 'elena.vasile@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E033', 'George', 'Popa', 'Cleaner', '10345678901', 'george.popa@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E034', 'Andreea', 'Ivan', 'Usher', '10456789012', 'andreea.ivan@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E035', 'Robert', 'Alexescu', 'Ticket Seller', '10567890123', 'robert.alexandrescu@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E036', 'Irina', 'Dumitru', 'Concession Stand', '10678901234', 'irina.dumitru@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E037', 'Alexandru', 'Moldovan', 'Manager', '10789012345', 'alexandru.moldovan@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E038', 'Gabriela', 'Gheorghe', 'Projectionist', '10890123456', 'gabriela.gheorghe@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E039', 'Marius', 'B?lan', 'Cleaner', '10901234567', 'marius.balan@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E040', 'Elena', 'Ion', 'Usher', '11012345678', 'elena.ion@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E041', 'Bogdan', 'Nistor', 'Ticket Seller', '11123456789', 'bogdan.nistor@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E042', 'Simona', 'Munteanu', 'Concession Stand', '11234567890', 'simona.munteanu@email.com', 6);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E043', 'Ionel', 'Dinu', 'Manager', '11345678901', 'ionel.dinu@email.com', 1);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E044', 'Raluca', 'Tudor', 'Projectionist', '11456789012', 'raluca.tudor@email.com', 2);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E045', 'Dorin', 'Filip', 'Cleaner', '11567890123', 'dorin.filip@email.com', 3);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E046', 'Mihaela', 'Barbu', 'Usher', '11678901234', 'mihaela.barbu@email.com', 4);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E047', 'Victor', 'Gavril', 'Ticket Seller', '11789012345', 'victor.gavril@email.com', 5);
insert into STAFF (employee_ID, first_name, last_name, task, phone, email, hall_number) values ('E048', 'Alina', 'Enache', 'Concession Stand', '11890123456', 'alina.enache@email.com', 6);

select * from staff;


  CREATE TABLE "FILMS" 
   (	"IMDB_ID" VARCHAR2(40), 
	"NAME" VARCHAR2(50), 
	"DIRECTOR" VARCHAR2(50), 
	"RELEASING_YEAR" NUMBER(4,0), 
	"GENRE" VARCHAR2(30), 
	"REVIEW_OUT_OF_5_STARS" NUMBER, 
	 CONSTRAINT "P3" PRIMARY KEY ("IMDB_ID")
  USING INDEX  ENABLE
   ) ;


insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0499549', 'Avatar', 'James Cameron', 2009, 'Action');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1454468', 'Gravity', 'Alfonso Cuar�n', 2013, 'Sci-Fi');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0111161', 'The Shawshank Redemption', 'Frank Darabont', 1994, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0107290', 'Jurassic Park', 'Steven Spielberg', 1993, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1856101', 'Blade Runner 2049', 'Denis Villeneuve', 2017, 'Sci-Fi');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1663202', 'The Revenant', 'Alejandro G. I��rritu', 2015, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1392190', 'Mad Max: Fury Road', 'George Miller', 2015, 'Action');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt6644200', 'A Quiet Place', 'John Krasinski', 2018, 'Horror');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1343092', 'The Great Gatsby', 'Baz Luhrmann', 2013, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt3783958', 'La La Land', 'Damien Chazelle', 2016, 'Musical');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0034583', 'Casablanca', 'Michael Curtiz', 1942, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0045152', 'Singin'' in the Rain', 'Stanley Donen, Gene Kelly', 1952, 'Comedy');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0211915', 'Am�lie', 'Jean-Pierre Jeunet', 2001, 'Comedy');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt6722030', 'Les Traducteurs', 'R�gis Roinsard', 2019, 'Mystery');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1504320', 'The King''s Speech', 'Tom Hooper', 2010, 'Biography');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt7286456', 'Joker', 'Todd Phillips', 2019, 'Crime');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt5335314', 'Un pas �n umbra serafimilor', 'Daniel Sandu', 2016, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt58281', 'Dupa dealuri', 'Cristian Mungiu', 2012, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0118694', 'In the Mood for Love', 'Wong Kar-wai', 2000, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0237059', 'Un bulgare de hum?', 'Stere Gulea', 1983, 'Biography');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0063439', 'Reconstituirea', 'Lucian Pintilie', 1968, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0095657', 'Morome?ii', 'Sterea Gulea', 1987, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1032846', '4 luni, 3 s?pt?m�ni ?i 2 zile', 'Cristian Mungiu', 2007, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1019968', 'Beanpole', 'Kantemir Balagov', 2019, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1781769', 'Anna Karenina', 'Joe Wright', 2012, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0120632', 'City of Angels', 'Brad Silberling', 1998, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0083806', 'Le Professionnel', 'Georges Lautner', 1981, 'Action');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0450188', 'La Vie en Rose', 'Olivier Dahan', 2007, 'Biography');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0424205', 'Joyeux No�l', 'Christian Carion', 2005, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt8613070', 'Portrait of a Lady on Fire', 'C�line Sciamma', 2019, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0253474', 'The Pianist', 'Roman Polanski', 2002, 'Biography');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0118799', 'La Vita � Bella', 'Roberto Benigni', 1997, 'Comedy');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0095765', 'Cinema Paradiso', 'Giuseppe Tornatore', 1988, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0052893', 'Hiroshima Mon Amour', 'Alain Resnais', 1959, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0032553', 'The Great Dictator', 'Charles Chaplin', 1940, 'Comedy');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0027977', 'Modern Times', 'Charles Chaplin', 1936, 'Comedy');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt10598260', 'Mo', 'Radu Dragomir', 2016, 'Comedy');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0103969', 'The Oak', 'Lucian Pintilie', 1992, 'Drama');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1619029', 'Jackie', 'Pablo Larra�n', 2016, 'Biography');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1568921', 'The Secret World of Arrietty', 'Hiromasa Yonebayashi', 2010, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0120783', 'The Parent Trap', 'Nancy Meyers', 1998, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0317705', 'The Incredibles', 'Brad Bird', 2004, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt2294629', 'Frozen', 'Chris Buck, Jennifer Lee', 2013, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt3040964', 'The Jungle Book', 'Jon Favreau', 2016, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0266543', 'Finding Nemo', 'Andrew Stanton', 2003, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0435761', 'Toy Story 3', 'Lee Unkrich', 2010, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0363771', 'The Chronicles of Narnia: The Lion, the Witch&..', 'Andrew Adamson', 2005, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0330373', 'Harry Potter and the Goblet of Fire', 'Mike Newell', 2005, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0097757', 'The Little Mermaid', 'Ron Clements, John Musker', 1989, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0110357', 'The Lion King', 'Roger Allers, Rob Minkoff', 1994, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0367594', 'Charlie and the Chocolate Factory', 'Tim Burton', 2005, 'Adventure');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0892791', 'Shrek Forever After', 'Mike Mitchell', 2010, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0424095', 'Flushed Away', 'David Bowers, Sam Fell', 2006, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0317219', 'Cars', 'John Lasseter, Joe Ranft', 2006, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0952640', 'Alvin and the Chipmunks', 'Tim Hill', 2007, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1216475', 'Cars 2', 'John Lasseter, Brad Lewis', 2011, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1231580', 'Alvin and the Chipmunks: The Squeakquel', 'Betty Thomas', 2009, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt3606752', 'Cars 3', 'Brian Fee', 2017, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1615918', 'Alvin and the Chipmunks: Chipwrecked', 'Mike Mitchell', 2011, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt0288441', 'Barbie in the Nutcracker', 'Owen Hurley', 2001, 'Animation');
insert into FILMS (IMDb_id, name, director, releasing_year, genre) values ('tt1725929', 'Barbie: A Fashion Fairytale', 'William Lau', 2010, 'Animation');

select * from films


  CREATE TABLE "SHOWTIMES" 
   (	"SHOW_ID" VARCHAR2(4), 
	"SEAT_NUMBER" NUMBER(3,0), 
	"IMDB_ID" VARCHAR2(40), 
	"SHOW_DATE" DATE, 
	 CONSTRAINT "P4" PRIMARY KEY ("SHOW_ID")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "SHOWTIMES" ADD CONSTRAINT "F1" FOREIGN KEY ("SEAT_NUMBER")
	  REFERENCES "ROOMS" ("HALL_NUMBER") ENABLE;
  ALTER TABLE "SHOWTIMES" ADD CONSTRAINT "F2" FOREIGN KEY ("IMDB_ID")
	  REFERENCES "FILMS" ("IMDB_ID") ENABLE;
      
      alter table showtimes rename column seat_number to hall_number
      
      -- Showtimes 
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S101', 1, 'tt0052893', TO_DATE('01/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S102', 1, 'tt1619029', TO_DATE('01/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S201', 2, 'tt0111161', TO_DATE('02/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S202', 2, 'tt0107290', TO_DATE('02/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S203', 2, 'tt0032553', TO_DATE('03/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S204', 2, 'tt0120783', TO_DATE('03/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S205', 2, 'tt0317705', TO_DATE('04/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S301', 3, 'tt1856101', TO_DATE('05/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S302', 3, 'tt1663202', TO_DATE('05/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S303', 3, 'tt2294629', TO_DATE('06/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S304', 3, 'tt3040964', TO_DATE('06/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S401', 4, 'tt1392190', TO_DATE('07/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S402', 4, 'tt6644200', TO_DATE('07/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S403', 4, 'tt3606752', TO_DATE('08/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S404', 4, 'tt1615918', TO_DATE('08/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S501', 5, 'tt1343092', TO_DATE('09/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S502', 5, 'tt3783958', TO_DATE('09/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S503', 5, 'tt0288441', TO_DATE('10/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S504', 5, 'tt1725929', TO_DATE('10/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S505', 5, 'tt0363771', TO_DATE('11/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S506', 5, 'tt10598260', TO_DATE('11/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S601', 6, 'tt0034583', TO_DATE('12/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S602', 6, 'tt0045152', TO_DATE('12/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S603', 6, 'tt0367594', TO_DATE('13/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S604', 6, 'tt0317219', TO_DATE('13/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S103', 1, 'tt1568921', TO_DATE('14/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S206', 2, 'tt1231580', TO_DATE('14/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S305', 3, 'tt0288441', TO_DATE('15/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S405', 4, 'tt0266543', TO_DATE('15/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S599', 5, 'tt0266543', TO_DATE('16/01/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S106', 1, 'tt1568921', TO_DATE('01/03/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S107', 2, 'tt1231580', TO_DATE('01/03/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S108', 3, 'tt0288441', TO_DATE('02/03/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S109', 4, 'tt0266543', TO_DATE('02/03/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S178', 5, 'tt0266543', TO_DATE('03/03/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S211', 1, 'tt1343092', TO_DATE('01/07/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S207', 2, 'tt3783958', TO_DATE('01/07/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S208', 3, 'tt0367594', TO_DATE('02/07/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S209', 4, 'tt0317219', TO_DATE('02/07/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S210', 5, 'tt0424095', TO_DATE('03/07/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S306', 1, 'tt0052893', TO_DATE('01/11/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S307', 2, 'tt1619029', TO_DATE('01/11/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S308', 3, 'tt1856101', TO_DATE('02/11/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S309', 4, 'tt1392190', TO_DATE('02/11/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S310', 5, 'tt1343092', TO_DATE('03/11/2024', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S411', 4, 'tt1392190', TO_DATE('01/01/2000', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S488', 4, 'tt6644200', TO_DATE('01/01/2000', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S477', 4, 'tt3606752', TO_DATE('02/01/2000', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S479', 4, 'tt1615918', TO_DATE('02/01/2000', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S456', 4, 'tt0435761', TO_DATE('01/01/2002', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S423', 4, 'tt0363771', TO_DATE('02/01/2002', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S498', 4, 'tt0330373', TO_DATE('02/01/2002', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S430', 4, 'tt0952640', TO_DATE('01/01/2003', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S469', 4, 'tt1216475', TO_DATE('02/01/2003', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S464', 4, 'tt1231580', TO_DATE('02/01/2003', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S413', 4, 'tt3606752', TO_DATE('01/01/2007', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S414', 4, 'tt1615918', TO_DATE('01/01/2007', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S415', 4, 'tt0288441', TO_DATE('02/01/2007', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S416', 4, 'tt1725929', TO_DATE('02/01/2007', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S417', 4, 'tt0317705', TO_DATE('01/01/2008', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S418', 4, 'tt0363771', TO_DATE('01/01/2008', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S419', 4, 'tt0367594', TO_DATE('02/01/2008', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S420', 4, 'tt0424095', TO_DATE('02/01/2008', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S421', 4, 'tt0952640', TO_DATE('01/01/2009', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S422', 4, 'tt1231580', TO_DATE('01/01/2009', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S449', 4, 'tt1216475', TO_DATE('02/01/2009', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S424', 4, 'tt3606752', TO_DATE('02/01/2009', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S425', 4, 'tt1615918', TO_DATE('01/01/2012', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S426', 4, 'tt0288441', TO_DATE('01/01/2012', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S427', 4, 'tt1725929', TO_DATE('02/01/2012', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S428', 4, 'tt0317705', TO_DATE('02/01/2012', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S429', 4, 'tt0363771', TO_DATE('01/01/2015', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S444', 4, 'tt0363771', TO_DATE('01/01/2015', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S431', 4, 'tt0424095', TO_DATE('02/01/2015', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S432', 4, 'tt0110357', TO_DATE('02/01/2015', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S433', 4, 'tt0952640', TO_DATE('01/01/2018', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S434', 4, 'tt1231580', TO_DATE('01/01/2018', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S435', 4, 'tt1216475', TO_DATE('02/01/2018', 'DD/MM/YYYY'));
insert into SHOWTIMES (show_id, hall_number, IMDb_id, show_date) values ('S436', 4, 'tt3606752', TO_DATE('02/01/2018', 'DD/MM/YYYY'));



CREATE TABLE "TICKETS" 
   (	"TICKET_ID" VARCHAR2(10), 
	"SEAT_NUMBER" NUMBER(3,0), 
	"PRICE" NUMBER(4,1), 
	"SHOW_ID" VARCHAR2(4), 
	 CONSTRAINT "P5" PRIMARY KEY ("TICKET_ID")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "TICKETS" ADD CONSTRAINT "F3" FOREIGN KEY ("SHOW_ID")
	  REFERENCES "SHOWTIMES" ("SHOW_ID") ENABLE;
  ALTER TABLE "TICKETS" ADD CONSTRAINT "SS8FS88" FOREIGN KEY ("SEAT_NUMBER")
	  REFERENCES "ROOMS" ("HALL_NUMBER") ENABLE;

      -- TICKETS
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101001', 1, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101002', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T102001', 1, 10.0, 'S102');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T102002', 2, 10.0, 'S102');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T201001', 1, 8.5, 'S201');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T201002', 2, 8.5, 'S201');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T202001', 1, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T202002', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T203001', 1, 8.5, 'S203');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T203002', 2, 8.5, 'S203');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T204001', 1, 8.5, 'S204');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T204002', 2, 8.5, 'S204');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T205001', 1, 8.5, 'S205');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T205002', 2, 8.5, 'S205');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T301001', 1, 12.0, 'S301');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T301002', 2, 12.0, 'S301');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T302001', 1, 12.0, 'S302');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T302002', 2, 12.0, 'S302');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T303001', 1, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T303002', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T304001', 1, 12.0, 'S304');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T304002', 2, 12.0, 'S304');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T401001', 1, 15.0, 'S401');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T401002', 2, 15.0, 'S401');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T402001', 1, 15.0, 'S402');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T402002', 2, 15.0, 'S402');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T403001', 1, 15.0, 'S403');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T403002', 2, 15.0, 'S403');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T404001', 1, 15.0, 'S404');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T404002', 2, 15.0, 'S404');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T501001', 1, 20.0, 'S501');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T501002', 2, 20.0, 'S501');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T502001', 1, 20.0, 'S502');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T502002', 2, 20.0, 'S502');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T503001', 1, 20.0, 'S503');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T503002', 2, 20.0, 'S503');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T504001', 1, 20.0, 'S504');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T504002', 2, 20.0, 'S504');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T505001', 1, 20.0, 'S505');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T505002', 2, 20.0, 'S505');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T506001', 1, 20.0, 'S506');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T506002', 2, 20.0, 'S506');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T601001', 1, 18.0, 'S601');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T601002', 2, 18.0, 'S601');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T602001', 1, 18.0, 'S602');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T602002', 2, 18.0, 'S602');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T603001', 1, 18.0, 'S603');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T603002', 2, 18.0, 'S603');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T604001', 1, 18.0, 'S604');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T604002', 2, 18.0, 'S604');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T103001', 1, 10.0, 'S103');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T103002', 2, 10.0, 'S103');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T206001', 1, 8.5, 'S206');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T206002', 2, 8.5, 'S206');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T305001', 1, 12.0, 'S305');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T305002', 2, 12.0, 'S305');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T405001', 1, 15.0, 'S405');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T405002', 2, 15.0, 'S405');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T507001', 1, 20.0, 'S507');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T507002', 2, 20.0, 'S507');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T106001', 1, 10.0, 'S106');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T106002', 2, 10.0, 'S106');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T107001', 1, 8.5, 'S107');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T107002', 2, 8.5, 'S107');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T108001', 1, 12.0, 'S108');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T108002', 2, 12.0, 'S108');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T109001', 1, 15.0, 'S109');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T109002', 2, 15.0, 'S109');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T110001', 1, 20.0, 'S102');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T110002', 2, 20.0, 'S102');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T211001', 1, 20.0, 'S211');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T211002', 2, 20.0, 'S211');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T207001', 1, 20.0, 'S207');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T207002', 2, 20.0, 'S207');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T208001', 1, 18.0, 'S208');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T208002', 2, 18.0, 'S208');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T209001', 1, 18.0, 'S209');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T209002', 2, 18.0, 'S209');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101701', 1, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101652', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101702', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101582', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T141002', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101072', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T109052', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T101252', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T801002', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T103572', 2, 10.0, 'S101');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T202671', 1, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T202602', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T205602', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T278602', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T202582', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T203652', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T209872', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T458602', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T265602', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T358602', 2, 8.5, 'S202');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T306891', 1, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T358002', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T356402', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T353202', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T357902', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T357302', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T358782', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T354602', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T346002', 2, 12.0, 'S303');
insert into TICKETS (ticket_id, seat_number, price, show_id) values ('T379002', 2, 12.0, 'S303');



update  staff set hall_number = 101 where hall_number<=3 and upper(task) like '%MANAGER%';

update  staff set hall_number = 102 where employee_id in ('E015','E016','E017','E018','E019','E025','E036','E027','E029','E030','E031' ) and upper(task) like '%MANAGER%';


update films set review_out_of_5_stars=5 where director in ('Lucian Pintilie', 'Cristian Mungiu', 'Stere Gulea', 'Radu Dragomir');

create table managers as select * from staff where task IN ('Manager', 'Supervisor', 'CEO');

update managers set task='Supervisor' where hall_number=102;

insert into managers (employee_id, first_name, last_name, task,hall_number) values ('E051', 'Adrian', 'Tititeni', 'CFO', 100);
insert into managers (employee_id, first_name, last_name, task,hall_number) values ('E052', 'Sorin', 'Pavlu', 'HR', 102);
insert into managers (employee_id, first_name, last_name, task,hall_number) values ('E053', 'Iulian', 'Lates', 'PR manager', 102);
insert into managers (employee_id, first_name, last_name, task,hall_number) values ('E054', 'Petru', 'Cornea', 'CMO', 100);


merge into staff s
using managers m
on (s.employee_id = m.employee_id)
when matched then
  update set s.task = m.task
when not matched then
  insert (employee_id, first_name, last_name, task, hall_number)
  values (m.employee_id, m.first_name, m.last_name, m.task, m.hall_number);


update staff

set salary =
case
when lower(task) like '%ceo%' then  6000
when lower(task) like '%cfo%' then  7500
when lower(task) like '%cmo%' then  5500
when lower(task) like '%supervisor%' then  4500
when lower(task) like '%manager%' then 5000
when lower(task) like '%curator%' then 2500
when lower(task) like '%projectionist%' then 3500
when lower(task) like '%usher%' then 2500
when lower(task) like '%concession stand%' then 3000
when lower(task) like '%ticket seller%' then 3000
when lower(task) like '%cleaner%' then 2000
else 0
end;


alter table tickets rename column seat_number to hall_number;

create index staff_index on staff(concat(employee_id, substr(task, 1,1)));


create view films_with_spectators as select distinct f.imdb_id, f.name from films f, showtimes s, tickets t
where s.show_id=t.show_id and f.imdb_id=s.imdb_id;


create synonym movies for films;

-- aprat from the CEO, who has an id starting with C, you have until know 54 employees. Create a sequence so that you do not have to
-- check how many employees you have in your records every time you add a new employee.

create sequence staff_ids
start with 54
increment by 1
nocache
nocycle;



-- Make an insertion based on the previously created sequence. See the result.

insert into staff (employee_id, first_name, last_name, task, phone, email, hall_number, salary)
values('E0'||staff_ids.NEXTVAL, 'Gheorghe', 'Dumbrava', 'Projectionist', 0798213876, 'gheorghe.dumbrava@gmail.com', 5, 3500 );

update  managers m set m.salary =(select s.salary from staff s where m.employee_id=s.employee_id);

update staff set salary = 4500, task= 'Supervisor' where employee_id in ('E052','E053');

alter table managers add constraint dvd908 foreign key (employee_id) references staff (employee_id);
alter table managers drop constraint dvd908;
alter table managers rename column employee_id to manager_id;
alter table staff add (manager_id varchar2(5));
update staff
set manager_id=
case
when hall_number in (100, 101) and employee_id<>'C888' then 'C888'
when hall_number =102 then 'E051'
when task='Cleaner'  then 'E001'
when task='Projectionist' then 'E013'
when task='Usher' then 'E007'
when task='Ticket Seller' then 'E043'
when task='Concession Stand' then 'E037'
when task='Curator' then 'E054'
else 'C888'
end;

update managers set task='Supervisor' where  manager_id in ('E053','E052')

update staff set manager_id= 'E051' where hall_number=102

select * from table(dbms_xplan.display_cursor(sql_id=>'null', format=>'ALLSTATS LAST'));
;
alter table managers add primary key (manager_id);
alter table staff add constraint hu888 foreign key (manager_id) references managers (manager_id);
CREATE INDEX idx_manager_id ON staff(manager_id);
alter table staf


ALTER TABLE managers
ADD CONSTRAINT dvd908 FOREIGN KEY (manager_id) REFERENCES staff (manager_id)
NOWAIT;
create sequence seat_counter_for_HALL1
start with 1
increment by 1
minvalue 1
maxvalue 300
cycle;

create sequence seat_counter_for_HALL2
start with 1
increment by 1
minvalue 1
maxvalue 150
cycle;



-- create the seat_number column in the tickets table. 
alter table TICKETS add (seat_number number(3,0));

-- insert values for seat_number in tickets based on their room SO THAT NO ticket issued for that same room has the same seat

update tickets set seat_number =seat_counter_for_HALL1.NEXTVAL where hall_number=1;
update tickets set seat_number =seat_counter_for_HALL2.NEXTVAL where hall_number=2;



-- set the set number attribute as not being null
alter table tickets  modify seat_number number(3,0) not null;

-- now, to solve an old problem. When the bd admin decided to actually insert the number of the room instead of the seat number (he already renamed ir as hall_number 
-- and set it as FK to the rooms table) for which the ticket was issued,
-- he did not realise that he could have inherited it from the showtimes table (through show_id). But now he decided he'll keep it, since it looks good 
-- with many relationships in the ER diagram :) 
-- however, he discovered that he wasn't focused when inserting the rooms, since there are tickets that have a hall_number that is different than the official one (from the showtimes).
-- Please solve that problem 

update tickets t set hall_number=(select distinct s.hall_number from showtimes s where t.show_id=s.show_id) where exists (select 1 from showtimes s where t.show_id=s.show_id);







create sequence seat_counter_for_HALL1
start with 1
increment by 1
minvalue 1
maxvalue 300
cycle;

create sequence seat_counter_for_HALL2
start with 1
increment by 1
minvalue 1
maxvalue 150
cycle;

create sequence seat_counter_for_hall_3
start with 1
increment by 1
minvalue 1
maxvalue 100
cycle;

create sequence seat_counter_for_hall_4
start with 1
increment by 1
minvalue 1
maxvalue 200
cycle;


create sequence seat_counter_for_hall_5
start with 1
increment by 1
minvalue 1
maxvalue 120
cycle;

create sequence seat_counter_for_hall_6
start with 1
increment by 1
minvalue 1
maxvalue 180
cycle;



update tickets set seat_number =seat_counter_for_HALL1.NEXTVAL where hall_number=1;
update tickets set seat_number =seat_counter_for_HALL2.NEXTVAL where hall_number=2;

update tickets set seat_number =seat_counter_for_HALL_3.NEXTVAL where hall_number=3;

update tickets set seat_number =seat_counter_for_HALL_4.NEXTVAL where hall_number=4;

update tickets set seat_number =seat_counter_for_HALL_5.NEXTVAL where hall_number=5;

update tickets set seat_number =seat_counter_for_HALL_6.NEXTVAL where hall_number=6;




