drop table MovieTimes;
drop table TheaterWithMovies;
drop table Movies;
drop table Theaters;




create table Theaters(
	tID int,
	name varchar(50),
	zipcode varchar(5),
	primary key(tID)
	);

create table Movies(
	mID int,
	name varchar(50),
	length varchar(50),
	description varchar(8000),
	primary key(mID)
	);

create table TheaterWithMovies(
	tID int,
	mID int,
	primary key(tID, mID),
	foreign key(tID) references Theaters,
	foreign key(mID) references Movies
	);

create table MovieTimes(
        sID int,
	tID int,
	mID int,
	showTimes varchar(10),
	primary key(sID),
	foreign key(tID) references Theaters,
	foreign key(mID) references Movies
	);

insert into Theaters(tID, name, zipcode) values (1, 'AMC Theaters', '75035');
insert into Theaters(tID, name, zipcode) values (2, 'Cinemark Frisco Square and XD', '75035');
insert into Theaters(tID, name, zipcode) values (3, 'CUT! by Cinemark' , '75035');
insert into Theaters(tID, name, zipcode) values (4, 'Cinemark West Plano and XD' , '75025');
insert into Theaters(tID, name, zipcode) values (5, 'Cinemark Legacy and XD', '75025');
insert into Theaters(tID, name, zipcode) values (6, 'Cinemark Central Plano', '75025');
insert into Theaters(tID, name, zipcode) values (7, 'AMC Pacific Place 11', '98101');
insert into Theaters(tID, name, zipcode) values (8, 'Regal Meridian & 4DX', '98101');
insert into Theaters(tID, name, zipcode) values (9, 'AMC Seattle 10', '98101');


insert into Movies(mID, name, length, description) values (1, 'The Hunger Games', '2 hours and 22 minutes', 'Follow Katniss Everdeen as she fights for her life in the annual Hunger Games');
insert into Movies(mID, name, length, description) values (2, 'Maze Runner', '1 hour and 57 minutes', 'Thomas awakens in a camp with no memory. He and the other boys in the camp must run day after day in an everchanging maze in an attempt to escape');
insert into Movies(mID, name, length, description) values (3, 'Inception', '2 hours and 28 minutes', 'Is stealing secrets from someones subconcious illegal? The extractors in "Inception" do not see anything wrong with it');
insert into Movies(mID, name, length, description) values (4, 'Harry Potter and The Sorcerers Stone', '2 hours and 39 Minutes', 'An orphan named Harry Potter discovers he is a wizard and moves from under the stairs to a wizard school named Hogwarts');
insert into Movies(mID, name, length, description) values (5, 'A Silent Voice', '2 hours and 9 minutes', 'A former class bully reaches out to the deaf girl he tormented in grade school and tries to make things right');
insert into Movies(mID, name, length, description) values (6, 'Scott Pilgrim vs. The World', '1 hour and 52 minutes', 'Dreamy delivery driver girl Ramona captures Scott Pilgrims heart, but he must vanquish all seven of her evil exes in martial arts battles to win her love');
insert into Movies(mID, name, length, description) values (7, '30 Minutes or Less', '1 hour and 23 minutes', 'Nick lives a boring life as a pizza delivery guy... that is until he is kidnapped, a bomb is strapped to his chest, and he is forced to rob a bank');
insert into Movies(mID, name, length, description) values (8, 'The Bye Bye Man', '1 hour and 36 minutes', 'People commit unthinkable acts every day. Time and again we grapple to understand what drives a person to do such terrible things. What if the true cause is not a matter of what, but who?');
insert into Movies(mID, name, length, description) values (9, 'Jeepers Creepers', '1 hour and 31 minutes', 'After making a horrific discovery in the basement of an old abandoned church, Trish and her brother Darry find themselves as the chosen prey of an indestructible force that relentlessly pursues them to the tune of the old song "Jeepers Creepers"');
insert into Movies(mID, name, length, description) values (10, 'Get Out', '1 hour and 44 minutes' , 'Now that Chris and his girlfriend, Rose, have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with her parents, Missy and Dean. At first, Chris reads the familys overly accommodating behaviour as nervous attempts to deal with their daughters interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries leads him to a truth that he never could have imagined.');
insert into Movies(mID, name, length, description) values (11, 'Us', '1 hour and 56 minutes', 'Accompanied by her husband, son and daughter, Adelaide Wilson returns to the beachfront home where she grew up as a child. Haunted by a traumatic experience from the past, Adelaide grows increasingly concerned that something bad is going to happen. Her worst fears soon become a reality when four masked strangers descend upon the house, forcing the Wilsons into a fight for survival. When the masks come off, the family is horrified to learn that each attacker takes the appearance of one of them.');
insert into Movies(mID, name, length, description) values (12, 'Tenet', '2 hours and 30 minutes', 'A secret agent is given a single word as his weapon and sent to prevent the onset of World War III. He must travel through time and bend the laws of nature in order to be successful in his mission.');

