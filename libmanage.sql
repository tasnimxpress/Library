-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 10:16 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `password`, `status`) VALUES
(2, 't@mail.com', 'e0f7a4d0ef9b84b83b693bbf3feb8e6e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assignment`
--

CREATE TABLE `tbl_assignment` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8_bin NOT NULL,
  `addedBy` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_assignment`
--

INSERT INTO `tbl_assignment` (`id`, `title`, `type`, `author`, `description`, `image`, `status`, `files`, `addedBy`) VALUES
(15, 'Test assignment', 'Assignment', 'Group 4', 'Assignments are the tasks given to students by their teachers and tutors to complete in a defined time. They can also be referred to as the work given to someone as a part of learning. Assignments can be in the form of written, practical, art or fieldwork or even online. Their purpose is to ensure that students understand the subject matter thoroughly.', '../uploads/971Assignment-Front-Page-Format-Word-File.png', 0, '../uploads/988web (1).pdf', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `dept` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'CSE',
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `bookid` varchar(255) COLLATE utf8_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `edition` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `publisher` varchar(255) COLLATE utf8_bin NOT NULL,
  `isbn` varchar(255) COLLATE utf8_bin NOT NULL,
  `releaseDate` date NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `addedBy` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `title`, `type`, `dept`, `author`, `bookid`, `quantity`, `edition`, `description`, `publisher`, `isbn`, `releaseDate`, `image`, `status`, `addedBy`) VALUES
(18, 'The Code Book', 'Book', 'CSE', 'Simon Singh', '1', 10, '1st', 'In his first book since the bestselling Fermat\'s Enigma, Simon Singh offers the first sweeping history of encryption, tracing its evolution and revealing the dramatic effects codes have had on wars, nations, and individual lives. From Mary, Queen of Scots, trapped by her own code, to the Navajo Code Talkers who helped the Allies win World War II, to the incredible (and incredibly simple) logisitical breakthrough that made Internet commerce secure, The Code Book tells the story of the most powerful intellectual weapon ever known: secrecy.\r\n\r\nThroughout the text are clear technical and mathematical explanations, and portraits of the remarkable personalities who wrote and broke the world\'s most difficult codes. Accessible, compelling, and remarkably far-reaching, this book will forever alter your view of history and what drives it.  It will also make you wonder how private that e-mail you just sent really is.', 'Anchor books', '0385495323', '2000-08-29', '../uploads/554The code book.jpg', 0, 'Admin'),
(19, 'Hacking: The Art of Exploitation', 'Book', 'CSE', 'Jon Erickson', '2', 10, '2nd', 'Hacking is the art of creative problem solving, whether that means finding an unconventional solution to a difficult problem or exploiting holes in sloppy programming. Many people call themselves hackers, but few have the strong technical foundation needed to really push the envelope.\r\n\r\nRather than merely showing how to run existing exploits, author Jon Erickson explains how arcane hacking techniques actually work. To share the art and science of hacking in a way that is accessible to everyone, Hacking: The Art of Exploitation, 2nd Edition introduces the fundamentals of C programming from a hacker\'s perspective.', 'No starch press', '1593271441', '2008-01-01', '../uploads/979hacking.jpg', 0, 'Admin'),
(20, 'Data Science from Scratch', 'Book', 'CSE', 'Joel Grus', '3', 10, '2nd', 'To really learn data science, you should not only master the toolsâ€”data science libraries, frameworks, modules, and toolkitsâ€”but also understand the ideas and principles underlying them. Updated for Python 3.6, this second edition of Data Science from Scratch shows you how these tools and algorithms work by implementing them from scratch.\r\n\r\nIf you have an aptitude for mathematics and some programming skills, author Joel Grus will help you get comfortable with the math and statistics at the core of data science, and with the hacking skills you need to get started as a data scientist. Packed with New material on deep learning, statistics, and natural language processing, this updated book shows you how to find the gems in todayâ€™s messy glut of data.', 'Oreilly', '1492041130', '2019-05-10', '../uploads/897data science.jpg', 0, 'Admin'),
(21, 'Atomic Habits', 'Book', 'Non-fiction', 'James Clear', '4', 10, '2nd', 'No matter your goals, Atomic Habits offers a proven framework for improving - every day. James Clear, one of the world\'s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.\r\n\r\nIf you\'re having trouble changing your habits, the problem isn\'t you. The problem is your system. Bad habits repeat themselves again and again not because you don\'t want to change, but because you have the wrong system for change. You do not rise to the level of your goals. You fall to the level of your systems. Here, you\'ll get a proven system that can take you to new heights.', 'Penguin random house', '0735211299', '2018-10-16', '../uploads/342atomic habit.jpg', 0, 'Admin'),
(22, 'The Lions of Fifth Avenue: A Novel', 'Book', 'Fiction', 'Fiona Davis', '5', 5, '1st', 'In New York Times bestselling author Fiona Davis\'s latest historical novel, a series of book thefts roils the iconic New York Public Library, leaving two generations of strong-willed women to pick up the pieces.\r\n\r\nIt\'s 1913, and on the surface, Laura Lyons couldn\'t ask for more out of lifeâ€”her husband is the superintendent of the New York Public Library, allowing their family to live in an apartment within the grand building, and they are blessed with two children. But headstrong, passionate Laura wants more, and when she takes a leap of faith and applies to the Columbia Journalism School, her world is cracked wide open. As her studies take her all over the city, she is drawn to Greenwich Village\'s new bohemia, where she discovers the Heterodoxy Clubâ€”a radical, all-female group in which women are encouraged to loudly share their opinions on suffrage, birth control, and women\'s rights. Soon, Laura finds herself questioning her traditional role as wife and mother. And when valuable books are stolen back at the library, threatening the home and institution she loves, she\'s forced to confront her shifting priorities head on . . . and may just lose everything in the process.', 'Dutton', '9781524744618', '2020-08-04', '../uploads/592lions fifth.jpg', 0, 'Admin'),
(23, 'Test book', 'Book', 'CSE', 'Tas', '12', 15, '1st', 'This book is not written yet.', 'Nim publisher', '0987654432', '2021-10-01', '../uploads/980bhoot.jpg', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_borrow`
--

CREATE TABLE `tbl_borrow` (
  `id` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userType` varchar(30) COLLATE utf8_bin NOT NULL,
  `bookName` varchar(255) COLLATE utf8_bin NOT NULL,
  `borrowDate` date NOT NULL,
  `forDays` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_borrow`
--

INSERT INTO `tbl_borrow` (`id`, `bookId`, `userId`, `userType`, `bookName`, `borrowDate`, `forDays`, `status`) VALUES
(1, 18, 6, 'Student', 'The Code Book', '2021-09-29', 0, 3),
(2, 19, 6, 'Student', 'Hacking: The Art of Exploitation', '2021-09-29', 0, 0),
(3, 22, 6, 'Teacher', 'The Lions of Fifth Avenue: A Novel', '2021-10-01', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ebook`
--

CREATE TABLE `tbl_ebook` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `edition` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `publisher` varchar(255) COLLATE utf8_bin NOT NULL,
  `isbn` varchar(255) COLLATE utf8_bin NOT NULL,
  `releaseDate` date NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8_bin NOT NULL,
  `addedBy` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_ebook`
--

INSERT INTO `tbl_ebook` (`id`, `title`, `type`, `author`, `edition`, `description`, `publisher`, `isbn`, `releaseDate`, `image`, `status`, `files`, `addedBy`) VALUES
(1, 'Artificial intelligence', 'Ebook', 'Mike adams', '1st', 'This book offers students and AI programmers a new perspective on the study of artificial intelligence concepts. The essential topics and theory of AI are presented, but it also includes practical information on data input & reduction as well as data output (i.e., algorithm usage). Because traditional AI concepts such as pattern recognition, numerical optimization and data mining are now simply types of algorithms, a different approach is needed. This “sensor / algorithm / effecter” approach grounds the algorithms with an environment, helps students and AI practitioners to better understand them, and subsequently, how to apply them. The book has numerous up to date applications in game programming, intelligent agents, neural networks, artificial immune systems, and more. A CD-ROM with simulations, code, and figures accompanies the book.', 'Jones & Bartlett Learning', '0763773379', '2021-08-10', '../uploads/692AI.jpg', 0, '../uploads/509NESCO.pdf', 'Admin'),
(10, 'Compilers Principles Techniques', 'Ebook', 'Alfred V. Aho, Monica S. Lam, Ravi Sethi, Jeffrey Ullman', '2nd', 'Compilers: Principles, Techniques and Tools, known to professors, students, and developers worldwide as the &quot;Dragon Book,&quot; is available in a new edition.  Every chapter has been completely revised to reflect developments in software engineering, programming languages, and computer architecture that have occurred since 1986, when the last edition published.  The authors, recognizing that few readers will ever go on to construct a compiler, retain their focus on the broader set of problems faced in software design and software development.', 'Addison Wesley', '0321486811', '2006-08-31', '../uploads/397Alfred-V.-Aho.jpg', 0, '../uploads/2Alfred-V.-Aho-Monica-S.-Lam-Ravi-Sethi-Jeffrey-D.-Ullman-Compilers-Principles-Techniques-and-Tools-Pearson_Addison-Wesley-2006.pdf', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_journal`
--

CREATE TABLE `tbl_journal` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_journal`
--

INSERT INTO `tbl_journal` (`id`, `title`, `type`, `author`, `description`, `image`, `status`, `files`) VALUES
(10, 'Understanding Digital Marketing', 'Journal', 'Richard-g-lyons', 'Digital marketing is the component of marketing that utilizes internet and online based digital technologies such as desktop computers, mobile phones and other digital media and platforms to promote products and services.', '../uploads/84873unnamed.jpg', 0, '../uploads/52175web (1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL,
  `fromId` int(11) NOT NULL,
  `toId` int(11) NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `parrentId` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `timeStamp` date NOT NULL,
  `seen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `fromId`, `toId`, `message`, `parrentId`, `type`, `timeStamp`, `seen`) VALUES
(22, 6, 0, 'Can you please upload Hacking: The Art of Exploitation, 2nd Edition by jon erikson?', 0, 'Student', '2021-09-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE `tbl_report` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8_bin NOT NULL,
  `addedBy` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_report`
--

INSERT INTO `tbl_report` (`id`, `title`, `type`, `author`, `description`, `image`, `status`, `files`, `addedBy`) VALUES
(16, 'World report on hearing', 'Report', 'WHO', 'A report is a document that presents information in an organized format for a specific audience and purpose. Although summaries of reports may be delivered orally, complete reports are almost always in the form of written documents.', '../uploads/79109789240020481-eng.pdf.jpg', 0, '../uploads/78497web (1).pdf', 'Admin'),
(17, 'Report on accident factors', 'Report', 'US Department of Transportation', 'A report is a document that presents information in an organized format for a specific audience and purpose. Although summaries of reports may be delivered orally, complete reports are almost always in the form of written documents.', '../uploads/408Hurt_Report_cover_page.png', 0, '../uploads/756web (1).pdf', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_search`
--

CREATE TABLE `tbl_search` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `department` varchar(255) COLLATE utf8_bin NOT NULL,
  `batch` varchar(255) COLLATE utf8_bin NOT NULL,
  `semester` varchar(255) COLLATE utf8_bin NOT NULL,
  `roll` varchar(255) COLLATE utf8_bin NOT NULL,
  `registerNo` varchar(255) COLLATE utf8_bin NOT NULL,
  `cardImage` varchar(255) COLLATE utf8_bin NOT NULL,
  `validDate` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `name`, `username`, `department`, `batch`, `semester`, `roll`, `registerNo`, `cardImage`, `validDate`, `address`, `phone`, `email`, `image`, `password`, `status`) VALUES
(6, 'Md. Israfil Hossain', 'israfil', 'CSE', '24', '8', '927', 'G/CE-2527/17', './uploads/287israfil id.jpg', '2021-10-31', 'Manikganj', '01717368308', 'israfilhossain05@gmail.com', './uploads/386israfil.jpg', 'israfil', 1),
(7, 'Puja sutradhar', 'puja', 'CSE', '24', '8', '928', 'G/CE-2528/17', './uploads/554puja id.jpg', '2021-10-30', 'Tangail', '01881768928', 'pujasutradhar2552@gmail.com', './uploads/50puja pp.jpg', 'puja', 0),
(8, 'Md. Abu Bakar', 'abubakar', 'CSE', '24', '8', '925', 'G/CE-2525/17', './uploads/766bakar id.jpg', '2021-10-30', 'Dhamrai', '01303321138', 'abubakar06925@gmail.com', './uploads/219243444028_546459556414263_5788437601888084634_n.jpg', 'bakar', 0),
(9, 'S.M. Al-Amin Uzzaman', 'alamin', 'CSE', '24', '8', '953', 'G/CE-2545/17', './uploads/130alamin.jpg', '2021-10-30', 'Manikganj', '01771590147', 'alamin67@gmail.com', './uploads/713alamin.jpg', 'alamin', 1),
(10, 'Tasnima Aktar', 'tas', 'CSE', '24', '8', '929', 'G/CE-2529/17', './uploads/732Tasnim id.jpg', '2021-10-30', 'Dhaka', '01717238089', 'tasu2323@gmail.com', './uploads/587tasnim pp.jpg', 'tas', 0),
(11, 'Kanij Fatema', 'kanij', 'CSE', '24', '8', '943', 'G/CE-2544/17', './uploads/777kanij id.jpg', '2021-10-30', 'Tangail', '01717788089', 'kanijkoli098@gmail.com', './uploads/350kanij pp.jpg', 'kanij', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `department` varchar(255) COLLATE utf8_bin NOT NULL,
  `designation` varchar(255) COLLATE utf8_bin NOT NULL,
  `cardImage` varchar(255) COLLATE utf8_bin NOT NULL,
  `validDate` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `name`, `username`, `department`, `designation`, `cardImage`, `validDate`, `address`, `phone`, `email`, `image`, `password`, `status`) VALUES
(6, 'Tania Akter', 'taniaaktar', 'CSE', 'Assistant Professor', './uploads/250tania mam.jpg', '2025-12-30', 'Dhaka', '01717238063', 'tania339cse@gmail.com', './uploads/169tania mam.jpg', 'tania', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thisis`
--

CREATE TABLE `tbl_thisis` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8_bin NOT NULL,
  `addedBy` varchar(55) COLLATE utf8_bin NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_thisis`
--

INSERT INTO `tbl_thisis` (`id`, `title`, `type`, `author`, `description`, `image`, `status`, `files`, `addedBy`) VALUES
(12, 'Test Thesis', 'Thesis', 'National transport service', 'A thesis, or dissertation, is a document submitted in support of candidature for an academic degree or professional qualification presenting the author\'s research and findings.', '../uploads/46441cover_issue_257_en_US.jpg', 0, '../uploads/21484web (1).pdf', 'Admin'),
(13, 'Ecommerce website', 'Thesis', 'Tapson', 'A thesis, or dissertation, is a document submitted in support of candidature for an academic degree or professional qualification presenting the author\'s research and findings.', '../uploads/523069cbc908ba7a0c0205c120e8b66fad113.jpg', 0, '../uploads/794Bangla.pdf', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `type`, `author`, `description`, `image`, `status`, `files`) VALUES
(2, 'Digital marketing course ', 'Video', '365career', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed\r\n          diam nonumy eirmod tempor invidunt ut labore et dolore magna\r\n          aliquyam erat, sed diam voluptua. At vero eos et accusam et\r\n          justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea\r\n          takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\n          dolor sit amet, eqip to hsfby njnnn jnj magna aliquyam erat, sed\r\n          diam voluptua. At vero eos et accusam et justo duo dolores et ea\r\n          rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\r\n          Lorem ipsum dolor sit amet. &lt;br /&gt;', '../uploads/962BOX WHITE (1).png', 0, '../uploads/83file_example_WMV_480_1_2MB.wmv'),
(11, 'Data science bootcamp', 'Video', 'edureka, udemy', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed\r\n          diam nonumy eirmod tempor invidunt ut labore et dolore magna\r\n          aliquyam erat, sed diam voluptua. At vero eos et accusam et\r\n          justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea\r\n          takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\n          dolor sit amet, eqip to hsfby njnnn jnj magna aliquyam erat, sed\r\n          diam voluptua. At vero eos et accusam et justo duo dolores et ea\r\n          rebum. Stet clita kasd gubergren, no sea takimata sanctus est.\r\n          Lorem ipsum dolor sit amet. &lt;br /&gt;', '../uploads/38albumImage.jpg', 0, '../uploads/160file_example_MP4_480_1_5MG.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assignment`
--
ALTER TABLE `tbl_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_borrow`
--
ALTER TABLE `tbl_borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ebook`
--
ALTER TABLE `tbl_ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_journal`
--
ALTER TABLE `tbl_journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_search`
--
ALTER TABLE `tbl_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_thisis`
--
ALTER TABLE `tbl_thisis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_assignment`
--
ALTER TABLE `tbl_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_borrow`
--
ALTER TABLE `tbl_borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ebook`
--
ALTER TABLE `tbl_ebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_journal`
--
ALTER TABLE `tbl_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_report`
--
ALTER TABLE `tbl_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_search`
--
ALTER TABLE `tbl_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_thisis`
--
ALTER TABLE `tbl_thisis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
