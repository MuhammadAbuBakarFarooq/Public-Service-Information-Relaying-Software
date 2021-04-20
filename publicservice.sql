-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 10:16 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publicservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `penal_code`
--

CREATE TABLE `penal_code` (
  `Num` int(11) NOT NULL,
  `Heading` text NOT NULL,
  `Explanation` text NOT NULL,
  `More_Explanation` text NOT NULL,
  `Sub_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penal_code`
--

INSERT INTO `penal_code` (`Num`, `Heading`, `Explanation`, `More_Explanation`, `Sub_No`) VALUES
(1, 'Title and extent of operation of the Code.', 'This Act shall be called the Pakistan Penal Code, and shall take effect throughout Pakistan.', '', 0),
(2, '	Punishment of offences committed within Pakistan.', 'Every person shall be liable to punishment under this Code and not otherwise for every act or omission contrary to the provisions thereof, of which he shall be guilty within Pakistan.', '', 0),
(3, 'Punishment of offences committed beyond, but which by law may be tried within Pakistan', 'Any person liable, by any Pakistan Law, to be tried for an offence committed beyond Pakistan shall be dealt with according to the provision of this Code for any act committed beyond Pakistan in the same manner as if such act had been committed within Pakistan.\r\n ', '', 0),
(4, 'Extension of Code to extra-territorial offences.\r\n', 'A, a Pakistan subject, commits a murder in Uganda. He can be tried and convicted of murder in any place in Pakistan in which he may be found.\r\n \r\n', '', 0),
(4, 'Extension of Code to extra-territorial offences.', 'any citizen of Pakistan or any person in the service of Pakistan in any place without and beyond Pakistan;', 'In this section the word \"offence\" includes every act committed outside Pakistan which, if committed in Pakistan, would be punishable under this Code.', 1),
(4, 'Extension of Code to extra-territorial offences.\r\n', 'any person on any ship or aircraft registered in Pakistan wherever it may be.', 'In this section the word \"offence\" includes every act committed outside Pakistan which, if committed in Pakistan, would be punishable under this Code.', 4),
(4, 'Extension of Code to extra-territorial offences.', 'A, a Pakistan subject, commits a murder in Uganda. He can be tried and convicted of murder in any place in Pakistan in which he may be found.', '', 5),
(4, 'Extension of Code to extra-territorial offences.', 'a foreigner who is in the service of Pakistan commits a murder in London. He can be tried and convicted of murder at any place in Pakistan in which he may be found', '', 6),
(5, 'Certain laws not to be affected by this Act.', 'Nothing in this Act is intended to repeal, vary, suspend or affect any of the provisions of any Act for punishing mutiny and desertion of officers, soldiers, sailors or airmen in the service of the State or of any special or local law.', '', 0),
(6, 'Definitions in the code to be understood subject to exceptions.', 'Throughout this Code every definition of an offence, every penal provision and every illustration of every such definition or penal provision, shall be understood subject to the exceptions contained in the chapter entitled \"General Exceptions,\" though those exceptions are not repeated in such definition, penal provision or illustration', '', 0),
(6, 'Definitions in the code to be understood subject to exceptions.', 'The sections in this Code, which contains definitions of offences, do not express that a child under seven years of age cannot commit such offences; but the definitions are to be understood subject to the general exception which provides that nothing shall be an offence which is done by a child under seven years of age.', '', 5),
(6, 'Definitions in the code to be understood subject to exceptions.', 'A, a police officer, without warrant, apprehends Z who has committed murder. Here A is not guilty of the offence of wrongful confinement; for he was bound by law to apprehend Z, and, therefore, the case falls within the general exception which provides that \"nothing is an offence which is done by a person who is bound by law to do it.\"', '', 6),
(7, 'Sense of expression once explained.', 'Every expression which is explained in any part of this Code is used in every part of this Code in conformity with the explanation.', '', 0),
(8, 'Gender.', 'The pronoun \"he\" and its derivatives are used of any person, whether male or female.', '', 0),
(9, 'Number', 'Unless the contrary appears from the context, words importing the singlular number include the plural number, and words importing the plural number include the singular number.', '', 0),
(10, '\"Man\", \"Woman\".', 'The word \"man\" denotes a male human being of any age; the word \"woman\" denotes a female human being of any age.\r\n ', '', 0),
(11, '\"Person\".', 'The word \"person\" includes any Company or Association, or body of persons, whether incorporated or not.', '', 0),
(12, '\"Public\"', 'The word \"public\" includes any class of the public or any community.', '', 0),
(14, '\"Servant of the State\".', 'The words \"servant of the State\" denote all officers or servants continued, appointed or employed in Pakistan, by or under the authority of the Federal Government or any Provincial Government.\r\n \r\n', '', 0),
(17, '\"Government\"\r\n', 'The word \"Government\" denotes the person or persons authorized by law to administer executive Government in Pakistan, or in any part thereof.\r\n \r\n', '', 0),
(19, '\"Judge\".', 'The word \"Judge\" denotes not only every person who is officially designated as a Judge, but also every person--\r\nwho is empowered by law to give, in any legal proceeding, civil or criminal, a definitive judgment or a judgment which, if not appealed against, would be definitive, or a judgment which, if confirmed by some other authority, would be definitive, or\r\nwho is one of a body of persons, which body of persons is empowered by law to give such Judgment.', '', 0),
(19, '\"Judge\".', 'A Magistrate exercising jurisdiction in respect of a charge on which he has power to sentence to fine or imprisonment with or without appeal, is a Judge.\r\n \r\n', '', 5),
(20, '\"Court of Justice\".', 'The words \"Court of Justice\" denote a Judge who is empowered by law to act judicially alone, or a body of Judges which is empowered by law to act judicially as a body, when such Judge or body of Judges is acting judicially.', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `CNIC` int(13) NOT NULL DEFAULT '0',
  `P_id` int(11) NOT NULL,
  `post_rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `CNIC` int(13) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `Ph_No` int(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `date_time` datetime NOT NULL,
  `type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`CNIC`, `userName`, `Ph_No`, `email`, `password`, `image`, `date_time`, `type`) VALUES
(123, 'abubakar', 1235, 'abubakarfarooq786@gmail.com', '123', 'userImages/115 001.jpg', '2018-06-03 12:28:54', '1'),
(132, 'asif', 132, 'asdf@j', 'asdf', 'userImages/3 (4).jpg', '2018-12-25 17:28:52', '1'),
(321, 'muhammad', 132, 'abc@gmail', '123', 'userImages/1.jpg', '2018-12-25 17:25:31', '1'),
(615, 'mubashir', 312321231, 'abcdcd@gmail.com', '123', 'userImages/1.jpg', '2018-12-25 22:41:52', '1'),
(4456, 'abcdef', 45454, 'abcdf@gmial.com', '123', 'userImages/12012018394_55b16dd9b9_z.jpg', '2018-06-27 22:58:30', '1'),
(7410, 'asad', 7410, 'asad@example.com', '123', 'userImages/12012018394_55b16dd9b9_z.jpg', '2018-05-28 11:08:53', '1'),
(8520, 'arsl', 8520, 'arsl@example.com', '123', 'userImages/download.jpg', '2018-05-28 10:56:57', '1'),
(12365, 'usman', 6513256, 'usman@gmail.com', '123', 'userImages/116 001.jpg', '2018-06-11 03:44:22', '1'),
(85256, 'bkr', 5620563, 'bkr@Wgmsil.com', '123', 'userImages/12012018394_55b16dd9b9_z.jpg', '2018-06-06 10:26:57', '1'),
(123546, 'shaheer', 456132, 'shaheer@gmail.com', '123', 'userImages/115 001.jpg', '2018-05-28 08:13:33', '1'),
(451546, 'police', 15, 'police@gmail.com', '123', 'userImages/POLICE.jpg', '2018-06-14 04:23:40', '3'),
(456546, 'rescue', 1122, 'rescue@gmail.com', '123', 'userImages/Rescue.jpg', '2018-06-13 07:28:40', '2'),
(1221321, 'abid', 2147483647, 'abc@gmail.com', 'abc123', 'userImages/1.jpg', '2019-01-08 22:48:46', '1'),
(5412623, 'lostFound', 17, 'lostFound@gmail.com', '123', 'userImages/lost&found.jpg', '2018-06-06 10:42:11', '4'),
(31132132, 'faris', 11212132, 'faris@gmail.com', '123', 'userImages/1.jpg', '2019-01-08 22:56:09', '1'),
(87451252, 'presentation', 5211252, 'pres@gmail', '123', 'userImages/billGattes.jpg', '2018-05-28 02:29:20', '1'),
(343015651, 'admin', 2147483647, 'agai@gmail.com', 'admin', 'userImages/abubakar.jpg', '2018-05-30 13:05:30', '0'),
(451232452, 'farhad', 2147483647, 'farhad@gmail.con', '123', 'userImages/31 (21).jpg', '2018-06-04 12:54:46', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_emergency_post`
--

CREATE TABLE `user_emergency_post` (
  `P_id` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `date_time` datetime NOT NULL,
  `CNIC` int(13) DEFAULT NULL,
  `postimage` varchar(500) NOT NULL,
  `type` varchar(15) NOT NULL,
  `verification` int(1) NOT NULL,
  `dept` varchar(15) NOT NULL,
  `location` varchar(50) NOT NULL,
  `heading` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_emergency_post`
--

INSERT INTO `user_emergency_post` (`P_id`, `description`, `date_time`, `CNIC`, `postimage`, `type`, `verification`, `dept`, `location`, `heading`) VALUES
(187, 'FAISALABAD: In a shocking incident, bodies of two minor brothers who had gone missing on Saturday were recovered from a pond in Mansoorabad on Sunday\r\n', '2018-07-16 15:07:50', 8520, 'postImages/5b4c116eb897d.jpg', 'News Alert', 1, 'Police', 'Faislabad', 'Bodies of two missing minors found in a pond in Faisalabad'),
(188, 'At least 18 people were killed in a road accident on Monday morning when a trailer ran into a bus that had stopped to change a punctured tyre on the National Highway near Hala, rescuers said.', '2018-07-16 15:17:14', 8520, 'postImages/5b4c0c4dd853d.jpg', 'News Alert', 1, 'Rescue', 'Hala', '18 of the same family die in road accident near Hala'),
(189, 'Sliding across the rain soaked turf holding the World Cup trophy tight, teenager Kylian Mbappe and the rest of France s players acted like the youthful bunch they are\r\nThe 19 year old Mbappe became only the second teen after Pele to score in a World Cup final helping France beat Croatia 4 and 2 on Sunday', '2018-07-16 15:21:29', 8520, 'postImages/5b4baa2578b79.jpg', 'News Alert', 1, 'Sports', 'Russia', 'France snatch World Cup glory from Croatia to win second title'),
(190, 'Former senator and Awami National Party (ANP) leader Dawood Achakzai was injured in an incident of firing in Balochistans Killa Abdullah district early on Monday', '2018-07-16 15:30:16', 8520, 'postImages/5b4c3355757ad.jpg', 'News Alert', 1, 'Rescue', 'Balochistan', 'ANP leader Dawood Achakzai injured in Balochistan gun attack'),
(191, 'My very Important laptop is lost in the bus I have a lot of CRUCIAL scientific data and many years of research is inside it.If its found to someone please contact me on given email below', '2018-07-16 15:49:03', 7410, 'postImages/lostlap.png', 'Lost', 1, 'Lost&found', 'Sialkot road Gujranwala', 'Very Important Laptop lost'),
(192, 'I have found a phone on pindi bypass Gujranlwala if its lost of someone owned it then contact to the admin', '2018-07-16 16:03:48', 7410, 'postImages/292934.jpg', 'Found', 1, 'Lost&found', 'Pindi Bypass Gujranwala', 'I have found a mobile Phone In Gujranwala'),
(193, 'I have founded a laptop with a bag in Jeddha hotel near Sialkot bypass Gujranwala if someone have this then contact with me through admin', '2018-07-16 16:16:05', 7410, 'postImages/laptop-bag-melissa-beth.jpg', 'Found', 1, 'Lost&found', 'Sialkot Bypass Gujranwala', 'Founded a laptop in a hotel'),
(194, 'I have founded a wallet on the bus stop Gujranwala if someone belongs to it just contact me through admin', '2018-07-16 16:31:59', 7410, 'postImages/81xzRbSBYwL._UX425_.jpg', 'Found', 1, 'Lost&found', 'Bus Stop Gujranwal', 'Wallet founded on the bus stop'),
(195, 'Teenager dies 15 hurt as swing ride comes apart at Karachi Askari Amusement Park\r\nAn evening meant for fun and relaxation turned into a nightmare on Sunday as a swing ride at the newly opened Askari Amusement Park in Karachi fell apart crushing at least 16 underneath it police said.', '2018-07-16 16:38:02', 7410, 'postImages/DiKk2uCW0AElyba.jpg', 'News Alert', 1, 'Rescue', 'Karachi', 'Teenager dies, 15 hurt as swing ride at Karachi'),
(196, 'An cricket event from the pakistani militray will be held in Gujranwala after few days in Jiinah stadium Gujranwala we request you to come and enjoy the event', '2018-07-16 16:45:55', 12365, 'postImages/580665e8b3fd8.jpg', 'Event', 1, 'Sports', 'Gujranwala', 'An event of cricket will be held in Gujranwala'),
(197, 'All Pakistan board sports gala will be held in Gujranwala board office ground.This is organized by Pakistani Government to introduce the hidden sports tallent of Pakistan', '2018-07-16 16:48:49', 12365, 'postImages/download.jpg', 'Event', 1, 'Sports', 'Gujranwala Board office', 'All pakistan board sports gala will be held '),
(198, 'Accidentally i lost my wallet on GT road  Gujranwala near Punjab college its veryt important for me there is a lot of important data of mine inc it so i request you all if someone found it then contact me i will be very thankful to you', '2018-07-16 16:53:59', 12365, 'postImages/81xzRbSBYwL._UX425_.jpg', 'Lost', 1, 'Lost&found', 'GT Road gujranwala', 'I lost my important  wallet on GT road'),
(199, 'My cat is missing from previous two days if someone see her then please just contact me who will find my cat he will rewarded', '2018-07-16 17:29:14', 12365, 'postImages/pexels-photo.jpg', 'Lost', 1, 'Lost&found', 'Garden town Gujranwala', 'Cat is missing from 2 days'),
(200, 'I have forgotten my laptop in karachi BBQ hotel if someone found it then please contact me it holds my very important data in it and i also have attached my laptop image', '2018-07-16 17:38:19', 123, 'postImages/images.jpg', 'Lost', 1, 'Lost&found', 'GT Road gujranwala', 'My laptop lost in a hotel'),
(201, 'A speech going to held in GIFT University only Under Graduates are allowed to participate in this competition last day of form submission will be announced soon   ', '2018-07-16 17:45:00', 123, 'postImages/speech-competition.jpg', 'Event', 1, 'Education', 'GIFT University Gujranwala', 'Speech compition by Government is being held'),
(202, 'I have founded a watch when i was walking in satellite town and i think it is very expensive watch  so i decided to post here on agahi so if someone have this please contact me on my number 03041234567', '2018-07-16 17:56:58', 8520, 'postImages/2038-bl-fogg-original-imaezx8q4xkbwwra.jpeg', 'Found', 1, 'Lost&found', 'Satellite town Gujranwala', 'watch founded at Satelite town'),
(203, 'A sports gala event  will be held in GIFT university from first week of next month so we request you to join and do enjoy there we hope you will enjoy', '2018-07-16 18:02:19', 343015651, 'postImages/sg23.jpg', 'Event', 1, 'Sports', 'GIFT University Gujranwala', 'Sports gala at GIFT University'),
(204, 'My google gadget is lost near the board office Gujranwala if someone will found then he will contact me through my contact number given below 0306235856 ', '2018-07-16 18:10:25', 8520, 'postImages/hqdefault.jpg', 'Lost', 1, 'Lost&found', 'Board Office Gujranwala', 'Google gadget is lost near board office '),
(205, 'there is an murder atachk', '2018-12-25 22:44:12', 615, 'postImages/20161224_213742.jpg', 'News Alert', 1, 'Police', 'Karachi', 'Murder of Ali raza adbdi'),
(206, 'fire ishdfkash', '2019-01-08 22:49:58', 1221321, 'postImages/20161226_174631.jpg', 'News Alert', 1, 'Fire Brigade', 'ISLAMBAD', 'incident'),
(207, 'i am going to arranga a gala of cricket', '2019-01-08 22:57:16', 31132132, 'postImages/20161224_222438.jpg', 'Event', 4, 'Sports', 'gujranwala', 'cricket gala'),
(208, 'ghjkl', '2019-05-14 00:49:49', 343015651, 'postImages/2e811360-df27-48f6-989a-b31fc4014e92.jpg', 'News Alert', 4, 'Police', 'fghjk', 'fghj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penal_code`
--
ALTER TABLE `penal_code`
  ADD PRIMARY KEY (`Num`,`Sub_No`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`CNIC`,`P_id`),
  ADD KEY `P_id` (`P_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`CNIC`);

--
-- Indexes for table `user_emergency_post`
--
ALTER TABLE `user_emergency_post`
  ADD PRIMARY KEY (`P_id`),
  ADD KEY `CNIC` (`CNIC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_emergency_post`
--
ALTER TABLE `user_emergency_post`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`CNIC`) REFERENCES `users` (`CNIC`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `user_emergency_post` (`P_id`);

--
-- Constraints for table `user_emergency_post`
--
ALTER TABLE `user_emergency_post`
  ADD CONSTRAINT `user_emergency_post_ibfk_1` FOREIGN KEY (`CNIC`) REFERENCES `users` (`CNIC`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