insert into TheaterWithMovies(tID, mID) values (1, 1);
insert into TheaterWithMovies(tID, mID) values (1, 2);
insert into TheaterWithMovies(tID, mID) values (1, 3);
insert into TheaterWithMovies(tID, mID) values (1, 4);
insert into TheaterWithMovies(tID, mID) values (2, 5);
insert into TheaterWithMovies(tID, mID) values (2, 6);
insert into TheaterWithMovies(tID, mID) values (2, 7);
insert into TheaterWithMovies(tID, mID) values (2, 8);
insert into TheaterWithMovies(tID, mID) values (3, 9);
insert into TheaterWithMovies(tID, mID) values (3, 10);
insert into TheaterWithMovies(tID, mID) values (3, 11);
insert into TheaterWithMovies(tID, mID) values (3, 12);
insert into TheaterWithMovies(tID, mID) values (4, 1);
insert into TheaterWithMovies(tID, mID) values (4, 2);
insert into TheaterWithMovies(tID, mID) values (4, 3);
insert into TheaterWithMovies(tID, mID) values (4, 4);
insert into TheaterWithMovies(tID, mID) values (5, 5);
insert into TheaterWithMovies(tID, mID) values (5, 6);
insert into TheaterWithMovies(tID, mID) values (5, 7);
insert into TheaterWithMovies(tID, mID) values (5, 8);
insert into TheaterWithMovies(tID, mID) values (6, 9);
insert into TheaterWithMovies(tID, mID) values (6, 10);
insert into TheaterWithMovies(tID, mID) values (6, 11);
insert into TheaterWithMovies(tID, mID) values (6, 12);
insert into TheaterWithMovies(tID, mID) values (7, 1);
insert into TheaterWithMovies(tID, mID) values (7, 2);
insert into TheaterWithMovies(tID, mID) values (7, 3);
insert into TheaterWithMovies(tID, mID) values (7, 4);
insert into TheaterWithMovies(tID, mID) values (8, 5);
insert into TheaterWithMovies(tID, mID) values (8, 6);
insert into TheaterWithMovies(tID, mID) values (8, 7);
insert into TheaterWithMovies(tID, mID) values (8, 8);
insert into TheaterWithMovies(tID, mID) values (9, 9);
insert into TheaterWithMovies(tID, mID) values (9, 10);
insert into TheaterWithMovies(tID, mID) values (9, 11);
insert into TheaterWithMovies(tID, mID) values (9, 12);

