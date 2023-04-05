

USE bbdms;




CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `UserName`, `Password`, `updateDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');




CREATE TABLE IF NOT EXISTS `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `PostingDate`, `status`) VALUES
(1, 'John Smith', '999857868', 'jsmith@gmail.com', 'Male', 27, 'O+', ' Liberty Street',  '2021-05-30 16:19:16', 1),
(2, 'Anne Dale', '4124124124', 'anned@yahoo.com', 'Female', 34, 'AB-', ' Sunrise Street',  '2021-01-30 10:13:11', 1),
(3, 'Ami Yang', '2352352352', 'yam@gmail.com', 'Female', 45, 'A+', 'Downtown' , '2021-02-01 07:21:21', 1),
(4, 'Karl Singh', '5345435345', 'ks@yahoo.com', 'Male', 50, 'AB-', ' Keys St ', '2020-12-20 09:21:42', 1),
(5, 'Dave March', '8569855244', 'niiii@Yahoo.com', 'Male', 32, 'A-', 'Downing St',  '2021-04-01 09:00:18', 1);


CREATE TABLE IF NOT EXISTS `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2021-05-30 20:33:50'),
(2, 'AB-', '2021-05-30 20:34:00'),
(3, 'O-', '2021-05-30 20:34:05'),
(4, 'A-', '2021-05-30 20:34:10'),
(5, 'A+', '2021-05-30 20:34:13'),
(6, 'AB+', '2021-05-30 20:34:18');


CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'John Stuart', 'jst@yahoo.com', '855233222');



CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Ana ', 'ana@gmail.com', '2147483647',  ' Hello! ','2021-02-18 10:03:07', 1);



CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;



INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become a Donor', 'donor', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">A blood donation is truly an altruistic gift that an individual can give to others in need. In only 45-60 minutes, an eligible individual can donate one unit of blood that can be separated into four individual components that could help save multiple lives. From one unit of blood, red blood cells can be extracted and used to treat patients who lost blood due to trauma or those who are recovering from surgery. Plasma, the liquid part of blood, is typically administered to patients with requiring treatment to improve blood clotting. Platelets, a third component, clot the blood when cuts or other open wounds occur, and are often used in the treatment of patients with cancer or those undergoing organ transplants. Finally, cryoprecipitated anti-hemophilic factor (AHF) is also used for clotting factors.</span>'),
(3,'About','about','<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">While the first blood transfusions were made directly from donor to receiver before coagulation, it was discovered that by adding anticoagulant and refrigerating the blood it was possible to store it for some days, thus opening the way for the development of blood banks. John Braxton Hicks was the first to experiment with chemical methods to prevent the coagulation of blood at St Mary Hospital, London, in the late 19th century. His attempts, using phosphate of soda, however, were unsuccessful. The first non-direct transfusion was performed on March 27, 1914, by the Belgian doctor Albert Hustin, though this was a diluted solution of blood. The Argentine doctor Luis Agote used a much less diluted solution in November of the same year. Both used sodium citrate as an anticoagulant</span>');




ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;

ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;

