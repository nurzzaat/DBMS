-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 12 2022 г., 18:41
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hospital`
--

-- --------------------------------------------------------

--
-- Структура таблицы `archive`
--

CREATE TABLE `archive` (
  `Archive_ID` int(10) UNSIGNED NOT NULL,
  `Patient_ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Surname` varchar(35) NOT NULL,
  `Age` int(10) UNSIGNED NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Home_Address` varchar(35) DEFAULT NULL,
  `Phone_Number` varchar(35) DEFAULT NULL,
  `Doctor_ID` int(10) UNSIGNED NOT NULL,
  `diagnos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `archive`
--

INSERT INTO `archive` (`Archive_ID`, `Patient_ID`, `Name`, `Surname`, `Age`, `Gender`, `Home_Address`, `Phone_Number`, `Doctor_ID`, `diagnos_id`) VALUES
(1, 1, 'Callie', 'Stovold', 18, 'Female', '743 Truax Street', '+7 (463) 599-9466', 33, 14),
(2, 10, 'Norbert', 'Favill', 89, 'Male', '432 Hauk Avenue', '+967 (396) 317-0781', 61, 72);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `busy_rooms`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `busy_rooms` (
`Room_ID` int(10) unsigned
,`Ward_ID` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Структура таблицы `diagnos`
--

CREATE TABLE `diagnos` (
  `Diagnos_ID` int(10) UNSIGNED NOT NULL,
  `Discription` varchar(250) NOT NULL,
  `Doctor_ID` int(10) UNSIGNED DEFAULT NULL,
  `Patient_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `diagnos`
--

INSERT INTO `diagnos` (`Diagnos_ID`, `Discription`, `Doctor_ID`, `Patient_ID`) VALUES
(1, 'Crushing injury of unspecified finger(s)', 88, 59),
(2, 'Laceration of intercostal blood vessels, right side, subsequent encounter', 30, 98),
(3, 'Cicatricial ectropion of unspecified eye, unspecified eyelid', 44, 88),
(4, 'Toxic effect of venom of centipedes and venomous millipedes, accidental (unintentional), sequela', 5, 66),
(5, 'Band keratopathy, unspecified eye', 2, 78),
(6, 'Displaced fracture of coronoid process of left ulna, initial encounter for open fracture type IIIA, IIIB, or IIIC', 94, 60),
(7, 'Melanoma in situ of unspecified part of face', 6, 30),
(8, 'Presence of intraocular lens', 81, 88),
(9, 'Other injury of muscle(s) and tendon(s) of peroneal muscle group at lower leg level, left leg, subsequent encounter', 59, 66),
(10, 'Contusion of right lesser toe(s) with damage to nail, subsequent encounter', 88, 57),
(11, 'Abscess of bursa, unspecified knee', 29, 86),
(12, 'Other specified injuries of left thigh, initial encounter', 93, 62),
(13, 'External constriction of penis, subsequent encounter', 57, 16),
(15, 'Polyorchism', 14, 88),
(16, 'Other forms of actinomycosis', 81, 11),
(17, 'Miotic pupillary cyst, bilateral', 98, 36),
(18, 'Unspecified injury of right shoulder and upper arm', 91, 67),
(19, 'Unstable burst fracture of third thoracic vertebra, subsequent encounter for fracture with routine healing', 22, 13),
(20, 'Military operations involving unspecified destruction of aircraft, civilian, initial encounter', 31, 2),
(21, 'Salter-Harris Type I physeal fracture of upper end of radius, left arm, subsequent encounter for fracture with nonunion', 46, 73),
(22, 'Other specified diabetes mellitus with other circulatory complications', 12, 83),
(23, 'Leakage of other vascular grafts', 43, 41),
(24, 'Poisoning by therapeutic gases, accidental (unintentional), sequela', 91, 53),
(25, 'Other paralytic syndrome following nontraumatic subarachnoid hemorrhage, bilateral', 13, 88),
(26, 'Secondary and unspecified malignant neoplasm of intrapelvic lymph nodes', 97, 84),
(27, 'Other and unspecified disorders of lactation', 99, 35),
(28, 'Chronic osteomyelitis with draining sinus, unspecified hand', 1, 93),
(29, 'Other injury of flexor muscle, fascia and tendon of right little finger at forearm level, initial encounter', 66, 96),
(30, 'Contusion of unspecified great toe with damage to nail, subsequent encounter', 58, 21),
(31, 'Nondisplaced segmental fracture of shaft of left tibia, sequela', 49, 80),
(32, 'Insect bite (nonvenomous) of unspecified forearm, subsequent encounter', 48, 41),
(33, 'Complications due to implanted mesh and other prosthetic materials', 66, 34),
(34, 'Nondisplaced transverse fracture of shaft of left radius, subsequent encounter for closed fracture with malunion', 27, 57),
(35, 'Palindromic rheumatism, right ankle and foot', 69, 97),
(36, 'Other encephalitis and encephalomyelitis', 61, 29),
(37, 'Other superficial bite of hip, left hip, sequela', 4, 90),
(38, 'Poisoning by calcium-channel blockers, accidental (unintentional), sequela', 77, 90),
(39, 'Nondisplaced comminuted fracture of shaft of radius, left arm, sequela', 54, 62),
(40, 'Laceration with foreign body of left wrist, sequela', 62, 17),
(41, 'Nondisplaced supracondylar fracture with intracondylar extension of lower end of right femur, initial encounter for open fracture type I or II', 59, 47),
(42, 'Parvovirus infection, unspecified', 44, 26),
(43, 'Biliary acute pancreatitis with infected necrosis', 45, 14),
(44, 'Toxic effect of venom of brown recluse spider, undetermined, subsequent encounter', 80, 50),
(45, 'Pathological fracture in neoplastic disease, left radius, initial encounter for fracture', 42, 24),
(46, 'Subluxation of tarsal joint of unspecified foot', 70, 33),
(47, 'Displaced transverse fracture of shaft of right ulna, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing', 85, 59),
(48, 'Person boarding or alighting a heavy transport vehicle injured in noncollision transport accident', 46, 96),
(49, 'Tuberculous meningoencephalitis', 10, 24),
(50, 'Contact with powered woodworking and forming machines, initial encounter', 34, 87),
(51, 'Other rupture of muscle (nontraumatic), left shoulder', 67, 21),
(52, 'Hit or struck by falling object due to accident to fishing boat, initial encounter', 85, 57),
(53, 'Infection and inflammatory reaction due to implanted urinary sphincter, sequela', 31, 87),
(54, 'Comminuted supracondylar fracture without intercondylar fracture of humerus', 95, 2),
(55, 'Chorioamnionitis, second trimester, fetus 5', 68, 9),
(56, 'Displaced fracture of epiphysis (separation) (upper) of right femur, sequela', 80, 96),
(57, 'Salter-Harris Type II physeal fracture of lower end of radius, right arm, initial encounter for closed fracture', 66, 54),
(58, 'Poisoning by loop [high-ceiling] diuretics, assault', 45, 31),
(59, 'Unspecified open wound of left ring finger with damage to nail, subsequent encounter', 74, 92),
(60, 'Blister (nonthermal) of left ear, sequela', 9, 58),
(61, 'Unspecified fracture of unspecified wrist and hand, initial encounter for open fracture', 98, 86),
(62, 'Alcohol abuse with unspecified alcohol-induced disorder', 62, 62),
(63, 'Trichomoniasis they will usually carry out an examination of your genital area', 100, 100),
(64, 'Subluxation and dislocation of other finger(s)', 45, 73),
(65, 'Congenital iodine-deficiency syndrome', 21, 56),
(66, 'Other accident on other gliding-type pedestrian conveyance, sequela', 91, 56),
(67, 'Drug-induced chronic gout, unspecified hand, without tophus (tophi)', 35, 71),
(68, 'Injury of heart, unspecified with or without hemopericardium', 53, 31),
(69, 'Monoplegia of upper limb following other cerebrovascular disease', 88, 31),
(70, 'Patient\'s noncompliance with other medical treatment and regimen', 30, 53),
(71, 'Laceration of blood vessel of left ring finger, initial encounter', 5, 25),
(73, 'Burns of other specified parts of left eye and adnexa, initial encounter', 62, 15),
(74, 'Loose body in left finger joint(s)', 12, 21),
(75, 'Open bite, right ankle, initial encounter', 62, 98),
(76, 'Malignant neoplasm of unspecified cornea', 8, 19),
(77, 'Pedestrian on skateboard injured in collision with railway train or railway vehicle, unspecified whether traffic or nontraffic accident, sequela', 4, 74),
(78, 'Nondisplaced fracture of lateral condyle of unspecified humerus, initial encounter for closed fracture', 52, 52),
(79, 'Other intraoperative complications of eye and adnexa, not elsewhere classified', 95, 85),
(80, 'Puncture wound with foreign body of right index finger without damage to nail, sequela', 52, 78),
(81, 'Contracture of muscle, right lower leg', 97, 56),
(82, 'Insect bite (nonvenomous), right knee, sequela', 75, 33),
(83, 'Puncture wound with foreign body, left lower leg, initial encounter', 98, 43),
(84, 'Animal-rider injured in collision with railway train or railway vehicle, initial encounter', 34, 63),
(85, 'Other superficial bite of left shoulder, initial encounter', 20, 73),
(86, 'Other fracture of fourth lumbar vertebra, initial encounter for closed fracture', 22, 84),
(87, 'Disorders of male genital organs in diseases classified elsewhere', 73, 92),
(88, 'Other psychoactive substance use, unspecified with intoxication, uncomplicated', 16, 21),
(89, 'Anterior spinal artery compression syndromes', 77, 84),
(90, 'Insect bite (nonvenomous) of left upper arm, sequela', 44, 73),
(91, 'Other specified injury of unspecified blood vessel at lower leg level, unspecified leg, sequela', 3, 23),
(92, 'Other acquired deformities of left foot', 33, 17),
(93, 'Paralytic ptosis of right eyelid', 83, 32),
(94, 'Other specified disorders of amniotic fluid and membranes, third trimester, not applicable or unspecified', 35, 56),
(95, 'Blister (nonthermal) of anus', 99, 49),
(96, 'Abnormal findings on diagnostic imaging of lung', 5, 9),
(97, 'Breakdown (mechanical) of internal fixation device of bones of hand and fingers', 20, 24),
(98, 'Encounter for other plastic and reconstructive surgery following medical procedure or healed injury', 38, 2),
(99, 'Non-pressure chronic ulcer of buttock with fat layer exposed', 65, 56),
(100, 'Transverse fracture of shaft of radius', 7, 74);

-- --------------------------------------------------------

--
-- Структура таблицы `disease`
--

