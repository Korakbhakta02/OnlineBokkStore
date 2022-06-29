-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 29, 2022 at 05:32 AM
-- Server version: 5.0.27
-- PHP Version: 5.2.1
-- 
-- Database: `www_project`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `admin`
-- 

CREATE TABLE `admin` (
  `name` varchar(20) collate latin1_general_ci NOT NULL,
  `pass` varchar(40) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`name`,`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `admin`
-- 

INSERT INTO `admin` (`name`, `pass`) VALUES 
('korak', 'korakbhakta57#');

-- --------------------------------------------------------

-- 
-- Table structure for table `books`
-- 

CREATE TABLE `books` (
  `book_isbn` varchar(20) collate latin1_general_ci NOT NULL,
  `book_title` varchar(60) collate latin1_general_ci default NULL,
  `book_author` varchar(60) collate latin1_general_ci default NULL,
  `book_image` varchar(40) collate latin1_general_ci default NULL,
  `book_descr` text collate latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`book_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `books`
-- 

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES 
('978-0-321-94786-4', 'Basic Electronics', 'Santiram Kal', 'mobile_app.jpg', '\r\nSantiram Kal, PhD., is Professor, Department of Electronics and Electrical Communication Engineering, Indian Institute of Technology Kharagpur. Earlier, as a Post-Doctoral Fellow, he worked in Ruhr University, Bochum (1985) and Erlangen-Nuernberg University (1993 and 1996) - both in Germany. A Fellow of the Institution of Engineers (India) and a Senior Member of IEEE (USA), Professor Santiram Kal has published nearly 100 articles in prestigious international and national journals such as IEEE Electron Devices Letters, IEEE Trans. on Microwave Theory and Technics, IEEE Journal of Electronics Materials, International Journal of Electronics (UK), Electronics Letters (UK) and Journal of IETE (India). His current research interests are in VLSI, ASICs, MEMS, and sensors.', 895.00, 6),
('978-0-7303-1484-4', 'Digital Electronics: Principles, Devices and Applications', 'Anil K. Maini', 'dig_elec.jpg', 'Digital Electronics: Principles, Devices and Applications is a comprehensive book covering, in\r\none volume, both the fundamentals of digital electronics and the applications of digital devices and\r\nintegrated circuits. It is different from similar books on the subject in more than one way. Each chapter\r\nin the book, whether it is related to operational fundamentals or applications, is amply illustrated\r\nwith diagrams and design examples. In addition, the book covers several new topics, which are of\r\nrelevance to any one having an interest in digital electronics and not covered in the books already in\r\nprint on the subject. These include digital troubleshooting, digital instrumentation, programmable logic\r\ndevices, microprocessors and microcontrollers. While the book covers in entirety what is required by\r\nundergraduate and graduate level students of engineering in electrical, electronics, computer science and\r\ninformation technology disciplines, it is intended to be a very useful reference book for professionals,\r\nR&D scientists and students at post graduate level.', 1499.00, 2),
('978-1-118-94924-5', 'Signals and Systems', 'Bernd Girod', 'S&S.jpg', 'This book provides a comprehensive, modern approach to signals and systems, concentrating on those aspects that are most relevant for applications such as communication systems and signal processing. Emphasis is placed on building the reader''s intuition and problem-solving ability, rather than formal theorems and proofs.\r\n"The coverage of the book is comprehensive, providing a broad overview, using a whole host of exercises. The wealth of the worked examples and problems complemented by solutions is particularly attractive. The level of mathematics is not too daunting for the good average student and the authors do their utmost to mitigate the difficulties, skilfully using worked examples."\r\nProf. Lajos Hanzo, University of Southampton\r\nauthor of Mobile Radio Communications and Single-and Multi-carrier QAM\r\nCheck out the companion Website for ''Systool'' simulation software using Java applets to animate many of the key examples and exercises from the book.', 680.00, 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript''s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you''ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', 20.00, 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', 20.00, 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it''s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', 20.00, 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 20.00, 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', 20.00, 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won''t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', 20.00, 4),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'c_sharp_6.jpg', 'When you have questions about C# 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C# has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there''s still much more to learn.\r\n\r\nOrganized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C#.', 20.00, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `customers`
-- 

CREATE TABLE `customers` (
  `customerid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(60) collate latin1_general_ci NOT NULL,
  `address` varchar(80) collate latin1_general_ci NOT NULL,
  `city` varchar(30) collate latin1_general_ci NOT NULL,
  `zip_code` varchar(10) collate latin1_general_ci NOT NULL,
  `country` varchar(60) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `customers`
-- 

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES 
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test');

-- --------------------------------------------------------

-- 
-- Table structure for table `order_items`
-- 

CREATE TABLE `order_items` (
  `orderid` int(10) unsigned NOT NULL,
  `book_isbn` varchar(20) collate latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `order_items`
-- 

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES 
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(5, '978-1-118-94924-5', 680.00, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `orders`
-- 

CREATE TABLE `orders` (
  `orderid` int(10) unsigned NOT NULL auto_increment,
  `customerid` int(10) unsigned NOT NULL,
  `amount` decimal(6,2) default NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ship_name` char(60) collate latin1_general_ci NOT NULL,
  `ship_address` char(80) collate latin1_general_ci NOT NULL,
  `ship_city` char(30) collate latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) collate latin1_general_ci NOT NULL,
  `ship_country` char(20) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `orders`
-- 

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES 
(1, 1, 60.00, '2015-12-03 19:00:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, 60.00, '2015-12-03 19:01:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, 20.00, '2015-12-04 01:04:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, 20.00, '2015-12-04 15:49:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, 680.00, '2022-06-25 12:53:22', 'soham', 'wdadasf', 'afsafds', '456464', 'afsfsgsg');

-- --------------------------------------------------------

-- 
-- Table structure for table `publisher`
-- 

CREATE TABLE `publisher` (
  `publisherid` int(10) unsigned NOT NULL auto_increment,
  `publisher_name` varchar(60) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`publisherid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `publisher`
-- 

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES 
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O''Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'PHI');