insert into MovieTimes(sID, tID, mID, showTimes) values (1, 1, 1, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (2, 1, 1, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (3, 1, 1, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (4, 1, 1, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (5, 1, 1, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (6, 1, 2, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (7, 1, 2, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (8, 1, 2, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (9, 1, 2, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (10, 1, 2, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (11, 1, 3, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (12, 1, 3, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (13, 1, 3, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (14, 1, 3, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (15, 1, 3, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (16, 1, 4, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (17, 1, 4, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (18, 1, 4, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (19, 1, 4, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (20, 1, 4, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (21, 1, 4, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (22, 2, 5, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (23, 2, 5, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (24, 2, 5, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (25, 2, 5, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (26, 2, 5, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (27, 2, 6, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (28, 2, 6, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (29, 2, 6, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (30, 2, 6, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (31, 2, 6, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (32, 2, 7, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (33, 2, 7, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (34, 2, 7, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (35, 2, 7, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (36, 2, 7, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (37, 2, 8, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (38, 2, 8, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (39, 2, 8, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (40, 2, 8, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (41, 2, 8, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (42, 2, 8, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (43, 3, 9, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (44, 3, 9, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (45, 3, 9, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (46, 3, 9, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (47, 3, 9, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (48, 3, 10, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (49, 3, 10, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (50, 3, 10, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (51, 3, 10, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (52, 3, 10, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (53, 3, 11, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (54, 3, 11, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (55, 3, 11, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (56, 3, 11, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (57, 3, 11, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (58, 3, 12, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (59, 3, 12, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (60, 3, 12, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (61, 3, 12, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (62, 3, 12, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (63, 3, 12, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (64, 4, 1, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (65, 4, 1, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (66, 4, 1, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (67, 4, 1, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (68, 4, 1, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (69, 4, 2, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (70, 4, 2, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (71, 4, 2, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (72, 4, 2, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (73, 4, 2, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (74, 4, 3, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (75, 4, 3, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (76, 4, 3, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (77, 4, 3, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (78, 4, 3, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (79, 4, 4, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (80, 4, 4, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (81, 4, 4, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (82, 4, 4, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (83, 4, 4, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (84, 4, 4, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (85, 5, 5, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (86, 5, 5, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (87, 5, 5, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (88, 5, 5, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (89, 5, 5, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (90, 5, 6, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (91, 5, 6, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (92, 5, 6, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (93, 5, 6, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (94, 5, 6, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (95, 5, 7, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (96, 5, 7, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (97, 5, 7, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (98, 5, 7, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (99, 5, 7, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (100, 5, 8, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (101, 5, 8, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (102, 5, 8, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (103, 5, 8, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (104, 5, 8, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (105, 5, 8, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (106, 6, 9, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (107, 6, 9, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (108, 6, 9, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (109, 6, 9, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (110, 6, 9, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (111, 6, 10, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (112, 6, 10, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (113, 6, 10, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (114, 6, 10, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (115, 6, 10, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (116, 6, 11, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (117, 6, 11, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (118, 6, 11, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (119, 6, 11, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (120, 6, 11, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (121, 6, 12, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (122, 6, 12, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (123, 6, 12, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (124, 6, 12, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (125, 6, 12, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (126, 6, 12, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (127, 7, 1, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (128, 7, 1, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (129, 7, 1, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (130, 7, 1, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (131, 7, 1, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (132, 7, 2, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (133, 7, 2, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (134, 7, 2, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (135, 7, 2, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (136, 7, 2, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (137, 7, 3, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (138, 7, 3, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (139, 7, 3, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (140, 7, 3, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (141, 7, 3, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (142, 7, 4, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (143, 7, 4, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (144, 7, 4, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (145, 7, 4, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (146, 7, 4, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (147, 7, 4, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (148, 8, 5, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (149, 8, 5, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (150, 8, 5, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (151, 8, 5, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (152, 8, 5, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (153, 8, 6, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (154, 8, 6, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (155, 8, 6, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (156, 8, 6, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (157, 8, 6, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (158, 8, 7, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (159, 8, 7, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (160, 8, 7, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (161, 8, 7, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (162, 8, 7, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (163, 8, 8, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (164, 8, 8, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (165, 8, 8, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (166, 8, 8, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (167, 8, 8, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (168, 8, 8, '11:00 PM');

insert into MovieTimes(sID, tID, mID, showTimes) values (169, 9, 9, '9:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (170, 9, 9, '12:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (171, 9, 9, '3:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (172, 9, 9, '6:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (173, 9, 9, '9:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (174, 9, 10, '10:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (175, 9, 10, '1:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (176, 9, 10, '4:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (177, 9, 10, '7:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (178, 9, 10, '10:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (179, 9, 11, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (180, 9, 11, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (181, 9, 11, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (182, 9, 11, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (183, 9, 11, '11:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (184, 9, 12, '8:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (185, 9, 12, '11:00 AM');
insert into MovieTimes(sID, tID, mID, showTimes) values (186, 9, 12, '2:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (187, 9, 12, '5:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (188, 9, 12, '8:00 PM');
insert into MovieTimes(sID, tID, mID, showTimes) values (189, 9, 12, '11:00 PM');