CREATE TABLE `disease` (
  `Disease_Name` varchar(150) NOT NULL,
  `Discription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `disease`
--

INSERT INTO `disease` (`Disease_Name`, `Discription`) VALUES
('Acute Flaccid Myelitis', 'Acute flaccid myelitis (AFM) is a rare but serious condition that affects the nervous system, specifically the spinal cord, causing the muscles and reflexes in the body to work abnormally.'),
('Arthritis', 'The term arthritis refers to about 120 different diseases that can affect the joints, muscles and other soft tissues.'),
('Asthma', ' Asthma is a chronic lung disease characterized by episodes of airway narrowing and obstruction, causing wheezing, coughing, chest tightness and shortness of breath.'),
('Cancer', 'Cancer is a common disease, sometimes more common than many people believe.'),
('Coli', 'E. coli O157:H7, one of hundreds of strains of the bacterium Escherichia coli, is an emerging cause of foodborne illness.'),
('Crabs', 'Crabs are parasites. Crabs are often referred to as pubic lice and are not to be confused with body lice.'),
('Depression', 'Everyone gets the blues now and then, but when there is little joy or pleasure after visiting with friends or after seeing a good movie, there may be a more serious problem.'),
('Diabetes', 'Diabetes is a disease in which blood glucose levels are above normal.'),
('Ebola Virus', 'Ebola is a severe, often deadly disease that is caused by the Ebola virus.'),
('Fibroids', 'Fibroids are growths on the walls of the uterus. Sometimes, a fibroid is attached to the outside of the uterus by a stalk.'),
('Giardiasis', 'Giardiasis, a disease caused by the protozoan parasite Giardia lamblia, is characterized by chronic diarrhea that usually lasts one or more weeks.'),
('Gonorrhea', 'Gonorrhea is a sexually transmitted disease (STD) caused by a bacterium.'),
('Harmful Algal Blooms', 'Since there are usually no symptoms associated with cancer of the cervix, you must be sure your doctor does an important test, called the Pap smear, to look for it.'),
('Heart Disease', 'Risk factors are behaviors or conditions that increase a person’s chances of developing a disease. Many of the risk factors for heart disease are within a person’s control.'),
('Hepatitis', 'Hepatitis is defined as an inflammation of the liver. Hepatitis is commonly caused by a virus. The most common types are Hepatitis A, Hepatitis B, and Hepatitis C.'),
('High Blood Pressure', 'Blood pressure is the force of blood as it moves through the blood vessels.'),
('Influenza', 'Influenza, commonly called \"the flu,\" is an infection of the respiratory tract caused by the influenza virus. Compared with most viral respiratory infections, such as the common cold, influenza infection often causes a more severe illness.'),
('Lupus', 'Systemic lupus erythematosus (SLE), often simply called \"lupus,\" is a type of arthritis that affects the joints, muscles and other parts of the body.'),
('Lyme Disease', 'Lyme disease is a bacterial disease transmitted by infected ticks.'),
('Measles', 'Measles is a serious, highly contagious disease caused by a virus. The virus is spread easily through the air when an infected person coughs or sneezes or by direct contact with infected nose or throat secretions.'),
('Meningitis', 'Meningitis is an inflammation of the membranes that cover the brain and spinal cord. It can be caused by a number of infectious agents including viruses and bacteria.'),
('Mumps', 'Mumps is an acute infectious viral disease that can cause swelling and tenderness of the salivary glands in the cheeks and jaw.'),
('Plague', 'Plague is a disease that affects animals and humans. It is caused by the bacterium Yersinia pestis which is found in rodents and their fleas.'),
('Rubella', 'Rubella, also called German measles, is a viral illness that is spread from person to person by breathing in droplets of respiratory secretions exhaled by an infected person.'),
('SARS', 'Severe acute respiratory syndrome (SARS) is a respiratory illness caused by a virus. The illness usually begins with a high fever.'),
('Stress', 'Stress is the body’s reaction to a perceived threat; it is often called the “fight or flight” syndrome.'),
('Tetanus', 'Tetanus is a serious disease caused by a toxin (poison) made by bacteria.'),
('Trichomoniasis', 'Trichomoniasis (or “trich”) is a very common sexually transmitted disease (STD) that is caused by infection with a protozoan parasite called Trichomonas vaginalis.'),
('Tuberculosis (TB)', 'Tuberculosis (TB) is a contagious and potentially life-threatening disease transmitted through the air.'),
('Zika Virus', 'Zika virus is a virus similar to dengue, yellow fever, and West Nile and is primarily transmitted through mosquitoes and sex');

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `Doctor_ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Surname` varchar(35) NOT NULL,
  `Age` int(10) UNSIGNED NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Home_Address` varchar(35) DEFAULT NULL,
  `Phone_Number` varchar(35) DEFAULT NULL,
  `Ward_ID` int(10) UNSIGNED DEFAULT NULL,
  `Job_Type` varchar(10) DEFAULT NULL,
  `Shedule_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`Doctor_ID`, `Name`, `Surname`, `Age`, `Gender`, `Home_Address`, `Phone_Number`, `Ward_ID`, `Job_Type`, `Shedule_ID`) VALUES
(1, 'Benetta', 'Warfield', 27, 'Agender', '076 Park Meadow Point', '+54 (245) 176-0418', 5, 'ENT-AS', 6),
(2, 'Raddy', 'Costin', 28, 'Male', '77 Union Drive', '+86 (659) 238-5390', 1, 'P-ED', 13),
(3, 'Kimmi', 'Crosher', 42, 'Female', '786 Kim Alley', '+62 (279) 540-6613', 2, 'C-EKG', 6),
(4, 'Lauralee', 'Linster', 49, 'Female', '23 Crest Line Drive', '+420 (566) 187-2676', 2, 'C-EP', 8),
(5, 'Park', 'Skypp', 38, 'Bigender', '5 Northview Alley', '+351 (531) 227-4102', 5, 'ENT-OTO', 13),
(6, 'Tess', 'Kemetz', 30, 'Female', '554 Declaration Court', '+45 (483) 719-4104', 3, 'O-MO', 4),
(7, 'Vivi', 'Wrey', 45, 'Female', '8 Fair Oaks Place', '+63 (982) 249-1028', 1, 'P-ADM', 9),
(8, 'Kristel', 'Kitchenham', 45, 'Female', '7 Gina Street', '+81 (671) 342-2601', 1, 'P-DB', 11),
(9, 'Daisi', 'Janicki', 41, 'Female', '611 Farmco Alley', '+233 (857) 175-2610', 2, 'C-MS', 1),
(10, 'Randal', 'Margaritelli', 37, 'Male', '0 Myrtle Road', '+7 (325) 420-7217', 2, 'C-SUR', 10),
(11, 'Wyatan', 'Simons', 42, 'Non-binary', '3883 Schurz Drive', '+55 (265) 974-5378', 4, 'U-IL', 15),
(12, 'Kayle', 'Merman', 45, 'Female', '075 Pine View Point', '+850 (338) 807-0739', 3, 'O-OT', 7),
(13, 'Esme', 'Athridge', 48, 'Male', '9999 Porter Place', '+62 (934) 542-2197', 4, 'U-IMT', 1),
(14, 'Winnie', 'Cossington', 38, 'Male', '946 Hermina Avenue', '+84 (546) 922-3941', 3, 'O-OT', 13),
(15, 'Ali', 'Saywood', 47, 'Female', '2603 Meadow Vale Trail', '+86 (801) 866-1508', 2, 'C-ANS', 14),
(16, 'Josephina', 'Greason', 25, 'Female', '609 International Hill', '+62 (118) 724-1247', 4, 'U-FU', 8),
(17, 'Kippy', 'Wedderburn', 36, 'Male', '44229 Kingsford Place', '+86 (710) 277-3539', 2, 'C-RT', 6),
(18, 'Sayers', 'Grievson', 47, 'Male', '61053 Independence Way', '+63 (496) 177-9739', 2, 'C-CT', 8),
(19, 'Roberto', 'Dwyr', 50, 'Male', '859 Donald Drive', '+66 (679) 725-9514', 2, 'C-EP', 5),
(20, 'Babbie', 'Edghinn', 37, 'Female', '4 Elka Pass', '+33 (461) 628-6212', 5, 'ENT-LOR', 15),
(21, 'Chrystal', 'Scroggs', 50, 'Agender', '101 Hoard Circle', '+51 (217) 271-2481', 3, 'O-HO', 6),
(22, 'Caron', 'Heeps', 39, 'Female', '1 American Ash Pass', '+92 (464) 950-9934', 4, 'U-PU', 15),
(23, 'Ruttger', 'Muddle', 39, 'Male', '567 Monica Pass', '+1 (606) 155-5422', 1, 'P-CG', 7),
(24, 'Merralee', 'Presdie', 39, 'Female', '7 Mockingbird Center', '+48 (181) 254-3879', 5, 'ENT-GAS', 7),
(25, 'Loree', 'Benmore', 47, 'Female', '2 Packers Park', '+51 (809) 375-2404', 3, 'O-RO', 6),
(26, 'Pepe', 'Clinton', 27, 'Male', '4965 Florence Circle', '+55 (414) 328-9843', 1, 'P-RMT', 15),
(27, 'Suzie', 'Cocker', 34, 'Female', '2 Algoma Point', '+33 (362) 367-7178', 2, 'C-ANS', 13),
(28, 'Monique', 'Putnam', 40, 'Female', '388 Arrowood Road', '+994 (417) 755-1912', 4, 'U-INC', 11),
(29, 'Jae', 'Mulvenna', 35, 'Male', '200 Grim Place', '+351 (978) 355-4375', 1, 'P-DB', 4),
(30, 'Betsy', 'Crawshaw', 49, 'Female', '1 Twin Pines Circle', '+62 (448) 123-9053', 3, 'O-DMT', 14),
(31, 'Goldi', 'Waud', 46, 'Female', '87 Becker Street', '+591 (460) 115-5475', 3, 'O-GO', 5),
(32, 'Pace', 'Spruce', 27, 'Male', '79302 Thackeray Lane', '+20 (604) 616-1893', 4, 'U-PU', 7),
(33, 'Karia', 'Neath', 34, 'Female', '2789 Raven Park', '+48 (890) 375-1599', 1, 'P-HO', 7),
(34, 'Harriette', 'Pinckstone', 48, 'Female', '4238 Division Way', '+86 (440) 397-3721', 5, 'ENT-DT', 2),
(35, 'Earl', 'Pareman', 29, 'Male', '049 Golf View Alley', '+62 (898) 273-4368', 4, 'U-FU', 5),
(36, 'Ignacio', 'Marrion', 45, 'Non-binary', '40133 Erie Avenue', '+254 (765) 445-7513', 5, 'ENT-OTM', 9),
(37, 'Lance', 'Eastham', 33, 'Male', '5 Transport Pass', '+351 (905) 840-4611', 1, 'P-ADM', 10),
(38, 'Jacquenetta', 'Kevlin', 47, 'Female', '6719 Starling Road', '+46 (726) 574-6364', 3, 'O-MO', 10),
(39, 'Eadmund', 'McRuvie', 37, 'Male', '3 Maple Place', '+46 (753) 319-3625', 1, 'P-NG', 11),
(40, 'Perla', 'O\'Hara', 41, 'Female', '68 Helena Avenue', '+62 (272) 942-8169', 5, 'ENT-AS', 10),
(41, 'Franciskus', 'Breinl', 44, 'Male', '41 Hagan Junction', '+55 (275) 719-3585', 4, 'U-IL', 9),
(42, 'Ezekiel', 'Cagan', 34, 'Male', '753 Veith Lane', '+53 (459) 962-9987', 5, 'ENT-DT', 5),
(43, 'Jacenta', 'Perrigo', 41, 'Female', '432 Welch Road', '+55 (712) 284-8141', 5, 'ENT-DMT', 15),
(44, 'Blinnie', 'Mew', 46, 'Female', '51879 Sullivan Street', '+62 (918) 992-9106', 3, 'O-MO', 15),
(45, 'Arabele', 'Hanniger', 44, 'Female', '5124 Golf Circle', '+86 (469) 610-9334', 5, 'ENT-OTO', 9),
(46, 'Reinald', 'Birchner', 35, 'Non-binary', '3 Logan Parkway', '+1 (304) 990-0159', 2, 'C-EP', 9),
(47, 'Kore', 'Jansens', 46, 'Female', '0903 Nelson Place', '+358 (696) 674-3756', 1, 'P-HO', 3),
(48, 'Darrick', 'Marre', 31, 'Male', '70 Moose Street', '+86 (643) 676-7988', 2, 'C-MS', 11),
(49, 'Ingra', 'Kennifeck', 25, 'Male', '3 Shopko Alley', '+353 (836) 208-9677', 2, 'C-SUR', 2),
(50, 'Archie', 'Haste', 37, 'Bigender', '4 Redwing Road', '+81 (147) 162-2335', 2, 'C-ANS', 4),
(51, 'Ruprecht', 'Sheerman', 38, 'Male', '44 Debs Parkway', '+86 (343) 858-9532', 1, 'P-GAS', 7),
(52, 'Dennison', 'Moneypenny', 28, 'Male', '6905 Charing Cross Terrace', '+7 (785) 300-0423', 4, 'U-IL', 9),
(53, 'Pippo', 'Anfosso', 42, 'Male', '5 Pleasure Pass', '+1 (434) 669-1355', 5, 'ENT-OTO', 4),
(54, 'Almira', 'Dicte', 50, 'Female', '593 Caliangt Hill', '+31 (592) 718-9782', 1, 'P-ADM', 1),
(55, 'Katalin', 'Beeby', 41, 'Female', '4793 Crownhardt Alley', '+86 (744) 636-4221', 2, 'C-EP', 9),
(56, 'Rockie', 'Girke', 44, 'Male', '30883 Crowley Point', '+86 (957) 906-0583', 3, 'O-HO', 5),
(57, 'Pietrek', 'Maymand', 31, 'Male', '78 American Park', '+351 (941) 281-4696', 5, 'ENT-GAS', 5),
(58, 'Selie', 'Conachie', 40, 'Female', '4144 Sutherland Trail', '+370 (747) 407-5131', 3, 'O-RO', 2),
(59, 'Mathilda', 'Nairy', 35, 'Female', '33652 Bonner Alley', '+86 (642) 922-0335', 5, 'ENT-OTH', 12),
(60, 'Price', 'Twist', 34, 'Male', '648 Sauthoff Road', '+86 (683) 960-4956', 2, 'C-CT', 3),
(61, 'Sutherland', 'Pahl', 48, 'Male', '809 Melody Alley', '+375 (428) 154-5592', 1, 'P-RMT', 15),
(62, 'Hermia', 'Stangoe', 29, 'Genderflui', '023 Bluestem Hill', '+62 (317) 243-7230', 5, 'ENT-DMT', 13),
(63, 'Pacorro', 'Pert', 36, 'Male', '166 Kennedy Circle', '+86 (847) 393-5639', 3, 'O-SO', 12),
(64, 'Lizzie', 'Joll', 43, 'Female', '182 Summerview Plaza', '+54 (737) 196-5670', 5, 'ENT-LOR', 2),
(65, 'Wilhelmine', 'Liveing', 40, 'Female', '05359 Golf Course Court', '+46 (979) 649-3650', 3, 'O-HO', 1),
(66, 'Cloris', 'Tackle', 49, 'Female', '58 Moose Circle', '+86 (258) 778-8902', 3, 'O-SP', 7),
(67, 'Kora', 'Quarless', 33, 'Female', '3 Talisman Parkway', '+55 (479) 762-2540', 4, 'U-SD', 6),
(68, 'Abigale', 'Heaney`', 46, 'Female', '384 Mandrake Way', '+86 (228) 534-9872', 2, 'C-SUR', 12),
(69, 'Roze', 'Heinssen', 42, 'Female', '0108 Bultman Hill', '+380 (540) 187-6532', 1, 'P-ED', 14),
(70, 'Garrik', 'Hawkett', 49, 'Genderflui', '83717 Ridgeview Circle', '+7 (226) 678-2611', 2, 'C-EP', 11),
(71, 'Rhoda', 'Downing', 26, 'Female', '370 Sauthoff Alley', '+86 (389) 383-9024', 3, 'O-OT', 2),
(72, 'Lily', 'Pendrid', 43, 'Non-binary', '25 Harbort Junction', '+502 (116) 757-4090', 3, 'O-GO', 7),
(73, 'Erv', 'Squibe', 44, 'Male', '01287 Larry Center', '+269 (687) 108-2724', 2, 'C-MS', 12),
(74, 'Ragnar', 'Lapwood', 39, 'Male', '9 Mitchell Junction', '+62 (204) 580-4788', 4, 'U-IMT', 5),
(75, 'Tani', 'Valler', 43, 'Female', '5411 Green Way', '+33 (865) 506-0274', 3, 'O-MO', 7),
(76, 'Creighton', 'Belloch', 50, 'Male', '171 Kedzie Street', '+255 (378) 350-9387', 4, 'U-FU', 13),
(77, 'Veda', 'Boffin', 27, 'Female', '68 Onsgard Way', '+1 (684) 414-7045', 2, 'C-EP', 8),
(78, 'Clemmie', 'Livezley', 36, 'Male', '2 Hallows Hill', '+234 (256) 928-2275', 4, 'U-LRS', 9),
(79, 'Lu', 'Ambrogioni', 30, 'Female', '27 Marquette Junction', '+52 (801) 545-5464', 1, 'P-HO', 4),
(80, 'Nicki', 'Ramalhete', 25, 'Female', '8 Karstens Terrace', '+7 (630) 845-9474', 1, 'P-NG', 3),
(81, 'Troy', 'Giorgi', 41, 'Male', '25 Glendale Pass', '+375 (170) 567-6058', 5, 'ENT-AS', 14),
(82, 'Lurleen', 'Martyntsev', 36, 'Female', '45 Kensington Parkway', '+351 (462) 801-4846', 2, 'C-RT', 4),
(83, 'Jan', 'Simonyi', 47, 'Female', '8 Bashford Pass', '+46 (138) 537-7177', 1, 'P-ADM', 9),
(84, 'Louisa', 'Thame', 39, 'Female', '597 Lien Way', '+48 (529) 141-0593', 2, 'C-EKG', 9),
(85, 'Gabbie', 'Redmond', 37, 'Male', '51 Melody Terrace', '+351 (919) 747-7364', 2, 'C-MS', 8),
(86, 'Renaud', 'Tichner', 40, 'Male', '40 Warner Hill', '+1 (317) 309-0189', 2, 'C-EKG', 9),
(87, 'Dalia', 'Rowden', 49, 'Non-binary', '0 Coleman Circle', '+54 (869) 771-0537', 5, 'ENT-GAS', 4),
(88, 'Clayton', 'Bruin', 40, 'Male', '1 Green Alley', '+47 (140) 482-1330', 4, 'U-UO', 5),
(89, 'Audra', 'Matysiak', 43, 'Female', '9 Porter Road', '+356 (824) 865-8912', 2, 'C-ANS', 5),
(91, 'Idelle', 'Como', 27, 'Female', '59 Alpine Parkway', '+46 (740) 963-0956', 5, 'ENT-DMT', 4),
(92, 'Drew', 'Whisker', 45, 'Male', '1180 Eggendart Parkway', '+57 (417) 683-9327', 3, 'O-RO', 12),
(93, 'Aprilette', 'Butland', 39, 'Female', '4886 Brown Hill', '+86 (941) 605-8175', 5, 'ENT-OTH', 6),
(94, 'Vernen', 'Boniface', 34, 'Male', '02885 Emmet Alley', '+63 (589) 756-7934', 3, 'O-MO', 7),
(95, 'Emmalyn', 'Renouf', 38, 'Female', '28 Rutledge Avenue', '+55 (332) 643-2414', 4, 'U-PU', 4),
(96, 'Harley', 'Larwell', 49, 'Male', '897 Ludington Pass', '+1 (757) 165-7102', 3, 'O-GO', 3),
(97, 'Vinni', 'Renac', 35, 'Female', '1244 Debra Park', '+1 (513) 415-5312', 4, 'U-SD', 12),
(98, 'Roby', 'Farnorth', 30, 'Female', '5209 Graceland Point', '+86 (582) 273-3140', 3, 'O-DMT', 12),
(99, 'Alina', 'Melanaphy', 50, 'Female', '738 Sheridan Hill', '+52 (433) 602-4442', 2, 'C-RT', 14),
(100, 'Letta', 'Euplate', 46, 'Female', '330 Badeau Way', '+86 (395) 348-7873', 1, 'P-ED', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `dopa_normalization`
--

CREATE TABLE `dopa_normalization` (
  `Doctor_ID` int(10) UNSIGNED DEFAULT NULL,
  `Patient_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `dopa_normalization`
--

INSERT INTO `dopa_normalization` (`Doctor_ID`, `Patient_ID`) VALUES
(1, 93),
(2, 78),
(3, 23),
(4, 74),
(4, 90),
(5, 9),
(5, 25),
(5, 66),
(6, 30),
(7, 74),
(8, 19),
(9, 58),
(10, 24),
(12, 21),
(12, 83),
(13, 88),
(14, 88),
(16, 21),
(20, 24),
(20, 73),
(21, 56),
(22, 13),
(22, 84),
(27, 57),
(29, 86),
(30, 53),
(30, 98),
(31, 2),
(31, 87),
(33, 17),
(34, 63),
(34, 87),
(35, 56),
(35, 71),
(38, 2),
(42, 24),
(44, 88),
(44, 26),
(44, 73),
(45, 14),
(45, 31),
(45, 73),
(46, 73),
(46, 96),
(48, 41),
(49, 80),
(52, 52),
(52, 78),
(53, 31),
(54, 62),
(57, 16),
(58, 21),
(59, 47),
(59, 66),
(61, 29),
(62, 15),
(62, 17),
(62, 62),
(62, 98),
(65, 56),
(66, 34),
(66, 54),
(66, 96),
(67, 21),
(68, 9),
(69, 97),
(70, 33),
(73, 92),
(74, 92),
(75, 33),
(77, 84),
(77, 90),
(80, 50),
(80, 96),
(81, 11),
(81, 88),
(83, 32),
(85, 57),
(85, 59),
(88, 31),
(88, 57),
(88, 59),
(91, 53),
(91, 56),
(91, 67),
(93, 62),
(94, 60),
(95, 2),
(95, 85),
(97, 56),
(97, 84),
(98, 86),
(98, 43),
(99, 35),
(99, 49),
(100, 100);

-- --------------------------------------------------------

--
-- Структура таблицы `drugs`
--

CREATE TABLE `drugs` (
  `Drugs_name` varchar(150) NOT NULL,
  `Price` int(10) UNSIGNED NOT NULL,
  `Company` varchar(150) NOT NULL,
  `Discription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `drugs`
--

INSERT INTO `drugs` (`Drugs_name`, `Price`, `Company`, `Discription`) VALUES
('ACEPHEN', 26074, 'G&W Laboratories, Inc.', 'Acetaminophen'),
('acid reducer', 50007, 'Rite Aid Corporation', 'Ranitidine'),
('Albuminuriaforce', 41771, 'Apotheca Company', 'Equisetum hyemale, Solidago virgaurea, Apis mellifica, Mercurius corrosivus, Nux moschata, Phosphorus, Terebinthina,'),
('Alprazolam', 83671, 'Rebel Distributors Corp.', 'Alprazolam'),
('Anti-Diarrheal', 79672, 'ASSURED / DOLLAR TREE (Greenbrier International, Inc.)', 'Loperamide HCl'),
('Asthma Rescue - Cough', 96796, 'Newton Laboratories, Inc.', 'Influenzinum, Antimon. tart., Arsenicum alb., Bryonia, Chelidonium majus, Cinchona, Drosera, Eucalyptus, Histaminum hydrochloricum, Hydrastis, Kali bic., Kali carb., Kali iod., Myrrha, Nat. sulphuricum, Nux vom., Phosphorus, Pulsatilla, Rumex crisp.,'),
('BACLOFEN', 94281, 'Direct Rx', 'BACLOFEN'),
('BareMinerals Multi-Tasking SPF 20 Concealer', 24198, 'Bare Escentuals Beauty Inc.', 'Titanium Dioxide, Zinc Oxide'),
('BENAZEPRIL HYDROCHLORIDE', 22996, 'Trigen Laboratories, Inc.', 'Benazepril hydrochloride'),
('Benzonatate', 16755, 'Amneal Pharmaceuticals of NY LLC', 'Benzonatate'),
('BLATELLA GERMANICA', 26338, 'ALK-Abello, Inc.', 'GERMAN COCKROACH'),
('BOTRYTIS CINEREA', 81300, 'Allergy Laboratories, Inc.', 'botrytis cinerea'),
('Calypxo Pain Relief', 22559, 'Enovachem Manufacturing', 'Methyl Salicylate, Menthol'),
('CAREALL Vitamin A and D', 23123, 'New World Imports, Inc', 'Lanolin and Petrolatum'),
('Cefadroxil', 23552, 'Aurobindo Pharma Limited', 'Cefadroxil'),
('CEFOTAXIME', 55626, 'WOCKHARDT USA LLC.', 'CEFOTAXIME'),
('Cephalexin', 56760, 'Rebel Distributors Corp', 'Cephalexin'),
('ciprofloxacin', 40704, 'Clinical Solutions Wholesale', 'ciprofloxacin'),
('citroma', 94015, 'CVS Pharmacy, Inc', 'Magesium Citrate'),
('Clotrimazole', 63834, 'Kaiser Foundation Hospitals', 'Clotrimazole'),
('Corn Grass', 70297, 'Nelco Laboratories, Inc.', 'Corn Grass'),
('Cozaar', 11552, 'Physicians Total Care, Inc.', 'losartan potassium'),
('DDF', 3322, 'Procter & Gamble Manufacturing Company', 'Avobenzone, Homosalate, Octisalate, and Octocrylene'),
('DEBROX', 59585, 'Medtech Products Inc.', 'Carbamide Peroxide'),
('Dentaforce', 57029, 'Apotheca Company', 'Antimonium crudum, Belladonna, Calcarea carbonica,'),
('Diclofenac Sodium', 14773, 'Bryant Ranch Prepack', 'Diclofenac Sodium'),
('Divalproex Sodium', 97655, 'Aurobindo Pharma Limited', 'Divalproex Sodium'),
('Doxycycline Hyclate', 61780, 'Watson Laboratories, Inc.', 'Doxycycline Hyclate'),
('DR. BABOR DERMA Cellular Detoxifying Vitamin SPF 15', 37424, 'Babor Cosmetics America, Corp', 'Octocrylene'),
('Dry Scalp Care', 15243, 'Wal-Mart Stores, Inc.', 'Pyrithione Zinc'),
('DuoDote', 29727, 'Meridian Medical Technologies , Inc.', 'atropine and pralidoxime chloride'),
('Dynamic Skin Recovery', 87513, 'Dermalogica, Inc.', 'Avobenzone and Octinoxate'),
('Equaline hemorrhoial', 40461, 'Supervalu Inc', 'Mineral oil, petrolatum, phenylephrine hcl'),
('ERAXIS', 8717, 'Roerig', 'ANIDULAFUNGIN'),
('ETHYL ALCOHOL', 66138, 'GOJO Industries, Inc.', 'ALCOHOL'),
('Exelon', 14608, 'Physicians Total Care, Inc.', 'rivastigmine tartrate'),
('G9 Whitening', 18885, 'TONYMOLY CO., LTD.', 'DIMETHICONE'),
('G9Whg', 18885, 'TONYMOLY CO., LTD.', 'DIMETHICONE'),
('Gabapentin', 79548, 'Cardinal Health', 'Gabapentin'),
('Galantamine Hydrobromide', 90418, 'Mylan Pharmaceuticals Inc.', 'galantamine hydrobromide'),
('GAP favorite Lip Balm', 60308, 'Autumn Harp, Inc', 'Octinoxate and Oxybenzone'),
('Garnier Fructis Antidandruff', 17864, 'L\'Oreal USA Florence Manufacturing', 'Pyrithione Zinc'),
('Grape Vineyard Antibacterial Hand Wash', 65133, 'SJ Creations, Inc.', 'Triclosan'),
('Halls', 7284, 'Mondelez Global LLC', 'Menthol'),
('Hawaiian Tropic Baby', 33783, 'Formulated Solutions', 'OCTOCRYLENE, OXYBENZONE'),
('Head and Shoulders 2in1', 90649, 'Procter & Gamble Manufacturing Co.', 'Pyrithione Zinc'),
('House Dust', 84394, 'Nelco Laboratories, Inc.', 'House Dust'),
('Hydrochlorothiazide', 25408, 'IVAX Pharmaceuticals, Inc.', 'Hydrochlorothiazide'),
('HYDROCODONE BITARTRATE AND ACETAMINOPHEN', 92299, 'STAT Rx USA LLC', 'HYDROCODONE BITARTRATE AND ACETAMINOPHEN'),
('hydrocortisone', 46464, 'H E B', 'Hydrocortisone'),
('Hydrox', 72145, 'Physicians Total Care, Inc.', 'hydroxyzine'),
('HydrOXYzine hydrochloride', 83173, 'Caraco Pharmaceutical Laboratories, Ltd.', 'HydrOXYzine hydrochloride'),
('Instant Hand Sanitizer Lemon Drop', 23312, 'BB17, LLC', 'ETHYL ALCOHOL'),
('Ipratropium Bromide', 77825, 'Nephron Pharmaceuticals Corporation', 'Ipratropium Bromide'),
('Kiehls Since 1851 Activated Sun Protector Broad Spectrum SPF 50 Sunscreen', 56060, 'L\'Oreal USA Products Inc', 'Avobenzone, Homosalate, Octisalate, Octocrylene and Oxybenzone'),
('LAURA GELLER BEAUTY TUSCAN SUN SPACKLE SPF 30 PROTECTIVE UNDER MAKE-UP PRIMER TAN', 49678, 'Laura Geller Beauty, LLC', 'AVOBENZONE, OCTINOXATE, OCTISALATE'),
('Laura mercier Tinted Moisturizer SPF-20 Nude', 81436, 'Gurwitch Products, L.L.C.', 'Octinoxate ,Meradimate'),
('LBEL', 90080, 'Ventura International LTD.', 'Octinoxate and Oxybenzone'),
('LBEL COULEUR LUXE AMPLIFIER XP', 3556, 'Ventura Corporation LTD.', 'Octinoxate and Oxybenzone'),
('LBEL HYDRATESS', 90080, 'Ventura International LTD.', 'Octinoxate and Oxybenzone'),
('Lidocaine', 66913, 'APP Pharmaceuticals, LLC', 'LIDOCAINE HYDROCHLORIDE'),
('Lidolog Kit', 40842, 'Asclemed USA, Inc.', 'lidocaine, kenalog, povidone iodine'),
('LITHOBID', 28589, 'ANI Pharmaceuticals, Inc.', 'lithium carbonate'),
('Losartan Potassium and Hydrochlorothiazide', 76469, 'Watson Laboratories, Inc.', 'Losartan Potassium and Hydrochlorothiazide'),
('Lovastatin', 51181, 'REMEDYREPACK INC.', 'Lovastatin'),
('Medrol', 94688, 'REMEDYREPACK INC.', 'methylprednisolone'),
('Meloxicam', 49656, 'Apotex Corp.', 'Meloxicam'),
('Mentholatum Sports Pain Relief', 26749, 'The Mentholatum Company', 'Menthol, Methyl salicylate'),
('Metformin Hydrochloride', 48128, 'McKesson Contract Packaging', 'Metformin Hydrochloride'),
('Minocycline Hydrochloride', 82890, 'Teva Pharmaceuticals USA Inc', 'Minocycline Hydrochloride'),
('Mirapex', 18353, 'Cardinal Health', 'pramipexole dihydrochloride'),
('Moisturizing Antibacterial', 95172, 'C.D.M.A.', 'Benzalkonium chloride 0.13%'),
('Mosquito', 90472, 'Nelco Laboratories, Inc.', 'Mosquito'),
('Mucu', 64899, 'Publix Super Markets Inc', 'Guaifenesin'),
('Mucus ER', 64899, 'Publix Super Markets Inc', 'Guaifenesin'),
('Multi-Vitamin Fluoride Drops', 42647, 'H.J. Harkins Company, Inc.', 'Vitamin A, Vitamin C, Vitamin D, Vitamin E, Vitamin B1, Vitamin B2, Vitamin B12, Niacin, Vitamin B6, Flouride'),
('Nadolol', 89177, 'BluePoint Laboratories', 'Nadolol'),
('Naproxen Sodium', 8248, 'STAT Rx USA LLC', 'Naproxen Sodium'),
('Olanzapine', 16293, 'Golden State Medical Supply, Inc.', 'Olanzapine'),
('Oxycodone and Acetaminophen', 74687, 'Watson Laboratories, Inc.', 'Oxycodone hydrochloride and Acetaminophen'),
('Oxycodone Hydrochloride', 18619, 'Qualitest Pharmaceuticals', 'Oxycodone Hydrochloride'),
('Oxygen', 66901, 'Northern Welding Supply', 'Oxygen'),
('Phentermine Hydrochloride', 52939, 'Unit Dose Services', 'Phentermine Hydrochloride'),
('POPULUS DELTOIDES POLLEN', 10924, 'ALK-Abello, Inc.', 'Cottonwood Eastern Common'),
('Powerhouse Fresh Scent Ultra Dish', 91790, 'Personal Care Products', 'Triclosan'),
('Prazosin Hydrochloride', 22903, 'Teva Pharmaceuticals USA Inc', 'Prazosin Hydrochloride'),
('Premier Value Infants Ibuprofen', 28594, 'Premier Value', 'concetrated ibuprofen'),
('Q-Tapp DM Elixir', 78096, 'Qualitest Pharmaceuticals', 'Brompheniramine maleate and Pseudoephedrine hydrochloride and Dextromethorphan hydrobromide'),
('QCare Oral Cleansing and Suctioning System, Q4', 51330, 'Sage Products, LLC', 'CETYLPYRIDINIUM CHLORIDE and HYDROGEN PEROXIDE'),
('RANITIDINE', 73728, 'WOCKHARDT USA LLC.', 'RANITIDINE HYDROCHLORIDE'),
('rizatriptan benzoate', 45214, 'Glenmark Generics Inc., USA', 'rizatriptan benzoate'),
('Sertraline Hydrochloride', 39199, 'Aurolife Pharma LLC', 'Sertraline Hydrochloride'),
('Sheer Finish Tinted Moisturizer Warm Beige', 48722, 'Arbonne International, LLC', 'Zinc Oxide'),
('Silver Sulfadiazine', 89786, 'REMEDYREPACK INC.', 'Silver Sulfadiazine'),
('Softlips Flavor Fusions Pomegranate Blueberry', 30388, 'The Mentholatum Company', 'dimethicone, octinoxate, octisalate, oxybenzone'),
('SOL LEON Sunscreen SPF 30', 15551, 'Bottega di Lungavita Srl', 'AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE, OCTINOXATE'),
('SPAI-SONS', 36603, 'SPAI-SONS PHARMACEUTICAL INTERNATIONAL COSMETICS', 'PYRITHIONE ZINC'),
('Sterile', 47703, 'Hospira, Inc.', 'Water'),
('Sterile Water', 47703, 'Hospira, Inc.', 'Water'),
('Tamoxifen Citrate', 62630, 'McKesson Packaging Services Business Unit of McKesson Corporation', 'Tamoxifen Citrate'),
('Terconazole', 21632, 'Perrigo New York Inc', 'Terconazole'),
('TIAZAC', 4800, 'Valeant Pharmaceuticals North America LLC', 'diltiazem hydrochloride'),
('TOURCIA NUTRI', 84374, 'NUGA MEDICAL CO., LTD.', 'DIMETHICONE'),
('Triamcinolone', 86073, 'Clinical Solutions Wholesale', 'Triamcinolone Acetonide'),
('Triamcinolone Acetonide', 86073, 'Clinical Solutions Wholesale', 'Triamcinolone Acetonide'),
('Ultane', 44505, 'AbbVie Inc.', 'Sevoflurane'),
('Veil Fluid Makeup Light Beige', 79564, 'Kingdom Animalia, LLC. DBA Hourglass Cosmetics', 'Octinoxate, Octisalate, Oxybenzone'),
('Venlafaxine Hydrochloride', 58005, 'Teva Pharmaceuticals USA Inc', 'Venlafaxine Hydrochloride'),
('Venus White', 4212, 'Heraeus Kulzer LLC', 'Sodium Fluoride'),
('Voriconazole', 93242, 'Cardinal Health', 'voriconazole'),
('Weight Loss Solution', 71853, 'Liddell Laboratories', 'Amino acids, Apis mellifica, Arnica montana, Fucus vesiculosus, Gambogia, Hepar suis, Phosphoricum acidum Pituitary suis,'),
('Witch Hazel', 79238, 'CVS', 'Witch Hazel'),
('Zhuang Gu Feng Shi Pain Relieving Plaster', 21818, 'International Nature Nutraceuticals', 'Methyl Salicylate, Camphor, Menthol'),
('Zidovudine', 27443, 'Gen-Source Rx', 'Zidovudine'),
('Zoloft', 51095, 'Roerig', 'sertraline hydrochloride');

-- --------------------------------------------------------

--
-- Структура таблицы `inpatient`
--

CREATE TABLE `inpatient` (
  `Date_of_come` date NOT NULL,
  `Date_of_out` date NOT NULL,
  `Patient_ID` int(10) UNSIGNED DEFAULT NULL,
  `Room_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `inpatient`
--

INSERT INTO `inpatient` (`Date_of_come`, `Date_of_out`, `Patient_ID`, `Room_ID`) VALUES
('2022-12-06', '2022-12-21', 2, 86),
('2022-12-01', '2022-12-21', 3, 80),
('2022-12-09', '2022-12-19', 5, 100),
('2022-12-03', '2022-12-18', 6, 72),
('2022-12-08', '2022-12-15', 7, 19),
('2022-12-02', '2022-12-15', 11, 13),
('2022-12-05', '2022-12-12', 12, 79),
('2022-12-03', '2022-12-21', 15, 42),
('2022-12-05', '2022-12-22', 16, 24),
('2022-12-06', '2022-12-20', 17, 17),
('2022-12-02', '2022-12-18', 18, 5),
('2022-12-04', '2022-12-14', 20, 4),
('2022-12-09', '2022-12-17', 21, 36),
('2022-12-01', '2022-12-19', 22, 82),
('2022-12-03', '2022-12-24', 24, 42),
('2022-12-04', '2022-12-22', 25, 10),
('2022-12-05', '2022-12-19', 27, 20),
('2022-12-06', '2022-12-17', 28, 33),
('2022-12-08', '2022-12-21', 30, 27),
('2022-12-05', '2022-12-22', 31, 85),
('2022-12-08', '2022-12-13', 33, 75),
('2022-12-08', '2022-12-24', 35, 65),
('2022-12-04', '2022-12-14', 37, 81),
('2022-12-05', '2022-12-21', 38, 43),
('2022-12-04', '2022-12-23', 40, 64),
('2022-12-08', '2022-12-22', 41, 57),
('2022-12-09', '2022-12-21', 43, 96),
('2022-12-02', '2022-12-24', 44, 100),
('2022-12-03', '2022-12-22', 45, 11),
('2022-12-07', '2022-12-13', 47, 55),
('2022-12-07', '2022-12-20', 49, 50),
('2022-12-04', '2022-12-15', 50, 63),
('2022-12-06', '2022-12-17', 51, 97),
('2022-12-02', '2022-12-12', 52, 16),
('2022-12-06', '2022-12-24', 54, 47),
('2022-12-07', '2022-12-20', 55, 68),
('2022-12-05', '2022-12-21', 57, 30),
('2022-12-07', '2022-12-23', 60, 44),
('2022-12-05', '2022-12-16', 62, 81),
('2022-12-06', '2022-12-23', 64, 19),
('2022-12-05', '2022-12-11', 65, 53),
('2022-12-08', '2022-12-15', 66, 94),
('2022-12-06', '2022-12-14', 68, 73),
('2022-12-03', '2022-12-20', 69, 90),
('2022-12-04', '2022-12-13', 71, 21),
('2022-12-06', '2022-12-14', 74, 89),
('2022-12-04', '2022-12-23', 76, 99),
('2022-12-01', '2022-12-22', 80, 38),
('2022-12-07', '2022-12-12', 83, 66),
('2022-12-03', '2022-12-20', 89, 24),
('2022-12-03', '2022-12-18', 91, 33),
('2022-12-09', '2022-12-24', 93, 89),
('2022-12-08', '2022-12-20', 95, 84),
('2022-12-04', '2022-12-22', 97, 17),
('2022-12-09', '2022-12-12', 98, 35),
('2022-12-05', '2022-12-24', 100, 27),
('2022-12-01', '2022-12-13', 57, 37),
('2022-12-12', '2022-12-20', 150, 86);

--
-- Триггеры `inpatient`
--
DELIMITER $$
CREATE TRIGGER `patient_bed` AFTER INSERT ON `inpatient` FOR EACH ROW BEGIN
  
    set @bed := (SELECT number_of_beds from rooms WHERE rooms.Room_ID = new.Room_ID);
    
    UPDATE rooms set number_of_beds = @bed-1 WHERE rooms.Room_ID = new.Room_ID;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `Job_Type` varchar(10) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Salary` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`Job_Type`, `Title`, `Salary`) VALUES
('C-ANS', 'Anesthesiologists', 850000),
('C-CST', 'Cardiology consultant', 300000),
('C-CT', 'Cardiovascular technician', 380000),
('C-EKG', 'EKG technician', 500000),
('C-EP', 'Exercise physiologist', 450000),
('C-MS', 'Medical sonographer', 950000),
('C-MTN', 'Cardiology mental health nurse', 400000),
('C-N', 'Cardiology nurse', 250000),
('C-NR', 'Cardiology-registred nurse', 350000),
('C-RT', 'Respiratory therapist', 570000),
('C-STN', 'Cardiology student nurse', 0),
('C-SUR', 'Surgeon', 670000),
('ENT-AS', 'Allergy Specialist', 980000),
('ENT-DMT', 'Dermatologist', 450000),
('ENT-DT', 'Dentist', 1500000),
('ENT-GAS', 'Gastroenterologist', 745000),
('ENT-LOR', 'Lor', 320000),
('ENT-MTN', 'Ear, nose and throat mental health nurse', 400000),
('ENT-N', 'Ear, nose and throat nurse', 250000),
('ENT-NR', 'Ear, nose and throat registred nurse', 350000),
('ENT-OTH', 'Otorhinolaryngology', 1200000),
('ENT-OTM', 'Ophthalmologist', 960000),
('ENT-OTO', 'Otolaryngologists', 23000),
('ENT-STN', 'Ear, nose and throat student nurse', 0),
('O-DMT', 'Dermatologist', 750000),
('O-GO', 'Gynecologic oncologist', 810000),
('O-HO', 'Hematologist-oncologist', 1050000),
('O-MO', 'Medical oncologist', 520000),
('O-MTN', 'Oncology mental health nurse', 400000),
('O-N', 'Oncology nurse', 250000),
('O-NR', 'Oncology-registred nurse', 350000),
('O-OT', 'Occupational therapist', 456000),
('O-RO', 'Radiation oncologist', 687000),
('O-SO', 'Surgical oncologist', 450000),
('O-SP', 'Speech pathologist', 670000),
('O-STN', 'Oncology student nurse', 0),
('P-ADM', 'Pediatric Adolescent medicine', 350000),
('P-CG', 'Pediatric cardiology', 450000),
('P-DB', 'Developmental-Behavioral Pediatrics', 400000),
('P-ED', 'Pediatric endocrinology', 450000),
('P-GAS', 'Pediatric gastroenterology', 880000),
('P-HO', 'Pediatric Hematology Oncology', 380000),
('P-MTN', 'Pediatric mental health nurse', 400000),
('P-N', 'Pediatric nurse', 250000),
('P-NG', 'Pediatric Neonatology', 580000),
('P-NR', 'Pediatric-registred nurse', 3500000),
('P-RMT', 'Pediatric Rheumatology', 750000),
('P-STN', 'Pediatric student nurse', 0),
('U-FU', 'Female urology', 745000),
('U-IL', 'Infertility', 940000),
('U-IMT', 'Impotence', 5750000),
('U-INC', 'Incontinence', 892000),
('U-LRS', 'Laparoscopy', 750000),
('U-MTN', 'Urology mental health nurse', 400000),
('U-N', 'Urology nurse', 250000),
('U-NR', 'Urology-registred nurse', 350000),
('U-PU', 'Pediatric urology', 560000),
('U-SD', 'Stone disease', 687000),
('U-STN', 'Urology student nurse', 0),
('U-UO', 'Urologic oncology', 550000);

-- --------------------------------------------------------

--
-- Структура таблицы `medical_records`
--

CREATE TABLE `medical_records` (
  `Doctor_ID` int(10) UNSIGNED DEFAULT NULL,
  `Patient_ID` int(10) UNSIGNED DEFAULT NULL,
  `Diagnos_ID` int(10) UNSIGNED DEFAULT NULL,
  `Treatment_ID` int(10) UNSIGNED DEFAULT NULL,
  `Disease_Name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `medical_records`
--

INSERT INTO `medical_records` (`Doctor_ID`, `Patient_ID`, `Diagnos_ID`, `Treatment_ID`, `Disease_Name`) VALUES
(31, 2, 20, 5, 'Coli'),
(38, 2, 98, 48, 'Acute Flaccid Myelitis'),
(95, 2, 54, 99, 'Arthritis'),
(68, 9, 55, 62, 'Cancer'),
(81, 11, 16, 15, 'Depression'),
(22, 13, 19, 26, 'Diabetes'),
(45, 14, 43, 38, 'Ebola Virus'),
(62, 15, 73, 55, 'Fibroids'),
(57, 16, 13, 24, 'Giardiasis'),
(33, 17, 92, 52, 'Gonorrhea'),
(62, 17, 40, 45, 'Harmful Algal Blooms'),
(8, 19, 76, 100, 'Heart Disease'),
(12, 21, 74, 67, 'Hepatitis'),
(16, 21, 88, 95, 'High Blood Pressure'),
(58, 21, 30, 6, 'Influenza'),
(67, 21, 51, 88, 'Lupus'),
(3, 23, 91, 70, 'Lyme Disease'),
(42, 24, 45, 40, 'Measles'),
(20, 24, 97, 35, 'Meningitis'),
(10, 24, 49, 12, 'Mumps'),
(5, 25, 71, 97, 'Plague'),
(44, 26, 42, 50, 'Rubella'),
(61, 29, 36, 41, 'SARS'),
(6, 30, 7, 22, 'Stress'),
(53, 31, 68, 51, 'Tetanus'),
(45, 31, 58, 73, 'Trichomoniasis'),
(88, 31, 69, 59, 'Tuberculosis (TB)'),
(83, 32, 93, 50, 'Zika Virus'),
(75, 33, 82, 74, 'Acute Flaccid Myelitis'),
(70, 33, 46, 35, 'Arthritis'),
(66, 34, 33, 9, 'Asthma'),
(99, 35, 27, 21, 'Cancer'),
(48, 41, 32, 39, 'Coli'),
(98, 43, 83, 75, 'Crabs'),
(59, 47, 41, 36, 'Depression'),
(99, 49, 95, 17, 'Diabetes'),
(80, 50, 44, 17, 'Ebola Virus'),
(52, 52, 78, 90, 'Fibroids'),
(91, 53, 24, 13, 'Giardiasis'),
(30, 53, 70, 68, 'Gonorrhea'),
(66, 54, 57, 83, 'Harmful Algal Blooms'),
(65, 56, 99, 47, 'Heart Disease'),
(35, 56, 94, 38, 'Hepatitis'),
(37, 56, 81, 82, 'High Blood Pressure'),
(21, 56, 65, 54, 'Influenza'),
(91, 56, 66, 68, 'Lupus'),
(85, 57, 52, 78, 'Lyme Disease'),
(27, 57, 34, 29, 'Measles'),
(88, 57, 10, 3, 'Meningitis'),
(9, 58, 60, 86, 'Mumps'),
(85, 59, 47, 48, 'Plague'),
(88, 59, 1, 28, 'Rubella'),
(94, 60, 6, 30, 'SARS'),
(54, 62, 39, 32, 'Stress'),
(93, 62, 12, 49, 'Tetanus'),
(62, 62, 62, 89, 'Trichomoniasis'),
(34, 63, 84, 60, 'Tuberculosis (TB)'),
(5, 66, 4, 25, 'Zika Virus'),
(59, 66, 9, 33, 'Acute Flaccid Myelitis'),
(91, 67, 18, 23, 'Arthritis'),
(35, 71, 67, 92, 'Asthma'),
(44, 73, 90, 65, 'Cancer'),
(20, 73, 85, 71, 'Coli'),
(46, 73, 21, 27, 'Crabs'),
(45, 73, 64, 87, 'Depression'),
(7, 74, 100, 12, 'Diabetes'),
(4, 74, 77, 61, 'Ebola Virus'),
(2, 78, 5, 20, 'Fibroids'),
(52, 78, 80, 91, 'Giardiasis'),
(49, 80, 31, 37, 'Gonorrhea'),
(12, 83, 22, 7, 'Harmful Algal Blooms'),
(22, 84, 86, 98, 'Heart Disease'),
(77, 84, 89, 76, 'Hepatitis'),
(97, 84, 26, 19, 'High Blood Pressure'),
(95, 85, 79, 94, 'Influenza'),
(98, 86, 61, 96, 'Lupus'),
(29, 86, 11, 8, 'Lyme Disease'),
(31, 87, 53, 79, 'Measles'),
(34, 87, 50, 42, 'Meningitis'),
(13, 88, 25, 4, 'Mumps'),
(14, 88, 15, 16, 'Plague'),
(81, 88, 8, 11, 'Rubella'),
(44, 88, 3, 10, 'SARS'),
(77, 90, 38, 43, 'Stress'),
(4, 90, 37, 31, 'Tetanus'),
(73, 92, 87, 58, 'Trichomoniasis'),
(74, 92, 59, 53, 'Tuberculosis (TB)'),
(1, 93, 28, 1, 'Zika Virus'),
(66, 96, 29, 34, 'Acute Flaccid Myelitis'),
(46, 96, 48, 47, 'Arthritis'),
(80, 96, 56, 72, 'Asthma'),
(69, 97, 35, 46, 'Cancer'),
(30, 98, 2, 14, 'Coli'),
(62, 98, 75, 85, 'Crabs'),
(100, 100, 63, 93, 'Depression');

-- --------------------------------------------------------

--
-- Структура таблицы `nurse`
--

CREATE TABLE `nurse` (
  `Nurse_ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Surname` varchar(35) NOT NULL,
  `Age` int(10) UNSIGNED NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Home_Address` varchar(35) DEFAULT NULL,
  `Phone_Number` varchar(35) DEFAULT NULL,
  `Room_ID` int(10) UNSIGNED DEFAULT NULL,
  `Job_Type` varchar(10) DEFAULT NULL,
  `Shedule_ID` int(10) UNSIGNED DEFAULT NULL,
  `Ward_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `nurse`
--

INSERT INTO `nurse` (`Nurse_ID`, `Name`, `Surname`, `Age`, `Gender`, `Home_Address`, `Phone_Number`, `Room_ID`, `Job_Type`, `Shedule_ID`, `Ward_ID`) VALUES
(1, 'Ursala', 'Puttrell', 20, 'Female', '235 Esker Center', '386-852-5800', 1, 'P-N', 7, 1),
(2, 'Everett', 'Cranefield', 18, 'Male', '93 Florence Trail', '428-738-9335', 41, 'O-N', 2, 3),
(3, 'Juliana', 'Josifovic', 25, 'Female', '10152 Village Park', '537-903-0397', 61, 'U-N', 10, 4),
(4, 'Tymothy', 'Teodoro', 20, 'Male', '51 Ryan Drive', '909-119-2671', 21, 'C-N', 4, 2),
(5, 'Jorey', 'Jakaway', 25, 'Female', '6 Artisan Center', '508-936-4464', 42, 'O-N', 2, 3),
(6, 'Sandye', 'Castane', 20, 'Female', '61 Bartillon Parkway', '202-787-7272', 2, 'P-MTN', 12, 1),
(7, 'Reg', 'Ponte', 19, 'Male', '92598 4th Drive', '362-859-0301', 22, 'C-MTN', 8, 2),
(8, 'Bartholomew', 'Simione', 19, 'Male', '16 Holy Cross Terrace', '939-954-0302', 23, 'C-STN', 4, 2),
(9, 'Dov', 'Kondrachenko', 23, 'Male', '65 Novick Drive', '917-586-4750', 24, 'C-NR', 11, 2),
(10, 'Lesley', 'York', 19, 'Bigender', '69 Mandrake Road', '792-909-3767', 43, 'O-MTN', 12, 3),
(11, 'Olivero', 'Dressel', 22, 'Non-binary', '862 Old Gate Alley', '535-167-2544', 62, 'U-MTN', 2, 4),
(12, 'Gustie', 'Loughran', 20, 'Female', '6192 Orin Parkway', '908-999-8396', 25, 'C-N', 3, 2),
(13, 'Tyler', 'Benedettini', 20, 'Male', '3 Maple Alley', '465-935-3499', 81, 'ENT-N', 10, 5),
(14, 'Munmro', 'Achrameev', 21, 'Male', '8 Morrow Pass', '822-399-5948', 82, 'ENT-MTN', 1, 5),
(15, 'Doe', 'Dannel', 24, 'Female', '53019 Nevada Avenue', '920-388-1152', 26, 'C-MTN', 13, 2),
(16, 'Viv', 'Heeron', 21, 'Female', '28 Longview Alley', '980-795-1678', 63, 'U-STN', 15, 4),
(17, 'Mariska', 'Sandels', 24, 'Female', '7852 Anniversary Terrace', '502-833-5725', 44, 'O-STN', 8, 3),
(18, 'Agosto', 'Robertshaw', 23, 'Male', '36 Bobwhite Park', '239-986-9939', 45, 'O-NR', 14, 3),
(19, 'Kaylyn', 'Chart', 20, 'Female', '84127 Northridge Road', '358-831-3164', 83, 'ENT-NR', 8, 5),
(20, 'Marketa', 'Davidman', 20, 'Female', '67 Bayside Center', '809-286-0430', 64, 'U-N', 11, 4),
(21, 'Giffard', 'Fairholme', 24, 'Male', '37530 Ruskin Drive', '246-851-7947', 3, 'P-NR', 2, 1),
(22, 'Gerhardine', 'Jerrome', 21, 'Female', '141 Northridge Court', '668-585-0571', 27, 'C-NR', 15, 2),
(23, 'Arline', 'Skoggings', 25, 'Female', '7 Judy Plaza', '199-671-0324', 46, 'O-MTN', 5, 3),
(24, 'Morey', 'Ravilus', 19, 'Male', '18130 American Junction', '368-281-5990', 84, 'ENT-N', 3, 5),
(25, 'Tucker', 'Brauninger', 23, 'Male', '03 Rieder Trail', '842-878-6359', 4, 'P-N', 1, 1),
(26, 'Odelle', 'Cleugh', 18, 'Female', '71102 Blackbird Avenue', '528-941-2724', 5, 'P-N', 1, 1),
(27, 'Shep', 'MacCaffrey', 25, 'Male', '4391 Randy Park', '196-232-2134', 28, 'C-N', 10, 2),
(28, 'Opaline', 'Scare', 24, 'Female', '9 Westerfield Point', '163-596-7291', 47, 'O-N', 2, 3),
(29, 'Clement', 'Javes', 24, 'Male', '91175 Maryland Drive', '536-663-9243', 29, 'C-N', 15, 2),
(30, 'Westbrook', 'Baudon', 18, 'Genderflui', '2303 Melrose Way', '958-603-1537', 30, 'C-N', 3, 2),
(31, 'Binni', 'Thirlaway', 21, 'Female', '61797 Manitowish Hill', '248-249-0456', 6, 'P-N', 7, 1),
(32, 'Harp', 'Beattie', 20, 'Male', '1329 Mcguire Pass', '869-312-0426', 31, 'C-MTN', 2, 2),
(33, 'Dorrie', 'Boal', 24, 'Female', '099 Sutherland Crossing', '220-440-3708', 48, 'O-N', 1, 3),
(34, 'Anallise', 'Waugh', 18, 'Female', '29743 Morrow Trail', '461-508-2279', 7, 'P-N', 1, 1),
(35, 'Hildy', 'Ouldcott', 18, 'Female', '1 Leroy Alley', '901-620-7293', 49, 'O-N', 7, 3),
(36, 'Morgan', 'Wainman', 19, 'Male', '615 Clarendon Circle', '862-330-6508', 50, 'O-MTN', 3, 3),
(37, 'Mair', 'Woodeson', 18, 'Female', '799 Dawn Drive', '560-956-4136', 65, 'U-N', 2, 4),
(38, 'Boniface', 'Chidlow', 19, 'Male', '33940 Monument Pass', '113-684-8894', 66, 'U-N', 4, 4),
(39, 'Ronalda', 'Mityushkin', 21, 'Female', '1 Little Fleur Point', '820-145-3128', 51, 'O-MTN', 5, 3),
(40, 'Danell', 'Curston', 22, 'Female', '35394 Reindahl Lane', '415-313-8082', 8, 'P-MTN', 6, 1),
(41, 'Jervis', 'Copo', 22, 'Male', '0 Stuart Avenue', '209-287-4828', 52, 'O-MTN', 8, 3),
(42, 'Garwin', 'Gepp', 21, 'Male', '6173 Bashford Street', '985-910-7873', 67, 'U-N', 11, 4),
(43, 'Vittoria', 'Alflat', 25, 'Female', '886 Continental Road', '467-864-3382', 85, 'ENT-N', 5, 5),
(44, 'Sean', 'Jeremaes', 25, 'Female', '2374 Orin Park', '968-703-2807', 53, 'O-STN', 7, 3),
(45, 'Tammie', 'Geldart', 18, 'Female', '81496 Gale Point', '502-988-1009', 54, 'O-STN', 5, 3),
(46, 'Toiboid', 'Gerbel', 19, 'Male', '3 Manufacturers Circle', '510-818-6407', 32, 'C-MTN', 7, 2),
(47, 'Nev', 'McIlwrick', 25, 'Male', '4928 Kings Court', '981-772-6933', 86, 'ENT-N', 13, 5),
(48, 'Wayland', 'Jeal', 18, 'Male', '73 Mandrake Terrace', '682-751-4800', 87, 'ENT-N', 6, 5),
(49, 'Bobbie', 'Wyldbore', 20, 'Female', '3093 Thackeray Plaza', '492-244-4080', 33, 'C-STN', 4, 2),
(50, 'Cilka', 'Lissimore', 20, 'Female', '19 Stone Corner Drive', '856-883-2422', 34, 'C-STN', 10, 2),
(51, 'Desiree', 'Bosley', 24, 'Female', '05 Westerfield Lane', '578-450-0452', 55, 'O-STN', 6, 3),
(52, 'Perri', 'Champney', 19, 'Female', '85 International Place', '313-163-2378', 35, 'C-STN', 7, 2),
(53, 'Fritz', 'Slatter', 23, 'Male', '937 Shelley Alley', '623-384-4711', 36, 'C-MTN', 6, 2),
(54, 'Cordelie', 'Pettiford', 22, 'Female', '50 Waywood Crossing', '242-505-7702', 56, 'O-STN', 6, 3),
(55, 'Richart', 'Malan', 22, 'Male', '42797 Pawling Center', '417-998-8774', 68, 'U-MTN', 13, 4),
(56, 'Chrissy', 'Parsonson', 25, 'Male', '34510 Meadow Valley Trail', '415-128-2323', 57, 'O-NR', 12, 3),
(57, 'Constantine', 'O\'Hartagan', 23, 'Female', '3 Artisan Trail', '279-830-0584', 88, 'ENT-MTN', 15, 5),
(58, 'Vivian', 'Croote', 21, 'Female', '87163 Monterey Park', '180-559-5771', 69, 'U-MTN', 4, 4),
(59, 'Jone', 'Rylance', 18, 'Male', '304 Eagan Court', '598-203-1553', 37, 'C-STN', 1, 2),
(60, 'Bone', 'Calderbank', 21, 'Male', '86 Tony Way', '408-531-7870', 89, 'ENT-MTN', 14, 5),
(61, 'Catharina', 'Corrao', 22, 'Female', '53114 Pierstorff Park', '920-551-4864', 90, 'ENT-MTN', 9, 5),
(62, 'Myrtle', 'Stamps', 23, 'Female', '56 Michigan Road', '135-954-8805', 38, 'C-NR', 4, 2),
(63, 'Griff', 'Sturton', 19, 'Male', '087 Straubel Court', '221-703-4063', 39, 'C-NR', 14, 2),
(64, 'Nowell', 'Jeannet', 25, 'Male', '70235 Utah Avenue', '303-922-4905', 70, 'U-MTN', 8, 4),
(65, 'Felix', 'Ellsom', 25, 'Male', '39527 Anzinger Center', '888-394-8319', 91, 'ENT-MTN', 1, 5),
(66, 'Engelbert', 'Secrett', 18, 'Male', '11 Shelley Place', '725-104-5541', 9, 'P-MTN', 5, 1),
(67, 'Elvis', 'Limbourne', 21, 'Genderflui', '3002 Golf View Street', '933-822-3803', 92, 'ENT-STN', 13, 5),
(68, 'Cal', 'Vile', 23, 'Female', '766 Thompson Road', '896-353-2882', 71, 'U-STN', 9, 4),
(69, 'Kendal', 'Kinder', 24, 'Male', '38901 Hollow Ridge Place', '855-209-9971', 93, 'ENT-STN', 15, 5),
(70, 'Corri', 'Klawi', 18, 'Female', '0241 Florence Circle', '673-640-1558', 72, 'U-NR', 2, 4),
(71, 'Annaliese', 'Sargerson', 18, 'Female', '6194 South Way', '154-668-1914', 94, 'ENT-NR', 1, 5),
(72, 'Billie', 'ducarme', 21, 'Male', '73 Hooker Hill', '723-282-0131', 10, 'P-STN', 14, 1),
(73, 'Camilla', 'Allgood', 21, 'Female', '9 Rieder Street', '526-111-5760', 11, 'P-STN', 4, 1),
(74, 'Dom', 'Bonnier', 21, 'Male', '350 Valley Edge Park', '743-562-9807', 12, 'P-NR', 3, 1),
(75, 'Yetty', 'Slemmonds', 19, 'Female', '12213 Melby Drive', '757-640-1833', 58, 'O-NR', 1, 3),
(76, 'Karly', 'Topping', 18, 'Female', '7 Larry Hill', '565-342-0292', 73, 'U-NR', 10, 4),
(77, 'Jefferson', 'Lesper', 19, 'Male', '8 Anzinger Pass', '878-250-6415', 74, 'O-NR', 2, 3),
(78, 'Hershel', 'Scritch', 23, 'Male', '827 Ronald Regan Pass', '233-459-3765', 95, 'ENT-NR', 15, 5),
(79, 'Eadie', 'Barter', 21, 'Female', '05 Main Place', '964-553-4268', 40, 'C-NR', 5, 2),
(80, 'Licha', 'Chedgey', 18, 'Female', '3087 Shelley Pass', '717-821-9082', 13, 'P-STN', 4, 1),
(81, 'Maddi', 'Cracker', 24, 'Female', '91 Wayridge Alley', '291-605-8690', 14, 'P-N', 11, 1),
(82, 'Tuck', 'Robard', 20, 'Male', '56 Grasskamp Avenue', '883-905-9484', 96, 'ENT-STN', 2, 5),
(83, 'Hermy', 'Flahy', 19, 'Male', '32551 Claremont Drive', '239-287-7212', 15, 'P-NR', 1, 1),
(84, 'Corena', 'Stoak', 22, 'Female', '6 Cody Terrace', '303-689-3312', 16, 'P-NR', 13, 1),
(85, 'Dena', 'Howe', 19, 'Female', '058 Boyd Circle', '877-682-6468', 75, 'U-NR', 4, 4),
(86, 'Kaine', 'Summersett', 23, 'Genderflui', '02594 Hoffman Hill', '480-517-0710', 59, 'O-NR', 5, 3),
(87, 'Neville', 'Dowdam', 24, 'Genderflui', '100 Carioca Point', '584-862-8503', 60, 'O-MTN', 5, 3),
(88, 'Tadeas', 'Avarne', 19, 'Male', '83724 Darwin Center', '782-970-0608', 76, 'U-N', 15, 4),
(89, 'Alvin', 'Enterlein', 25, 'Male', '327 Farmco Road', '267-140-0232', 17, 'P-N', 13, 1),
(90, 'Rayshell', 'Marquis', 24, 'Non-binary', '62 Spaight Avenue', '260-619-9068', 18, 'P-STN', 8, 1),
(91, 'Phyllis', 'Grimshaw', 21, 'Female', '69 Dovetail Way', '149-846-3719', 77, 'U-MTN', 14, 4),
(92, 'Donavon', 'Sterndale', 19, 'Male', '339 Sugar Lane', '403-631-0295', 19, 'P-MTN', 12, 1),
(93, 'Paxon', 'Axelbee', 19, 'Male', '36 Aberg Avenue', '294-701-1603', 20, 'P-MTN', 11, 1),
(94, 'Richart', 'McCroft', 21, 'Male', '39244 Duke Lane', '790-101-1427', 97, 'ENT-STN', 4, 5),
(95, 'Ali', 'Bredee', 25, 'Female', '7482 Cascade Park', '259-859-4938', 98, 'ENT-STN', 11, 5),
(96, 'Luis', 'Risebarer', 18, 'Male', '4460 Boyd Road', '138-738-2664', 78, 'U-STN', 2, 4),
(97, 'Beniamino', 'Stoller', 22, 'Male', '02 Victoria Alley', '624-594-3031', 79, 'U-NR', 15, 4),
(98, 'Jamill', 'Hammett', 18, 'Male', '49 Summer Ridge Terrace', '104-863-3329', 99, 'ENT-NR', 3, 5),
(99, 'Lucinda', 'Menham', 20, 'Female', '4750 Union Circle', '214-418-6805', 100, 'ENT-NR', 11, 5),
(100, 'Marcello', 'Unthank', 20, 'Male', '2 Springview Street', '662-689-6933', 80, 'U-NR', 12, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `operation`
--

CREATE TABLE `operation` (
  `Date` date NOT NULL,
  `Diagnos_ID` int(10) UNSIGNED DEFAULT NULL,
  `Operation_Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `operation`
--

INSERT INTO `operation` (`Date`, `Diagnos_ID`, `Operation_Name`) VALUES
('2022-12-13', 7, 'Insertion of Cardiac Lead into Coronary Vein, Percutaneous Endoscopic Approach'),
('2022-12-17', 40, 'Drainage of Left Lower Extremity Lymphatic, Open Approach'),
('2022-12-15', 20, 'Drainage of Right Tympanic Membrane, Open Approach'),
('2022-12-15', 27, 'Motor Speech Treatment'),
('2022-12-14', 74, 'Insertion of Infusion Device into Cervicothoracic Vertebral Joint, Percutaneous Approach'),
('2022-12-07', 44, 'Drainage of Thoracolumbar Vertebral Disc, Percutaneous Endoscopic Approach'),
('2022-12-12', 71, 'Replacement of Left Axillary Vein with Nonautologous Tissue Substitute, Open Approach'),
('2022-12-09', 51, 'Bypass Right Hepatic Duct to Left Hepatic Duct, Open Approach'),
('2022-12-12', 88, 'Tomographic (Tomo) Nuclear Medicine Imaging of Chest and Neck using Thallium 201 (Tl-201)'),
('2022-12-16', 23, 'Revision of Nonautologous Tissue Substitute in Thoracolumbar Vertebral Disc, External Approach');

-- --------------------------------------------------------

--
-- Структура таблицы `outpatient`
--

CREATE TABLE `outpatient` (
  `Date_of_arrived` date NOT NULL,
  `Patient_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `outpatient`
--

INSERT INTO `outpatient` (`Date_of_arrived`, `Patient_ID`) VALUES
('2022-12-20', 4),
('2022-12-09', 8),
('2022-12-19', 9),
('2022-12-03', 13),
('2022-12-10', 14),
('2022-12-03', 19),
('2022-12-18', 23),
('2022-12-21', 26),
('2022-12-18', 29),
('2022-12-07', 31),
('2022-12-04', 34),
('2022-12-19', 36),
('2022-12-04', 39),
('2022-12-16', 42),
('2022-12-06', 46),
('2022-12-14', 53),
('2022-12-06', 56),
('2022-12-16', 58),
('2022-12-17', 59),
('2022-12-03', 61),
('2022-12-03', 63),
('2022-12-03', 67),
('2022-12-13', 70),
('2022-12-10', 72),
('2022-12-07', 73),
('2022-12-02', 75),
('2022-12-14', 77),
('2022-12-04', 78),
('2022-12-10', 79),
('2022-12-11', 81),
('2022-12-08', 82),
('2022-12-14', 84),
('2022-12-19', 85),
('2022-12-10', 86),
('2022-12-18', 87),
('2022-12-06', 88),
('2022-12-20', 90),
('2022-12-16', 92),
('2022-12-03', 94),
('2022-12-16', 96),
('2022-12-08', 99);

-- --------------------------------------------------------

--
-- Структура таблицы `patients`
--

CREATE TABLE `patients` (
  `Patient_ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Surname` varchar(35) NOT NULL,
  `Age` int(10) UNSIGNED NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Home_Address` varchar(35) DEFAULT NULL,
  `Phone_Number` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `patients`
--

INSERT INTO `patients` (`Patient_ID`, `Name`, `Surname`, `Age`, `Gender`, `Home_Address`, `Phone_Number`) VALUES
(2, 'Casey', 'Danilovic', 86, 'Male', '51236 Starling Junction', '+351 (865) 824-9446'),
(3, 'Trent', 'Semple', 96, 'Male', '1566 Knutson Trail', '+33 (608) 781-0766'),
(4, 'Estel', 'Takis', 43, 'Female', '732 Duke Center', '+380 (952) 945-6038'),
(5, 'Raychel', 'Ambrogioni', 9, 'Genderflui', '243 Green Ridge Crossing', '+507 (471) 891-5012'),
(6, 'Freeland', 'Griffith', 15, 'Non-binary', '72 Caliangt Road', '+86 (867) 697-9949'),
(7, 'Babbette', 'Forrester', 40, 'Female', '8535 Brown Crossing', '+264 (848) 332-5514'),
(8, 'Calhoun', 'Hainey', 19, 'Male', '781 Susan Crossing', '+351 (655) 324-7939'),
(9, 'Vonni', 'Bartul', 33, 'Female', '5060 Mallard Way', '+7 (497) 652-7354'),
(11, 'Woodrow', 'Heaslip', 71, 'Male', '803 Clarendon Hill', '+86 (553) 201-9673'),
(12, 'Bourke', 'Mathivon', 70, 'Male', '3 Reindahl Place', '+63 (721) 686-1184'),
(13, 'Silvio', 'Clubley', 14, 'Male', '0 Dakota Alley', '+57 (170) 969-4021'),
(14, 'Andriana', 'Duggon', 6, 'Female', '5624 Carpenter Plaza', '+63 (232) 331-0055'),
(15, 'Ced', 'Vallentine', 88, 'Male', '2 Jackson Alley', '+54 (906) 328-2096'),
(16, 'Dolores', 'Northcote', 52, 'Female', '2277 Fallview Court', '+62 (508) 695-1333'),
(17, 'Enrika', 'Tabb', 60, 'Female', '39 Michigan Circle', '+62 (150) 721-0581'),
(18, 'Trumaine', 'Well', 14, 'Male', '828 Village Way', '+212 (840) 256-8606'),
(19, 'Conrad', 'Brockton', 58, 'Male', '95360 Union Drive', '+57 (922) 373-6072'),
(20, 'Serge', 'Buie', 10, 'Male', '59195 Menomonie Terrace', '+380 (404) 877-3647'),
(21, 'Wrennie', 'Fellows', 31, 'Female', '7 Vernon Terrace', '+380 (190) 728-1931'),
(22, 'Dallon', 'Stuck', 92, 'Male', '360 Jackson Drive', '+86 (926) 935-9267'),
(23, 'Tanner', 'Stihl', 45, 'Male', '193 Manufacturers Lane', '+7 (845) 706-0880'),
(24, 'Isadore', 'Kershow', 34, 'Male', '5539 Merrick Way', '+358 (679) 242-5847'),
(25, 'Sydel', 'McNaughton', 5, 'Female', '1009 Banding Trail', '+351 (342) 994-8577'),
(26, 'Allix', 'Ellyatt', 95, 'Female', '9 Stone Corner Place', '+7 (676) 247-6310'),
(27, 'Zed', 'Domney', 7, 'Male', '68 Spenser Drive', '+36 (919) 203-0169'),
(28, 'Drucill', 'Eger', 96, 'Female', '88857 Gerald Terrace', '+86 (340) 239-1033'),
(29, 'Saw', 'Memory', 40, 'Male', '14183 Basil Street', '+60 (802) 608-7375'),
(30, 'Willi', 'Saye', 61, 'Male', '060 Ronald Regan Alley', '+506 (381) 931-6287'),
(31, 'Hadley', 'Condie', 13, 'Male', '332 Eliot Circle', '+86 (974) 742-1724'),
(32, 'Fabe', 'Feilden', 77, 'Male', '1 Glendale Point', '+86 (405) 538-8500'),
(33, 'Geraldine', 'Redshaw', 33, 'Female', '4 Cardinal Pass', '+260 (474) 431-9217'),
(34, 'Heath', 'Iffland', 65, 'Male', '3372 Dakota Avenue', '+33 (410) 450-5204'),
(35, 'Farlee', 'Carnegy', 87, 'Male', '8 Fuller Court', '+1 (937) 361-9439'),
(36, 'Caril', 'Arlett', 74, 'Female', '561 Johnson Way', '+261 (787) 170-7757'),
(37, 'Milena', 'Abele', 81, 'Female', '3 Glacier Hill Center', '+420 (930) 290-7571'),
(38, 'Whitby', 'Faichnie', 74, 'Male', '55 Menomonie Street', '+62 (570) 886-8389'),
(39, 'Redford', 'Caulcutt', 20, 'Male', '94 Farwell Avenue', '+55 (830) 739-6645'),
(40, 'Jami', 'Sleford', 65, 'Female', '1375 Hayes Park', '+86 (199) 300-4557'),
(41, 'Brigid', 'McCann', 88, 'Female', '219 Roth Center', '+1 (713) 277-6062'),
(42, 'Peta', 'Gaveltone', 99, 'Female', '349 Moulton Parkway', '+976 (777) 339-5234'),
(43, 'Elliot', 'Diamond', 90, 'Male', '0 Brentwood Hill', '+358 (777) 416-9476'),
(44, 'Gusti', 'Whipp', 66, 'Non-binary', '506 High Crossing Center', '+48 (131) 902-2700'),
(45, 'Welbie', 'Bush', 89, 'Male', '5993 Dakota Street', '+51 (973) 761-8052'),
(46, 'Candace', 'Brand', 41, 'Female', '99 Express Alley', '+56 (781) 706-3614'),
(47, 'Huberto', 'Pumphrey', 37, 'Male', '33807 Katie Court', '+86 (388) 315-5245'),
(48, 'Merell', 'Snartt', 49, 'Male', '7 Village Green Road', '+47 (568) 781-3655'),
(49, 'Iris', 'Cahani', 18, 'Female', '04 Meadow Ridge Crossing', '+86 (845) 281-0352'),
(50, 'Elnore', 'Lissemore', 80, 'Female', '1337 Summit Center', '+63 (972) 504-8712'),
(51, 'Winnie', 'Kermath', 34, 'Male', '1843 Manitowish Trail', '+1 (602) 213-6269'),
(52, 'Jone', 'Faulds', 12, 'Male', '401 Pierstorff Junction', '+971 (198) 551-5055'),
(53, 'Andreas', 'McLennan', 88, 'Male', '13067 Welch Drive', '+351 (773) 255-7202'),
(54, 'Monti', 'Pollicatt', 28, 'Male', '0480 Emmet Center', '+48 (331) 941-5858'),
(55, 'Sheryl', 'Burnsides', 39, 'Female', '603 Debs Parkway', '+62 (748) 686-8300'),
(56, 'Brannon', 'Egel', 72, 'Male', '7 Northwestern Trail', '+51 (383) 830-0902'),
(57, 'Gaston', 'Baird', 90, 'Male', '80 Victoria Point', '+7 (298) 420-1877'),
(58, 'Isiahi', 'Landsborough', 11, 'Male', '290 Burrows Road', '+61 (210) 285-1904'),
(59, 'Olly', 'Semaine', 63, 'Agender', '4 Butternut Road', '+353 (481) 733-8227'),
(60, 'Rollo', 'Camerello', 53, 'Male', '003 Lawn Hill', '+33 (593) 789-5863'),
(61, 'Nicki', 'Abrahamsson', 28, 'Female', '94930 Miller Lane', '+507 (728) 424-9497'),
(62, 'Manuel', 'De Caroli', 59, 'Male', '9580 1st Crossing', '+63 (730) 957-0315'),
(63, 'Huey', 'Kloisner', 98, 'Male', '1173 Ridge Oak Road', '+86 (279) 867-3719'),
(64, 'Bryan', 'Byford', 9, 'Male', '39 Ramsey Way', '+7 (246) 919-2051'),
(65, 'Orbadiah', 'Simukov', 64, 'Male', '74 Maryland Pass', '+86 (320) 716-4053'),
(66, 'Riley', 'Mabbot', 44, 'Male', '044 Dexter Junction', '+86 (858) 603-2610'),
(67, 'Kenon', 'Kaes', 37, 'Male', '6 Pankratz Trail', '+86 (477) 391-4054'),
(68, 'Konrad', 'Rubinovitch', 99, 'Male', '797 Daystar Place', '+52 (892) 476-2857'),
(69, 'Sande', 'Storre', 75, 'Female', '29 Summerview Terrace', '+234 (935) 738-1155'),
(70, 'Dierdre', 'O\'Duane', 57, 'Female', '5 Tony Plaza', '+63 (980) 161-5419'),
(71, 'Rasia', 'Weippert', 20, 'Female', '64 Fairview Road', '+261 (399) 460-2382'),
(72, 'Tucker', 'Isaksen', 58, 'Male', '079 Mandrake Trail', '+46 (987) 855-8496'),
(73, 'Karl', 'Greenrodd', 11, 'Male', '95 Banding Alley', '+62 (448) 577-4447'),
(74, 'Susy', 'Hindrich', 27, 'Genderquee', '6 Briar Crest Circle', '+48 (928) 180-0264'),
(75, 'Wynnie', 'Steadman', 62, 'Female', '39 Green Court', '+86 (615) 790-3088'),
(76, 'Rodina', 'Ovanesian', 7, 'Female', '3875 Kinsman Way', '+55 (640) 846-2253'),
(77, 'Chase', 'Mynett', 77, 'Male', '40469 Harper Drive', '+242 (694) 431-2618'),
(78, 'Philipa', 'Juza', 44, 'Agender', '77015 Waubesa Park', '+58 (886) 175-1751'),
(79, 'Carolynn', 'Damsell', 16, 'Female', '2 Bartillon Junction', '+46 (873) 931-1982'),
(80, 'Ardyce', 'Garrett', 95, 'Female', '930 Mcguire Terrace', '+62 (181) 441-2353'),
(81, 'Brandy', 'Cleminshaw', 42, 'Polygender', '7 Corry Center', '+66 (641) 733-2422'),
(82, 'Duane', 'Claisse', 77, 'Agender', '0570 Maywood Lane', '+48 (475) 376-0888'),
(83, 'Mel', 'Caro', 76, 'Male', '8717 Quincy Point', '+86 (487) 634-1554'),
(84, 'Rollie', 'Carwithan', 100, 'Male', '4513 Lakewood Alley', '+86 (154) 473-9261'),
(85, 'Lucy', 'Berka', 91, 'Female', '1710 Melrose Court', '+66 (898) 569-9664'),
(86, 'Nell', 'Brickett', 74, 'Female', '26995 Main Way', '+62 (565) 864-6718'),
(87, 'Ermengarde', 'Copestick', 88, 'Female', '3 Talmadge Alley', '+62 (874) 482-5709'),
(88, 'Granny', 'Gelsthorpe', 9, 'Male', '00 Waubesa Alley', '+377 (165) 537-2016'),
(89, 'Justine', 'Booley', 39, 'Non-binary', '666 Melrose Junction', '+63 (387) 416-5508'),
(90, 'Alonso', 'Conlon', 87, 'Male', '863 Brown Circle', '+244 (908) 949-2252'),
(91, 'Jackie', 'Vischi', 67, 'Female', '38415 Coolidge Place', '+33 (931) 824-2253'),
(92, 'Nicole', 'Snaden', 51, 'Female', '1517 Atwood Drive', '+81 (598) 611-8075'),
(93, 'Frederica', 'Gawne', 91, 'Female', '6 Pawling Road', '+54 (357) 226-5685'),
(94, 'Simeon', 'Foss', 18, 'Male', '71 Rowland Terrace', '+7 (308) 961-0990'),
(95, 'Gloriana', 'Niles', 7, 'Female', '959 Esker Crossing', '+7 (239) 618-6660'),
(96, 'Seline', 'Filinkov', 27, 'Female', '68017 Del Mar Alley', '+86 (224) 763-3846'),
(97, 'Hillyer', 'Zuann', 59, 'Male', '16 Sage Circle', '+86 (955) 361-6300'),
(98, 'Amye', 'Alliott', 83, 'Female', '31 Montana Point', '+505 (173) 711-1072'),
(99, 'Stefa', 'Eusden', 61, 'Female', '60 Toban Point', '+86 (101) 638-6143'),
(100, 'Robin', 'Kermath', 10, 'Male', '02 Melvin Point', '+86 (826) 922-8106'),
(150, 'Alex', 'Freg', 18, 'Male', 'wetgergwer', '+351 (865) 824-9446');

--
-- Триггеры `patients`
--
DELIMITER $$
CREATE TRIGGER `patient_archive` BEFORE DELETE ON `patients` FOR EACH ROW BEGIN
  
  	
  	SET @DOC_ID := (Select doctor_ID FROM diagnos WHERE diagnos.Patient_ID = old.Patient_ID);
    SET @DAG_ID := (Select diagnos_ID FROM diagnos WHERE diagnos.Patient_ID = old.Patient_ID);
    set @idx := (SELECT MAX(archive_ID) FROM archive);
    
    INSERT INTO archive VALUES(COALESCE(@idx, 0)+1, old.patient_id, old.name, old.surname, old.age, old.gender, old.home_address, old.phone_number, COALESCE(@DOC_ID, 0), COALESCE(@DAG_ID, 0));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `qualified_nurse`
--

CREATE TABLE `qualified_nurse` (
  `Rank` int(10) UNSIGNED NOT NULL,
  `Nurse_ID` int(10) UNSIGNED DEFAULT NULL,
  `Certification` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `qualified_nurse`
--

INSERT INTO `qualified_nurse` (`Rank`, `Nurse_ID`, `Certification`) VALUES
(0, 20, 1),
(0, 1, 0),
(0, 2, 1),
(0, 3, 1),
(0, 4, 0),
(0, 5, 1),
(0, 12, 0),
(0, 13, 1),
(0, 24, 0),
(0, 25, 1),
(0, 26, 1),
(0, 27, 0),
(0, 28, 0),
(0, 29, 0),
(0, 30, 1),
(0, 31, 1),
(0, 33, 1),
(0, 34, 0),
(0, 35, 1),
(0, 37, 0),
(0, 38, 1),
(0, 42, 0),
(0, 43, 1),
(0, 47, 0),
(0, 48, 0),
(0, 81, 1),
(0, 88, 0),
(0, 89, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `Room_ID` int(10) UNSIGNED NOT NULL,
  `Number_of_beds` int(10) UNSIGNED NOT NULL,
  `Ward_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`Room_ID`, `Number_of_beds`, `Ward_ID`) VALUES
(1, 6, 1),
(2, 4, 1),
(3, 5, 1),
(4, 5, 1),
(5, 5, 1),
(6, 6, 1),
(7, 6, 1),
(8, 5, 1),
(9, 4, 1),
(10, 6, 1),
(11, 5, 1),
(12, 6, 1),
(13, 5, 1),
(14, 4, 1),
(15, 4, 1),
(16, 4, 1),
(17, 6, 1),
(18, 5, 1),
(19, 6, 1),
(20, 5, 1),
(21, 5, 2),
(22, 5, 2),
(23, 4, 2),
(24, 6, 2),
(25, 5, 2),
(26, 4, 2),
(27, 5, 2),
(28, 6, 2),
(29, 6, 2),
(30, 4, 2),
(31, 4, 2),
(32, 5, 2),
(33, 5, 2),
(34, 5, 2),
(35, 4, 2),
(36, 5, 2),
(37, 5, 2),
(38, 4, 2),
(39, 5, 2),
(40, 5, 2),
(41, 4, 3),
(42, 4, 3),
(43, 6, 3),
(44, 5, 3),
(45, 6, 3),
(46, 4, 3),
(47, 6, 3),
(48, 5, 3),
(49, 6, 3),
(50, 6, 3),
(51, 4, 3),
(52, 5, 3),
(53, 5, 3),
(54, 5, 3),
(55, 6, 3),
(56, 6, 3),
(57, 6, 3),
(58, 5, 3),
(59, 5, 3),
(60, 6, 3),
(61, 6, 4),
(62, 5, 4),
(63, 5, 4),
(64, 4, 4),
(65, 5, 4),
(66, 5, 4),
(67, 5, 4),
(68, 5, 4),
(69, 4, 4),
(70, 5, 4),
(71, 4, 4),
(72, 4, 4),
(73, 6, 4),
(74, 5, 4),
(75, 6, 4),
(76, 5, 4),
(77, 4, 4),
(78, 4, 4),
(79, 6, 4),
(80, 4, 4),
(81, 6, 5),
(82, 5, 5),
(83, 6, 5),
(84, 4, 5),
(85, 4, 5),
(86, 5, 5),
(87, 4, 5),
(88, 5, 5),
(89, 5, 5),
(90, 6, 5),
(91, 6, 5),
(92, 6, 5),
(93, 6, 5),
(94, 6, 5),
(95, 4, 5),
(96, 4, 5),
(97, 6, 5),
(98, 4, 5),
(99, 5, 5),
(100, 4, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `shedule`
--

CREATE TABLE `shedule` (
  `Shedule_ID` int(10) UNSIGNED NOT NULL,
  `Day` varchar(150) NOT NULL,
  `Time_Start` time NOT NULL,
  `Time_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shedule`
--

INSERT INTO `shedule` (`Shedule_ID`, `Day`, `Time_Start`, `Time_end`) VALUES
(1, 'Mo , We , Fr', '08:00:00', '16:00:00'),
(2, 'Mo , We , Fr', '09:00:00', '17:00:00'),
(3, 'Mo , We , Fr', '10:00:00', '18:00:00'),
(4, 'Mo , We , Fr', '18:00:00', '01:00:00'),
(5, 'Mo , We , Fr', '01:00:00', '08:00:00'),
(6, 'Tu , Th , Sa', '08:00:00', '16:00:00'),
(7, 'Tu , Th , Sa', '09:00:00', '17:00:00'),
(8, 'Tu , Th , Sa', '10:00:00', '18:00:00'),
(9, 'Tu , Th , Sa', '18:00:00', '01:00:00'),
(10, 'Tu , Th , Sa', '01:00:00', '08:00:00'),
(11, 'Mo , Tu , Sa', '08:00:00', '16:00:00'),
(12, 'Mo , Tu , Sa', '09:00:00', '17:00:00'),
(13, 'Mo , Tu , Sa', '10:00:00', '18:00:00'),
(14, 'We , Th , Fr', '08:00:00', '16:00:00'),
(15, 'We , Th , Fr', '09:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `student_nurse`
--

CREATE TABLE `student_nurse` (
  `Year_of_study` int(10) UNSIGNED NOT NULL,
  `Year_of_graduate` int(10) UNSIGNED NOT NULL,
  `University_name` varchar(150) NOT NULL,
  `Nurse_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `student_nurse`
--

INSERT INTO `student_nurse` (`Year_of_study`, `Year_of_graduate`, `University_name`, `Nurse_ID`) VALUES
(4, 2025, 'Universidade Vale do Rio dos Sinos', 8),
(4, 2026, 'Medizinische Universität Wien', 16),
(4, 2026, 'Akdeniz University', 17),
(7, 2023, 'New World University', 44),
(7, 2025, 'Fachhochschule St. Gallen', 45),
(4, 2023, 'Pusan University of Foreign Studies', 49),
(7, 2026, 'Batterjee Medical College', 50),
(5, 2024, 'Fomic Polytechnic', 51),
(5, 2024, 'Alverno College', 52),
(4, 2024, 'University of West Los Angeles', 54),
(7, 2025, 'Hanoi University of Science & Technology', 59),
(7, 2022, 'Berean University of the Assemblies of God', 67),
(5, 2024, 'American University of Kuwait ', 68),
(6, 2022, 'Zhejiang Sci-Tech University ', 69),
(4, 2024, 'Moscow P. I. Tchaikovsky Conservatory', 72),
(4, 2025, 'Sakarya University', 73),
(5, 2024, 'Fachhochschule Hof', 80),
(7, 2022, 'Trinity Christian College', 82),
(4, 2022, 'Kirkwood Community College', 90),
(7, 2026, 'Korea National University of Education', 94),
(5, 2023, 'Ulaanbaatar University', 95),
(5, 2023, 'Joetsu University of Education', 96);

-- --------------------------------------------------------

--
-- Структура таблицы `treatment`
--

CREATE TABLE `treatment` (
  `Treatment_ID` int(10) UNSIGNED NOT NULL,
  `Diagnos_ID` int(10) UNSIGNED DEFAULT NULL,
  `Drugs_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `treatment`
--

INSERT INTO `treatment` (`Treatment_ID`, `Diagnos_ID`, `Drugs_name`) VALUES
(1, 28, 'ACEPHEN'),
(3, 10, 'BOTRYTIS CINEREA'),
(4, 25, 'CAREALL Vitamin A and D'),
(5, 20, 'Asthma Rescue - Cough'),
(6, 30, 'BareMinerals Multi-Tasking SPF 20 Concealer'),
(7, 22, 'BLATELLA GERMANICA'),
(8, 11, 'Cefadroxil'),
(9, 33, 'ciprofloxacin'),
(10, 3, 'ciprofloxacin'),
(11, 8, 'Cefadroxil'),
(12, 49, 'BLATELLA GERMANICA'),
(13, 24, 'Corn Grass'),
(14, 2, 'DEBROX'),
(15, 16, 'Dentaforce'),
(16, 15, 'BLATELLA GERMANICA'),
(17, 44, 'DEBROX'),
(18, 23, 'ciprofloxacin'),
(19, 26, 'BareMinerals Multi-Tasking SPF 20 Concealer'),
(20, 5, 'Doxycycline Hyclate'),
(21, 27, 'Dentaforce'),
(22, 7, 'Corn Grass'),
(23, 18, 'BareMinerals Multi-Tasking SPF 20 Concealer'),
(24, 13, 'Cephalexin'),
(25, 4, 'Doxycycline Hyclate'),
(26, 19, 'ciprofloxacin'),
(27, 21, 'Cefadroxil'),
(28, 1, 'ciprofloxacin'),
(29, 34, 'Benzonatate'),
(30, 6, 'Galantamine Hydrobromide'),
(31, 37, 'Benzonatate'),
(32, 39, 'Benzonatate'),
(33, 9, 'Asthma Rescue - Cough'),
(34, 29, 'ERAXIS'),
(35, 46, 'Corn Grass'),
(36, 41, 'Albuminuriaforce'),
(37, 31, 'Alprazolam'),
(38, 43, 'Galantamine Hydrobromide'),
(39, 32, 'Corn Grass'),
(40, 45, 'Benzonatate'),
(41, 36, 'Lidocaine'),
(42, 50, 'LBEL'),
(43, 38, 'Instant Hand Sanitizer Lemon Drop'),
(44, 17, 'ERAXIS'),
(45, 40, 'Doxycycline Hyclate'),
(46, 35, 'BareMinerals Multi-Tasking SPF 20 Concealer'),
(47, 48, 'hydrocortisone'),
(48, 47, 'Doxycycline Hyclate'),
(49, 12, 'Benzonatate'),
(50, 42, 'BareMinerals Multi-Tasking SPF 20 Concealer'),
(51, 88, 'ciprofloxacin'),
(52, 78, 'citroma'),
(53, 79, 'GAP favorite Lip Balm'),
(54, 99, 'SPAI-SONS'),
(55, 62, 'Garnier Fructis Antidandruff'),
(57, 83, 'Halls'),
(58, 73, 'Sterile Water'),
(59, 53, 'RANITIDINE'),
(60, 86, 'Prazosin Hydrochloride'),
(61, 96, 'Q-Tapp DM Elixir'),
(62, 89, 'POPULUS DELTOIDES POLLEN'),
(63, 93, 'Mucu'),
(64, 87, 'Mosquito'),
(65, 54, 'LITHOBID'),
(66, 68, 'Losartan Potassium and Hydrochlorothiazide'),
(67, 92, 'Lovastatin'),
(68, 51, 'hydrocortisone'),
(69, 59, 'Hydrox'),
(70, 68, 'Head and Shoulders 2in1'),
(71, 97, 'Diclofenac Sodium'),
(72, 84, 'Corn Grass'),
(73, 55, 'Clotrimazole'),
(74, 67, 'Asthma Rescue - Cough'),
(75, 85, 'acid reducer'),
(76, 100, 'Anti-Diarrheal'),
(77, 61, 'Prazosin Hydrochloride'),
(78, 90, 'POPULUS DELTOIDES POLLEN'),
(79, 94, 'Olanzapine'),
(80, 91, 'Nadolol'),
(81, 82, 'Mucus ER'),
(82, 74, 'QCare Oral Cleansing and Suctioning System, Q4'),
(83, 75, 'Zoloft'),
(84, 60, 'Olanzapine'),
(85, 71, 'G9Whg'),
(86, 98, 'Gabapentin'),
(87, 58, 'Exelon'),
(88, 95, 'ERAXIS'),
(89, 76, 'Equaline hemorrhoial'),
(90, 65, 'Dynamic Skin Recovery'),
(91, 70, 'DuoDote'),
(92, 52, 'Baclofen'),
(93, 50, 'LBEL'),
(94, 38, 'Instant Hand Sanitizer Lemon Drop'),
(95, 17, 'ERAXIS'),
(96, 40, 'Doxycycline Hyclate'),
(97, 35, 'BareMinerals Multi-Tasking SPF 20 Concealer'),
(98, 48, 'hydrocortisone'),
(99, 47, 'Doxycycline Hyclate'),
(100, 12, 'Benzonatate');

-- --------------------------------------------------------

--
-- Структура таблицы `treat_normalization`
--

CREATE TABLE `treat_normalization` (
  `Doctor_ID` int(10) UNSIGNED DEFAULT NULL,
  `Patient_ID` int(10) UNSIGNED DEFAULT NULL,
  `Treatment_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `treat_normalization`
--

INSERT INTO `treat_normalization` (`Doctor_ID`, `Patient_ID`, `Treatment_ID`) VALUES
(31, 2, 5),
(38, 2, 48),
(95, 2, 99),
(68, 9, 62),
(81, 11, 15),
(22, 13, 26),
(45, 14, 38),
(62, 15, 55),
(57, 16, 24),
(33, 17, 52),
(62, 17, 45),
(8, 19, 100),
(12, 21, 67),
(16, 21, 95),
(58, 21, 6),
(67, 21, 88),
(3, 23, 70),
(42, 24, 40),
(20, 24, 35),
(10, 24, 12),
(5, 25, 97),
(44, 26, 50),
(61, 29, 41),
(6, 30, 22),
(53, 31, 51),
(45, 31, 73),
(88, 31, 59),
(83, 32, 50),
(75, 33, 74),
(70, 33, 35),
(66, 34, 9),
(99, 35, 21),
(48, 41, 39),
(98, 43, 75),
(59, 47, 36),
(99, 49, 17),
(80, 50, 17),
(52, 52, 90),
(91, 53, 13),
(30, 53, 68),
(66, 54, 83),
(65, 56, 47),
(35, 56, 38),
(37, 56, 82),
(21, 56, 54),
(91, 56, 68),
(85, 57, 78),
(27, 57, 29),
(88, 57, 3),
(9, 58, 86),
(85, 59, 48),
(88, 59, 28),
(94, 60, 30),
(54, 62, 32),
(93, 62, 49),
(62, 62, 89),
(34, 63, 60),
(5, 66, 25),
(59, 66, 33),
(91, 67, 23),
(35, 71, 92),
(44, 73, 65),
(20, 73, 71),
(46, 73, 27),
(45, 73, 87),
(7, 74, 12),
(4, 74, 61),
(2, 78, 20),
(52, 78, 91),
(49, 80, 37),
(12, 83, 7),
(22, 84, 98),
(77, 84, 76),
(97, 84, 19),
(95, 85, 94),
(98, 86, 96),
(29, 86, 8),
(31, 87, 79),
(34, 87, 42),
(13, 88, 4),
(14, 88, 16),
(81, 88, 11),
(44, 88, 10),
(77, 90, 43),
(4, 90, 31),
(73, 92, 58),
(74, 92, 53),
(1, 93, 1),
(66, 96, 34),
(46, 96, 47),
(80, 96, 72),
(69, 97, 46),
(30, 98, 14),
(62, 98, 85),
(100, 100, 93);

-- --------------------------------------------------------

--
-- Структура таблицы `wards`
--

CREATE TABLE `wards` (
  `Ward_ID` int(10) UNSIGNED NOT NULL,
  `Ward_Name` varchar(60) NOT NULL,
  `Total_of_rooms` int(11) DEFAULT 25,
  `Block` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `wards`
--

INSERT INTO `wards` (`Ward_ID`, `Ward_Name`, `Total_of_rooms`, `Block`) VALUES
(1, 'Pediatrics', 25, 'A'),
(2, 'Cardiology', 20, 'B'),
(3, 'Oncology', 25, 'C'),
(4, 'Urology', 25, 'D'),
(5, 'Ear, nose and throat', 22, 'E');

-- --------------------------------------------------------

--
-- Структура для представления `busy_rooms`
--
DROP TABLE IF EXISTS `busy_rooms`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `busy_rooms`  AS SELECT `rooms`.`Room_ID` AS `Room_ID`, `rooms`.`Ward_ID` AS `Ward_ID` FROM ((`rooms` join `inpatient`) join `wards`) WHERE `wards`.`Ward_ID` = `rooms`.`Ward_ID` AND `rooms`.`Room_ID` = `inpatient`.`Room_ID``Room_ID`  ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`Archive_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `diagnos_id` (`diagnos_id`);

--
-- Индексы таблицы `diagnos`
--
ALTER TABLE `diagnos`
  ADD PRIMARY KEY (`Diagnos_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`);

--
-- Индексы таблицы `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`Disease_Name`),
  ADD KEY `diseasename` (`Disease_Name`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Doctor_ID`),
  ADD KEY `Ward_ID` (`Ward_ID`),
  ADD KEY `Job_Type` (`Job_Type`),
  ADD KEY `Shedule_ID` (`Shedule_ID`),
  ADD KEY `doctorname` (`Doctor_ID`);

--
-- Индексы таблицы `dopa_normalization`
--
ALTER TABLE `dopa_normalization`
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Индексы таблицы `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`Drugs_name`);

--
-- Индексы таблицы `inpatient`
--
ALTER TABLE `inpatient`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`Job_Type`);

--
-- Индексы таблицы `medical_records`
--
ALTER TABLE `medical_records`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Diagnos_ID` (`Diagnos_ID`),
  ADD KEY `Disease_Name` (`Disease_Name`),
  ADD KEY `Treatment_ID` (`Treatment_ID`);

--
-- Индексы таблицы `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`Nurse_ID`),
  ADD KEY `Room_ID` (`Room_ID`),
  ADD KEY `Job_Type` (`Job_Type`),
  ADD KEY `Shedule_ID` (`Shedule_ID`),
  ADD KEY `Ward_ID` (`Ward_ID`);

--
-- Индексы таблицы `operation`
--
ALTER TABLE `operation`
  ADD KEY `Diagnos_ID` (`Diagnos_ID`);

--
-- Индексы таблицы `outpatient`
--
ALTER TABLE `outpatient`
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Индексы таблицы `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Patient_ID`),
  ADD KEY `patientname` (`Patient_ID`,`Name`,`Surname`);

--
-- Индексы таблицы `qualified_nurse`
--
ALTER TABLE `qualified_nurse`
  ADD KEY `Nurse_ID` (`Nurse_ID`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_ID`),
  ADD KEY `Ward_ID` (`Ward_ID`);

--
-- Индексы таблицы `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`Shedule_ID`);

--
-- Индексы таблицы `student_nurse`
--
ALTER TABLE `student_nurse`
  ADD KEY `Nurse_ID` (`Nurse_ID`);

--
-- Индексы таблицы `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`Treatment_ID`),
  ADD KEY `Diagnos_ID` (`Diagnos_ID`),
  ADD KEY `Drugs_name` (`Drugs_name`);

--
-- Индексы таблицы `treat_normalization`
--
ALTER TABLE `treat_normalization`
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Treatment_ID` (`Treatment_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Индексы таблицы `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`Ward_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `archive`
--
ALTER TABLE `archive`
  MODIFY `Archive_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `diagnos`
--
ALTER TABLE `diagnos`
  MODIFY `Diagnos_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `Doctor_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `nurse`
--
ALTER TABLE `nurse`
  MODIFY `Nurse_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `patients`
--
ALTER TABLE `patients`
  MODIFY `Patient_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `Room_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `shedule`
--
ALTER TABLE `shedule`
  MODIFY `Shedule_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `treatment`
--
ALTER TABLE `treatment`
  MODIFY `Treatment_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `wards`
--
ALTER TABLE `wards`
  MODIFY `Ward_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `diagnos`
--
ALTER TABLE `diagnos`
  ADD CONSTRAINT `diagnos_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `diagnos_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`Ward_ID`) REFERENCES `wards` (`Ward_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`Job_Type`) REFERENCES `jobs` (`Job_Type`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctors_ibfk_3` FOREIGN KEY (`Shedule_ID`) REFERENCES `shedule` (`Shedule_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `dopa_normalization`
--
ALTER TABLE `dopa_normalization`
  ADD CONSTRAINT `dopa_normalization_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `dopa_normalization_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `inpatient`
--
ALTER TABLE `inpatient`
  ADD CONSTRAINT `inpatient_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `inpatient_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`Room_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `inpatient_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `inpatient_ibfk_4` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`Room_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `inpatient_ibfk_5` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `inpatient_ibfk_6` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`Room_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_3` FOREIGN KEY (`Diagnos_ID`) REFERENCES `diagnos` (`Diagnos_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_4` FOREIGN KEY (`Disease_Name`) REFERENCES `disease` (`Disease_Name`) ON DELETE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_5` FOREIGN KEY (`Treatment_ID`) REFERENCES `treatment` (`Treatment_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`Room_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `nurse_ibfk_2` FOREIGN KEY (`Job_Type`) REFERENCES `jobs` (`Job_Type`) ON DELETE CASCADE,
  ADD CONSTRAINT `nurse_ibfk_3` FOREIGN KEY (`Shedule_ID`) REFERENCES `shedule` (`Shedule_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `nurse_ibfk_4` FOREIGN KEY (`Ward_ID`) REFERENCES `wards` (`Ward_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`Diagnos_ID`) REFERENCES `diagnos` (`Diagnos_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `outpatient`
--
ALTER TABLE `outpatient`
  ADD CONSTRAINT `outpatient_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `outpatient_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `outpatient_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `qualified_nurse`
--
ALTER TABLE `qualified_nurse`
  ADD CONSTRAINT `qualified_nurse_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `nurse` (`Nurse_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`Ward_ID`) REFERENCES `wards` (`Ward_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student_nurse`
--
ALTER TABLE `student_nurse`
  ADD CONSTRAINT `student_nurse_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `nurse` (`Nurse_ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`Diagnos_ID`) REFERENCES `diagnos` (`Diagnos_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`Diagnos_ID`) REFERENCES `diagnos` (`Diagnos_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `treatment_ibfk_3` FOREIGN KEY (`Diagnos_ID`) REFERENCES `diagnos` (`Diagnos_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `treatment_ibfk_4` FOREIGN KEY (`Drugs_name`) REFERENCES `drugs` (`Drugs_name`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `treat_normalization`
--
ALTER TABLE `treat_normalization`
  ADD CONSTRAINT `treat_normalization_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `treat_normalization_ibfk_2` FOREIGN KEY (`Treatment_ID`) REFERENCES `treatment` (`Treatment_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `treat_normalization_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
