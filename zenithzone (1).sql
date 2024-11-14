-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 05:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zenithzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist_info`
--

CREATE TABLE `artist_info` (
  `artist_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `nid_number` varchar(17) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `artist_picture` varchar(255) NOT NULL,
  `nid_picture` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist_info`
--

INSERT INTO `artist_info` (`artist_id`, `first_name`, `last_name`, `email`, `mobile_number`, `gender`, `nid_number`, `date_of_birth`, `address`, `postal_code`, `artist_picture`, `nid_picture`, `password_hash`) VALUES
(7, 'Rajib', 'Kumar', 'rahatmi0001@gmail.com', '01660029173', 'male', '3736367628', '2024-08-14', 'Habiganj sadar', '3300', 'artistpic/01660029173.jpg', 'artistnid/01660029173.jpg', '$2y$10$MMY4ghiIWt5k4CH06uuKC.x50Dhr4qcyOEebMyDprSD5ThQ8cez1.');

-- --------------------------------------------------------

--
-- Table structure for table `art_gallery`
--

CREATE TABLE `art_gallery` (
  `art_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `art_name` varchar(255) NOT NULL,
  `art_description` text DEFAULT NULL,
  `art_img` varchar(255) DEFAULT NULL,
  `art_init_price` decimal(10,2) NOT NULL,
  `previous_bid_price` decimal(10,2) DEFAULT NULL,
  `final_bid_price` decimal(10,2) DEFAULT NULL,
  `bid_status` enum('active','pending','closed') DEFAULT 'active',
  `bid_end_date` datetime DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `num_bids` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `art_gallery`
--

INSERT INTO `art_gallery` (`art_id`, `artist_id`, `art_name`, `art_description`, `art_img`, `art_init_price`, `previous_bid_price`, `final_bid_price`, `bid_status`, `bid_end_date`, `creation_date`, `num_bids`) VALUES
(2, 7, 'Beautiful Aera', 'This is Hello Art pices ', 'art_gallery/2.jpg', 1000.00, 1300.00, 1300.00, 'active', '2024-08-28 22:18:00', '2024-08-17 05:24:17', 0),
(4, 7, 'Art Exhibition 1 ', 'A majestic mountain landscape captures the serene beauty of nature, with towering peaks blanketed in snow. The crisp, clear sky contrasts with the rugged terrain, creating a tranquil yet awe-inspiring scene. The play of light and shadow highlights the mountain\'s grandeur, inviting viewers to explore its untamed wilderness.', 'art_gallery/4.jpg', 500.00, NULL, NULL, 'active', NULL, '2024-08-19 20:36:27', 0),
(5, 7, 'Art Exhibition 2', 'A majestic mountain landscape captures the serene beauty of nature, with towering peaks blanketed in snow. The crisp, clear sky contrasts with the rugged terrain, creating a tranquil yet awe-inspiring scene. The play of light and shadow highlights the mountain\'s grandeur, inviting viewers to explore its untamed wilderness.', 'art_gallery/5.jpg', 700.00, NULL, NULL, 'active', NULL, '2024-08-19 20:36:45', 0),
(6, 7, 'Art Exhibition 3', 'A majestic mountain landscape captures the serene beauty of nature, with towering peaks blanketed in snow. The crisp, clear sky contrasts with the rugged terrain, creating a tranquil yet awe-inspiring scene. The play of light and shadow highlights the mountain\'s grandeur, inviting viewers to explore its untamed wilderness.', 'art_gallery/6.jpg', 500.00, NULL, NULL, 'active', NULL, '2024-08-19 20:36:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `autocom`
--

CREATE TABLE `autocom` (
  `products` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autocom`
--

INSERT INTO `autocom` (`products`) VALUES
('Laptop'),
('Smartphone'),
('Headphones'),
('Gaming Console'),
('Smartwatch'),
('Camera'),
('Tablet'),
('Wireless Mouse'),
('Bluetooth Speaker'),
('Fitness Tracker'),
('Monitor'),
('Keyboard'),
('External Hard Drive'),
('Printer'),
('Drone'),
('Desktop Computer'),
('TV'),
('Router'),
('Power Bank'),
('Charger'),
('USB Flash Drive'),
('Memory Card'),
('Graphics Card'),
('Motherboard'),
('Processor'),
('RAM'),
('Cooling Fan'),
('Webcam'),
('Projector'),
('Microphone'),
('VR Headset'),
('Smart Glasses'),
('Fitness Band'),
('Smart Ring'),
('Bluetooth Earbuds'),
('Smart Home Hub'),
('Smart Light Bulb'),
('Smart Plug'),
('Smart Thermostat'),
('Security Camera'),
('Video Doorbell'),
('Robot Vacuum'),
('Electric Scooter'),
('Hoverboard'),
('3D Printer'),
('Drone Camera'),
('Portable Speaker'),
('Wireless Charger'),
('Phone Case'),
('Screen Protector'),
('Laptop Sleeve'),
('Laptop Stand'),
('Keyboard Cover'),
('Mouse Pad'),
('Desk Lamp'),
('Gaming Chair'),
('Gaming Desk'),
('Portable Monitor'),
('External SSD'),
('Network Switch'),
('Modem'),
('Bluetooth Adapter'),
('Ethernet Cable'),
('USB Hub'),
('Docking Station'),
('Surge Protector'),
('UPS Battery Backup'),
('Laptop Charger'),
('Projector Screen'),
('Conference Speakerphone'),
('Document Scanner'),
('Label Printer'),
('Barcode Scanner'),
('Photo Printer'),
('E-Reader'),
('Portable Power Station'),
('Solar Charger'),
('Action Camera'),
('Camcorder'),
('Digital Photo Frame'),
('Graphic Tablet'),
('Drawing Monitor'),
('Laser Printer'),
('Inkjet Printer'),
('Thermal Printer'),
('POS System'),
('Cash Register'),
('Receipt Printer'),
('Portable Air Conditioner'),
('Smart Fan'),
('Electric Heater'),
('Air Purifier'),
('Dehumidifier'),
('Humidifier'),
('Smart Lock'),
('Fingerprint Door Lock'),
('Smart Doorbell'),
('Home Security System'),
('Fire Alarm'),
('Smoke Detector'),
('CO Detector'),
('Water Leak Detector'),
('Motion Sensor'),
('Window Sensor'),
('Door Sensor'),
('Security Alarm'),
('Smart Blinds'),
('Smart Curtains'),
('Solar Lights'),
('LED Strip Lights'),
('String Lights'),
('Smart Switch'),
('Dimmer Switch'),
('Motion-Activated Light'),
('Recessed Lighting'),
('Track Lighting'),
('Pendant Light'),
('Chandelier'),
('Ceiling Fan'),
('Table Lamp'),
('Floor Lamp'),
('Wall Sconce'),
('Under Cabinet Lighting'),
('Night Light'),
('Desk Organizer'),
('Cable Management'),
('Monitor Stand'),
('Laptop Desk'),
('Foot Rest'),
('Ergonomic Chair'),
('Standing Desk'),
('Monitor Arm'),
('Keyboard Tray'),
('Desk Shelf'),
('Desk Drawer'),
('Desk Pad'),
('Pen Holder'),
('Bookend'),
('Magazine Rack'),
('File Cabinet'),
('File Organizer'),
('Document Holder'),
('Paper Shredder'),
('Letter Tray'),
('Mail Organizer'),
('Trash Can'),
('Recycling Bin'),
('Whiteboard'),
('Bulletin Board'),
('Cork Board'),
('Desk Calendar'),
('Planner'),
('Notebook'),
('Journal'),
('Sticky Notes'),
('Highlighters'),
('Markers'),
('Pens'),
('Pencils'),
('Stapler'),
('Staples'),
('Paper Clips'),
('Binder Clips'),
('Rubber Bands'),
('Scissors'),
('Tape Dispenser'),
('Hole Punch'),
('Glue Stick'),
('Ruler'),
('Calculator'),
('Label Maker'),
('Envelope'),
('Mailing Labels'),
('Shipping Labels'),
('Packing Tape'),
('Bubble Wrap'),
('Packing Peanuts'),
('Shipping Box'),
('Packing List'),
('Invoice'),
('Receipt Book'),
('Bill of Lading'),
('Packing Slip'),
('Return Label'),
('Shipping Scale'),
('Address Label'),
('Thermal Label Printer'),
('Laser Label Printer'),
('Inkjet Label Printer'),
('Label Tape'),
('Label Holder'),
('Label Dispenser'),
('Label Rewinder'),
('Label Applicator'),
('Handheld Labeler'),
('Portable Label Printer'),
('Desktop Label Printer'),
('Industrial Label Printer'),
('Barcode Printer'),
('Wristband Printer'),
('Tag Printer'),
('Card Printer'),
('ID Card Printer'),
('Membership Card Printer'),
('Business Card Printer'),
('Photo ID Printer'),
('Plastic Card Printer'),
('RFID Card Printer'),
('Smart Card Printer'),
('Magnetic Stripe Card Printer'),
('Embossing Machine'),
('Encoding Machine'),
('Card Laminator'),
('Card Cutter'),
('Card Punch'),
('Card Holder'),
('Card Sleeve'),
('Card Case'),
('Badge Reel'),
('Badge Clip'),
('Lanyard'),
('Badge Holder'),
('Badge Slot Punch'),
('Badge Printer'),
('ID Badge'),
('Visitor Badge'),
('Event Badge'),
('Security Badge'),
('Employee Badge'),
('Student ID'),
('Access Control Card'),
('Key Fob'),
('Proximity Card'),
('Smart Key'),
('Electronic Lock'),
('Biometric Lock'),
('RFID Lock'),
('Access Control System'),
('Door Access Control'),
('Gate Access Control'),
('Turnstile'),
('Barrier Gate'),
('Parking System'),
('Intercom System'),
('Video Intercom'),
('Audio Intercom'),
('IP Intercom'),
('Wireless Intercom'),
('Two-Way Radio'),
('Walkie Talkie'),
('Paging System'),
('Public Address System'),
('Sound Masking System'),
('Conference System'),
('AV System'),
('Broadcast System'),
('CCTV System'),
('Surveillance System');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `nid_number` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` text NOT NULL,
  `customer_picture` varchar(255) NOT NULL,
  `nid_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `Product_id` int(11) NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `Product_name` varchar(255) NOT NULL,
  `Product_category` varchar(100) DEFAULT NULL,
  `Product_Description` text DEFAULT NULL,
  `Product_image_path` varchar(255) DEFAULT NULL,
  `Old_price` decimal(10,2) DEFAULT NULL,
  `New_price` decimal(10,2) DEFAULT NULL,
  `Stock_quantity` int(11) DEFAULT NULL,
  `Stock_status` varchar(50) DEFAULT NULL,
  `Rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`Product_id`, `Product_code`, `Product_name`, `Product_category`, `Product_Description`, `Product_image_path`, `Old_price`, `New_price`, `Stock_quantity`, `Stock_status`, `Rating`) VALUES
(126, 'B001', 'Tote Bag', 'Bag', 'A large, open-top bag with parallel handles, ideal for carrying everyday essentials. It often has a spacious interior and can be made from various materials like canvas, leather, or fabric.', '../Products/Bag/B001.jpg', 2590.00, 2350.00, 50, 'Yes', 3.00),
(127, 'B002', 'Satchel', 'Bag', 'A structured bag with a flat bottom, often featuring a flap closure and a long strap. Satchels are medium to large in size and can be carried by hand or worn over the shoulder.', '../Products/Bag/B002.jpg', 2590.00, 2350.00, 599, 'Yes', 3.00),
(128, 'B003', 'Shoulder Bag', 'Bag', 'A versatile handbag with a single strap that is long enough to be worn over the shoulder. It comes in various sizes and styles, making it suitable for different occasions.', '../Products/Bag/B003.jpg', 2590.00, 2350.00, 599, 'Yes', 3.00),
(129, 'B004', 'Crossbody Bag', 'Bag', 'A compact bag with a long strap worn across the body. It keeps your hands free and is ideal for carrying essentials like a phone, wallet, and keys', '../Products/Bag/B004.jpg', 2590.00, 2350.00, 599, 'Yes', 3.00),
(130, 'B005', 'Clutch', 'Bag', 'A small, handheld bag without handles or straps. Clutches are  used for evening events and can be embellished with beads, sequins, or other decorative elements.', '../Products/Bag/B005.jpg', 2590.00, 2350.00, 599, 'Yes', 3.00),
(131, 'B006', 'Hobo Bag', 'Bag', 'A crescent-shaped, slouchy bag with a single shoulder strap. Hobo bags are soft and unstructured, providing a relaxed, casual look', '../Products/Bag/B006.jpg', 2590.00, 2350.00, 599, 'Yes', 3.00),
(132, 'B007', 'Backpack Purse', 'Bag', 'A small to medium-sized backpack designed for women. It combines the practicality of a backpack with the style of a purse and often features multiple compartments', '../Products/Bag/B007.jpg', 4200.00, 2350.00, 599, 'Yes', 3.00),
(133, 'B008', 'Bucket Bag', 'Bag', 'A bag with a round or oval base and a drawstring closure at the top. Bucket bags are often spacious and come with a long strap, making them easy to carry over the shoulder or crossbody.', '../Products/Bag/B008.jpg', 4200.00, 2350.00, 599, 'Yes', 3.00),
(134, 'B009', 'Wristlet', 'Bag', 'A small bag or clutch with a strap that wraps around the wrist. Wristlets are compact and perfect for carrying essentials like cards, cash, and a phone.', '../Products/Bag/B009.jpg', 4200.00, 2350.00, 56, 'Yes', 3.00),
(135, 'B010', 'Envelope Bag', 'Bag', 'A slim, rectangular bag with a flap closure resembling an envelope. Envelope bags are sleek and often used as clutches for formal occasions.', '../Products/Bag/B010.jpg', 4200.00, 2350.00, 45, 'Yes', 3.00),
(136, 'B011', 'Messenger Bag', 'Bag', 'A large, flat bag with a long strap worn across the body. Originally used by couriers, messenger bags are practical and  used for carrying laptops and documents.', '../Products/Bag/B011.jpg', 4200.00, 2350.00, 45, 'Yes', 3.00),
(137, 'B012', 'Belt Bag (Fanny Pack)', 'Bag', 'A small bag worn around the waist or across the body, secured by a belt or strap. Belt bags are practical and keep your hands free.', '../Products/Bag/B012.jpg', 4200.00, 3800.00, 45, 'Yes', 3.00),
(138, 'B013', 'Quilted Bag', 'Bag', ' A bag with a quilted texture, often associated with luxury brands. Quilted bags are available in various styles, including shoulder bags, crossbody bags, and clutches.', '../Products/Bag/B013.jpg', 4200.00, 3800.00, 45, 'Yes', 3.00),
(139, 'B014', 'Minaudière', 'Bag', 'A small, decorative clutch often made from metal and embellished with jewels, beads, or other decorative elements. Minaudières are considered evening bags', '../Products/Bag/B014.jpg', 4200.00, 3800.00, 45, 'Yes', 3.00),
(140, 'B015', 'Saddle Bag', 'Bag', 'A bag with a rounded, flat shape that resembles a horse\'s saddle. It typically has a flap closure and a long strap for crossbody wear.', '../Products/Bag/B015.jpg', 4200.00, 3800.00, 45, 'Yes', 3.00),
(141, 'B016', 'Duffel Bag', 'Bag', 'A large, cylindrical bag with a top zipper and handles. Duffel bags are often used for gym or travel and are spacious enough to carry clothes and other essentials', '../Products/Bag/B016.jpg', 4200.00, 3800.00, 45, 'Yes', 3.00),
(142, 'B017', 'Doctor Bag', 'Bag', 'A structured bag with a frame closure, originally inspired by the bags carried by doctors. Doctor bags are spacious and have a vintage, sophisticated look.', '../Products/Bag/B017.jpg', 4200.00, 3800.00, 45, 'Yes', 3.00),
(143, 'B018', 'Kelly Bag', 'Bag', 'A trapezoidal handbag with a top handle, named after Grace Kelly. Kelly bags are structured, elegant, and often made from high-quality leather.', '../Products/Bag/B018.jpg', 5600.00, 3800.00, 45, 'Yes', 3.00),
(144, 'B019', 'Baguette Bag', 'Bag', 'A small, rectangular bag with a short strap, designed to be tucked under the arm like a French baguette. Baguette bags are stylish and often used for evening outings.', '../Products/Bag/B019.jpg', 5600.00, 3800.00, 45, 'Yes', 3.00),
(145, 'B020', 'Frame Bag', 'Bag', 'A structured bag with a metal frame at the top, often featuring a clasp closure. Frame bags have a vintage appeal and are available in various sizes.', '../Products/Bag/B020.jpg', 5600.00, 3800.00, 45, 'Yes', 3.00),
(161, 'E001', 'Smart Phone', 'Electronics', 'It  equipped with a high-resolution touchscreen, allows users to make calls, send texts, browse the internet, and access various applications (apps) such as social media, games, and productivity tools.It has  capacitive or AMOLED screen with multi-touch support for user interaction.It has 64 GB ram.', '../Products/Electronics/E001.jpg', 2100.00, 1580.00, 10, 'Yes', 4.50),
(162, 'E002', 'Smart Phone', 'Electronics', 'It has rear cameras with   multiple lenses for wide-angle, telephoto, and macro photography.Also LED flash for low-light photography.Also  Detects the phone’s orientation and motion.', '../Products/Electronics/E002.jpg', 2100.00, 1580.00, 10, 'Yes', 3.40),
(163, 'E003', 'Smart Phone', 'Electronics', 'Provides enhanced motion sensing, often used in gaming.Detects when the phone is near the user’s face to disable the screen during calls.', '../Products/Electronics/E003.jpg', 2100.00, 1580.00, 10, 'Yes', 3.40),
(164, 'E004', 'Smart Phone', 'Electronics', 'Adjusts screen brightness based on surrounding light.3.5mm jack or USB-C/Lightning port for audio output.', '../Products/Electronics/E004.jpg', 2100.00, 1580.00, 10, 'Yes', 3.40),
(165, 'E005', 'Smart Phone', 'Electronics', 'Fingerprint Sensor: For biometric security and unlocking the device.', '../Products/Electronics/E005.jpg', 2100.00, 1580.00, 10, 'Yes', 3.40),
(166, 'E006', 'Smart Phone', 'Electronics', 'Face Recognition: Uses the front camera to unlock the phone.', '../Products/Electronics/E006.jpg', 2100.00, 1580.00, 10, 'Yes', 3.40),
(167, 'E007', 'Headphones', 'Electronics', 'It has dynamic drivers which is used to  convert electrical signals into sound waves,also has armature drivers for  used in in-ear monitors for better treble detail.', '../Products/Electronics/E007.jpg', 2100.00, 1580.00, 10, 'Yes', 3.40),
(168, 'E008', 'Headphones', 'Electronics', 'Large ear cups that completely cover the ears, providing better isolation and comfort.Allows for compact storage and portability.It can be adjusted for a better fit,  padded for comfort.', '../Products/Electronics/E008.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(169, 'E009', 'Headphones', 'Electronics', 'Designed to reduce tangling and increase durability.', '../Products/Electronics/E009.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(170, 'E010', 'Earbud', 'Electronics', '1/4 Inch (6.35mm) Jack: Used in professional audio equipment.Wireless connectivity for freedom of movement.', '../Products/Electronics/E010.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(171, 'E011', 'Earbud', 'Electronics', 'Detect external noise to create an opposing sound wave, canceling out background noise. AptX, AAC, LDAC for better wireless sound quality.It aslo allows connection to multiple devices simultaneously.', '../Products/Electronics/E011.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(172, 'E012', 'Tablets', 'Electronics', 'The most common type of touchscreen, allowing for multi-touch gestures. Supports pressure sensitivity and can be used for drawing or handwriting.Charging equipment is potal C type charger.Can be connected via USB or USB-C for additional storage.', '../Products/Electronics/E012.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(173, 'E013', 'Tablets', 'Electronics', 'Its HDMI Adapter allows the tablet to connect to an external display.External webcame provides better video quality for video calls.', '../Products/Electronics/E013.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(174, 'E014', 'Tablets', 'Electronics', 'Its HDMI Adapter allows the tablet to connect to an external display.External webcame provides better video quality for video calls.', '../Products/Electronics/E014.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(175, 'E015', 'Laptop', 'Electronics', 'HDMI/VGA Adapter: Connects the laptop to external monitors or projectors.It also  enhances audio quality beyond built-in laptop speakers.', '../Products/Electronics/E015.jpg', 3400.00, 2780.00, 10, 'Yes', 3.40),
(176, 'E016', 'Laptop', 'Electronics', ' An external mouse (wired or wireless) for more precise control. ', '../Products/Electronics/E016.jpg', 3400.00, 2780.00, 10, 'Yes', 2.50),
(177, 'E017', 'Laptop', 'Electronics', ' a comprehensive set of ports, allowing the laptop to connect to multiple devices simultaneously.', '../Products/Electronics/E017.jpg', 1600.00, 1250.00, 10, 'Yes', 3.50),
(178, 'E018', 'Desktop', 'Electronics', 'Its PSU provides power to the desktop\'s internal components.CPU cooler  keeps the CPU at a safe operating temperature.', '../Products/Electronics/E018.jpg', 1600.00, 1250.00, 10, 'Yes', 3.60),
(179, 'E019', 'Desktop', 'Electronics', 'Its PSU provides power to the desktop\'s internal components.CPU cooler  keeps the CPU at a safe operating temperature.', '../Products/Electronics/E019.jpg', 1600.00, 1250.00, 10, 'Yes', 3.70),
(180, 'E020', 'Desktop', 'Electronics', 'Its PSU provides power to the desktop\'s internal components.CPU cooler  keeps the CPU at a safe operating temperature.', '../Products/Electronics/E020.jpg', 1600.00, 1250.00, 10, 'Yes', 3.80),
(181, 'E021', 'Mechanical Keyboard', 'Electronics', 'Mechanical keyboards are known for their durability, tactile feedback, and customizability.Its tactile switches  provide a noticeable bump when a key is pressed, great for typing.Mechanical keyboards typically have a robust construction with metal or high-quality plastic frames.', '../Products/Electronics/E021.jpg', 1600.00, 1250.00, 10, 'Yes', 3.90),
(182, 'E022', 'Mechanical Keyboard', 'Electronics', 'Its removal keycaps allows users to replace keycaps with custom designs, colors, or materials.It also enables users to change out switches without soldering, allowing for easy customization and repair.Its detachable cable makes it easier to pack and reduces wear on the cable.', '../Products/Electronics/E022.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(183, 'E023', 'Mechanical Keyboard', 'Electronics', 'Its removal keycaps allows users to replace keycaps with custom designs, colors, or materials.It also enables users to change out switches without soldering, allowing for easy customization and repair.Its detachable cable makes it easier to pack and reduces wear on the cable.', '../Products/Electronics/E023.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(184, 'E024', 'Ipad', 'Electronics', 'This iPads support the Apple Pencil, which allows for precise drawing, note-taking, and editing directly on the screen. This feature is especially popular among artists, designers, and students.iPads .It feature Liquid Retina displays with ProMotion technology, offering smooth scrolling, high resolution, vibrant colors, and True Tone for an immersive viewing experience.', '../Products/Electronics/E024.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(185, 'E025', 'Apple Watch', 'Electronics', 'Apple Watch is known for its advanced features that blend health, fitness, connectivity, and style.It has advanced system like health monitoring, Encourages movement by tracking active calories burned, exercise minutes, and standing hours.It also gives  alerts for messages, calls, emails, and other app notifications.', '../Products/Electronics/E025.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(186, 'E026', 'Wireless Keyboard', 'Electronics', 'Keyboards, especially wireless keyboards, come with a range of features that cater to different user preferences, whether for typing, gaming, or professional use.Available in various colors, each offering a different feel.', '../Products/Electronics/E026.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(187, 'E027', 'Economic Keyboard', 'Electronics', 'Quieter and softer to press but generally less durable and responsive than mechanical switches.', '../Products/Electronics/E027.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(188, 'E028', 'Gaming mouse', 'Electronics', 'Its adjustable DPI Settings allows users to change the sensitivity of the mouse on the fly, which can be useful for different tasks like gaming or graphic design.', '../Products/Electronics/E028.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(189, 'E029', 'Gaming mouse', 'Electronics', 'Its adjustable DPI Settings allows users to change the sensitivity of the mouse on the fly, which can be useful for different tasks like gaming or graphic design.', '../Products/Electronics/E029.jpg', 1600.00, 1250.00, 10, 'Yes', 4.00),
(190, 'E030', 'Gaming mouse', 'Electronics', 'Its adjustable DPI Settings allows users to change the sensitivity of the mouse on the fly, which can be useful for different tasks like gaming or graphic design.', '../Products/Electronics/E030.jpg', 1800.00, 1250.00, 10, 'Yes', 4.00),
(191, 'E031', 'Egronomic Mouse', 'Electronics', 'The equipment of a mouse typically refers to the various hardware components and peripherals that are used to operate or enhance its functionality.Its DPI allows users to adjust the sensitivity of the mouse.', '../Products/Electronics/E031.jpg', 1800.00, 1250.00, 57, 'Yes', 4.00),
(192, 'E032', 'Wireless Mouse', 'Electronics', ' For wireless mice, there is a wireless receiver or Bluetooth module.Its battery  provides power to the mouse.It also has  customization software to configure mouse settings and macros.', '../Products/Electronics/E032.jpg', 1800.00, 1250.00, 57, 'Yes', 4.00),
(193, 'E033', 'Wireless Mouse', 'Electronics', ' For wireless mice, there is a wireless receiver or Bluetooth module.Its battery  provides power to the mouse. It also has optical or laser sensor that detects movement and translates it to cursor movement on the screen.', '../Products/Electronics/E033.jpg', 1800.00, 1250.00, 57, 'Yes', 4.00),
(194, 'E034', 'Wireless Mouse', 'Electronics', ' For wireless mice, there is a wireless receiver or Bluetooth module.Its battery  provides power to the mouse.', '../Products/Electronics/E034.jpg', 1800.00, 1250.00, 57, 'Yes', 4.00),
(195, 'E035', 'LED television', 'Electronics', 'Its HDR provides a wider range of colors and brightness levels, resulting in more vibrant and realistic images. Common HDR standards include HDR10, Dolby Vision, and HLG.4K TV offer a resolution of 3840 x 2160 pixels, providing four times the detail of Full HD.Built-in Wi-Fi and Ethernet connectivity allow access to streaming services, apps, web browsing, and voice assistants like Alexa or Google Assistant', '../Products/Electronics/E035.jpg', 1800.00, 1250.00, 57, 'Yes', 4.00),
(196, 'E036', 'Smart TV', 'Electronics', 'Smart TVs offer a variety of features that enhance the viewing experience by integrating internet connectivity, apps, and advanced multimedia functions.Built-in apps for popular streaming platforms like Netflix, Hulu, Amazon Prime Video, Disney+, YouTube, and more, allowing users to stream movies, TV shows, and other content directly.It can integrate with voice assistants like Amazon Alexa, Google Assistant, or even proprietary systems, allowing users to control the TV, search for content, and interact with other smart home devices using voice commands.', '../Products/Electronics/E036.jpg', 1800.00, 1250.00, 57, 'Yes', 3.80),
(197, 'E037', 'Home theater', 'Electronics', 'Home theater systems are designed to replicate the cinema experience in your home, offering a combination of high-quality audio and visual components.Its advanced audio formats provides  immersive, 3D sound by adding height channels, making sound appear to come from above as well as around.\n\n\n', '../Products/Electronics/E037.jpg', 1800.00, 1250.00, 57, 'Yes', 3.80),
(198, 'E038', 'Sound Bar', 'Electronics', 'its HDR provides better contrast, more vivid colors, and a wider range of brightness levels for a more realistic viewing experience.', '../Products/Electronics/E038.jpg', 1890.00, 1250.00, 57, 'Yes', 3.80),
(199, 'E039', 'Projector', 'Electronics', 'Projectors are versatile devices used for displaying large images or videos, often used in home theaters, business presentations, classrooms, and events.It can display 3D content, requiring compatible 3D glasses and source material, adding depth to the viewing experience.', '../Products/Electronics/E039.jpg', 1890.00, 1250.00, 50, 'Yes', 3.80),
(200, 'E040', 'Over-Ear headphone', 'Electronics', ' Over-ear headphones  deliver superior sound quality with a wide frequency range, offering deep bass, clear mids, and crisp highs. The design of over-ear headphones naturally provides some noise isolation by covering the ears and creating a seal.', '../Products/Electronics/E040.jpg', 1890.00, 1250.00, 50, 'Yes', 3.80),
(201, 'E041', 'Noise-canselling headphone', 'Electronics', ' Over-ear headphones  deliver superior sound quality with a wide frequency range, offering deep bass, clear mids, and crisp highs. The design of over-ear headphones naturally provides some noise isolation by covering the ears and creating a seal.', '../Products/Electronics/E041.jpg', 1890.00, 1250.00, 50, 'Yes', 3.80),
(202, 'E042', 'True wireless headphone', 'Electronics', ' Over-ear headphones  deliver superior sound quality with a wide frequency range, offering deep bass, clear mids, and crisp highs. The design of over-ear headphones naturally provides some noise isolation by covering the ears and creating a seal.', '../Products/Electronics/E042.jpg', 1890.00, 1250.00, 50, 'Yes', 3.80),
(203, 'E043', 'Bluetooth Speaker', 'Electronics', 'Bluetooth is a common feature in over-ear headphones, offering wireless connectivity and convenience, have a range of about 30 feet (10 meters), allowing you to move around freely without losing connection.', '../Products/Electronics/E043.jpg', 1890.00, 1250.00, 50, 'Yes', 3.80),
(204, 'E044', 'Bluetooth Speaker', 'Electronics', ' Newer version Bluetooth  5.2 provide improved connectivity, lower power consumption, faster data transfer, and better range compared to older versions.', '../Products/Electronics/E044.jpg', 1890.00, 1250.00, 50, 'Yes', 3.80),
(205, 'E045', 'Smart Speaker', 'Electronics', ' Newer version  speaker 5.0 provide improved connectivity, lower power consumption, faster data transfer, and better range compared to older versions.', '../Products/Electronics/E045.jpg', 1890.00, 1250.00, 50, 'Yes', 4.50),
(206, 'E046', 'Smart Speaker', 'Electronics', ' Newer version   speaker  5.2 provide improved connectivity, lower power consumption, faster data transfer, and better range compared to older  Speakers are used to play music, movies, podcasts, and other audio content. They reproduce the sound recorded or streamed from various sources like smartphones, computers, televisions, and audio players.', '../Products/Electronics/E046.jpg', 1890.00, 1250.00, 50, 'Yes', 4.50),
(207, 'E047', 'Sound Bars', 'Electronics', 'Soundbar provides much better sound quality, delivering clearer dialogue, richer bass, and overall enhanced audio compared to built-in TV speakers.Which has been   designed to be slim and unobtrusive,  placed directly below or mounted on the wall beneath a TV. This makes them ideal for users who want better sound without the bulk of a full home theater system.', '../Products/Electronics/E047.jpg', 1890.00, 1250.00, 50, 'Yes', 4.50),
(208, 'E048', 'DSLR', 'Electronics', 'Have larger image sensors (APS-C ) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E048.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(209, 'E049', 'DSLR', 'Electronics', 'Have larger image sensors ( full-frame) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E049.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(210, 'E050', 'Action Camera', 'Electronics', 'Have larger image sensors ( full-frame) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E050.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(211, 'E051', 'DSLR', 'Electronics', 'Have larger image sensors (APS-C ) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E051.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(212, 'E052', 'DSLR', 'Electronics', 'Have larger image sensors (APS-C or full-frame) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E052.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(213, 'E053', 'DSLR', 'Electronics', 'Have larger image sensors (APS-C or full-frame) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E053.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(214, 'E054', 'Action Camera', 'Electronics', 'Have larger image sensors (APS-C or full-frame) compared to point-and-shoot cameras and smartphones. One of the main features of  this DSLR is the ability to change lenses. This allows photographers to choose from a wide range of lenses (e.g., wide-angle, telephoto, macro) to suit different shooting scenarios, offering greater creative control.', '../Products/Electronics/E054.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(215, 'E055', 'Zoom lens', 'Electronics', 'Zooming in and out allows photographers to quickly reframe a shot without changing their physical position, making it easier to adapt to dynamic scenes.These len offer an extended focal length range,  24-240mm, providing a one-lens solution for a wide variety of situations. ', '../Products/Electronics/E055.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(216, 'E056', 'Zoom lens', 'Electronics', 'These cover focal lengths from wide-angle to short telephoto, such as the 24-70mm lenses, and are often included as kit lenses with cameras.', '../Products/Electronics/E056.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(217, 'E057', 'Prime lens', 'Electronics', 'Some zoom lenses are designed with close-up capabilities, allowing for macro photography along with standard zoom functions.It has   a constant maximum aperture of   f/2.8 , across the entire zoom range. These lenses are preferred for their consistent exposure settings and better low-light performance throughout the zoom range.', '../Products/Electronics/E057.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(218, 'E058', 'Tripod', 'Electronics', 'Tripod is a three-legged support device used to stabilize cameras, smartphones, and other equipment to ensure steady and clear shots.It come with ball head,that allow for smooth panning and tilting of the camera to achieve the desired framing and composition.', '../Products/Electronics/E058.jpg', 1890.00, 1850.00, 50, 'Yes', 4.50),
(219, 'E059', 'Tripod', 'Electronics', 'Tripod typically have adjustable leg sections with locking mechanisms to secure the legs at different angles and heights. Common types of leg locks include twist locks and flip locks.', '../Products/Electronics/E059.jpg', 1890.00, 1780.00, 50, 'Yes', 4.50),
(220, 'E060', 'Tripod', 'Electronics', 'Tripod typically have adjustable leg sections with locking mechanisms to secure the legs at different angles and heights. Common types of leg locks include twist locks and flip locks.', '../Products/Electronics/E060.jpg', 1890.00, 1780.00, 50, 'Yes', 4.60),
(221, 'E061', 'Refrigerator', 'Electronics', 'Traditional design with the freezer compartment on top and the refrigerator below.', '../Products/Electronics/E061.jpg', 1890.00, 1780.00, 50, 'Yes', 4.60),
(222, 'E062', 'Washing Machine', 'Electronics', 'size that matches your household’s needs. Capacity is usually measured in cubic feet or by load size (small, medium, large. Generally more modern and sleek, available in various finishes like white, stainless steel, or black.\n More traditional, often available in white or black.', '../Products/Electronics/E062.jpg', 1890.00, 1780.00, 50, 'Yes', 4.60),
(223, 'E063', 'Microwave', 'Electronics', 'Counter top microwave,Power Level: Higher wattage (typically 600 to 1200 watts) cooks food more quickly and evenly', '../Products/Electronics/E063.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(224, 'E064', 'Air Conditioner', 'Electronics', 'Freestanding unit that can be moved from room to room. It requires a window or vent for the exhaust hose. Flexible placement and easy to set up. Good for rooms where window units aren\'t feasible.', '../Products/Electronics/E064.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(225, 'E065', 'Smart Bulb', 'Electronics', 'smart bulb is an advanced, internet-connected light bulb that offers a range of features beyond basic illumination, allowing users to control the bulb remotely through a smartphone app, voice assistant, or smart home system.', '../Products/Electronics/E065.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(226, 'E066', 'Smart Switche', 'Electronics', 'Smart light strip  can be integrated into a smart home ecosystem, working in tandem with other devices like motion sensors, door locks, or smart thermostats.', '../Products/Electronics/E066.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(227, 'E067', 'Smart Light Strip', 'Electronics', 'It can change to millions of colors, providing a customizable ambiance for any room. Users can select colors from a color wheel in the app or set the bulb to change colors dynamically.', '../Products/Electronics/E067.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(228, 'E068', 'Wi-Fi Plug', 'Electronics', 'smart plug, is a device that allows you to control electrical appliances and devices remotely by plugging them into the smart plug, which then connects to your Wi-Fi network.', '../Products/Electronics/E068.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(229, 'E069', 'Smart Power Strip', 'Electronics', 'Wi-Fi plugs are designed to be compact so they don’t block adjacent outlets, allowing you to use other outlets in the same area.', '../Products/Electronics/E069.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(230, 'E070', 'Energy Monitoring Plug', 'Electronics', 'An energy monitoring plug is a smart plug that tracks and reports the energy consumption of connected devices in real-time. It allows users to monitor how much electricity an appliance is using, helping to identify high-energy devices and optimize energy usage.', '../Products/Electronics/E070.jpg', 1890.00, 1780.00, 12, 'Yes', 4.60),
(231, 'E071', 'Energy Monitoring Plug', 'Electronics', 'Users can view energy data, set usage limits, and receive alerts, making it easier to manage power consumption and reduce electricity costs. This plug also offers standard smart plug features like remote control and scheduling.', '../Products/Electronics/E071.jpg', 3500.00, 1780.00, 12, 'Yes', 4.60),
(232, 'E072', 'Video Doorbell', 'Electronics', 'a traditional doorbell with a camera-equipped unit that allows you to see, hear, and speak to visitors at your door via a smartphone app. It features motion detection, real-time video streaming, and two-way audio, enabling you to monitor your doorstep from anywhere.', '../Products/Electronics/E072.jpg', 3500.00, 1780.00, 12, 'Yes', 4.60),
(233, 'E073', 'Smart Lock', 'Electronics', 'a traditiona smart lockwith a camera-equipped unit that allows  to see, hear, and speak to visitors at your door via a smartphone app. It features motion detection, real-time video streaming, and two-way audio, enabling you to monitor your doorstep from anywhere.', '../Products/Electronics/E073.jpg', 3500.00, 1780.00, 12, 'Yes', 5.00),
(234, 'E074', 'AR Glasses', 'Electronics', 'wearable devices that overlay digital information, images, or holograms onto the real world through transparent lenses. They enhance the user\'s perception by blending virtual elements with their physical surroundings, allowing for interactive experiences such as navigation, gaming, remote collaboration, and hands-free access to information. ', '../Products/Electronics/E074.jpg', 3500.00, 1780.00, 12, 'Yes', 5.00),
(235, 'E075', 'Hair Dryer', 'Electronics', 'Hair dryer is a handheld device used to blow warm or hot air over wet hair to accelerate the evaporation of water, thereby drying the hair quickly. It typically features adjustable heat and speed settings, allowing for customized drying based on hair type and desired style.', '../Products/Electronics/E075.jpg', 3500.00, 1780.00, 12, 'Yes', 5.00),
(236, 'E076', 'Hair Straightener', 'Electronics', 'hair straightener, also known as a flat iron, is a tool used to smooth and straighten hair by applying heat to flatten the hair shaft. It consists of two heated plates, usually made of ceramic, titanium, or tourmaline, which are pressed together around sections of hair.', '../Products/Electronics/E076.jpg', 3500.00, 2580.00, 12, 'Yes', 5.00),
(237, 'E077', 'Curling Iron', 'Electronics', 'hair styling device designed to create curls and waves effortlessly. Unlike traditional curling irons, a curling machine automatically draws hair into a heated chamber where it is gently curled. It often features adjustable heat settings, curl direction controls, and timers to create different curl styles, from loose waves to tight ringlets. ', '../Products/Electronics/E077.jpg', 3500.00, 2580.00, 12, 'Yes', 5.00),
(238, 'E078', 'Blood Pressure Monitor', 'Electronics', 'offering features like memory storage for tracking readings over time, automatic inflation, and irregular heartbeat detection. Blood pressure monitors are commonly used at home or in clinical settings to monitor cardiovascular health and detect conditions like hypertension.', '../Products/Electronics/E078.jpg', 3500.00, 2580.00, 12, 'Yes', 4.96),
(239, 'E079', 'Wearable ECG Monitor', 'Electronics', 'ECG monitors are used to diagnose and monitor heart conditions such as arrhythmias, heart attacks, and other cardiac abnormalities. Portable and wearable ECG monitors are available for continuous monitoring, while more advanced versions are used in hospitals and clinics.', '../Products/Electronics/E079.jpg', 3500.00, 2580.00, 12, 'Yes', 4.96),
(240, 'E080', 'Fitness Equipment', 'Electronics', 'Fitness equipment includes various tools and machines designed to enhance physical health and exercise routines, such as treadmills, dumbbells, and resistance bands.', '../Products/Electronics/E080.jpg', 3500.00, 2580.00, 12, 'Yes', 4.96),
(241, 'E081', 'Smart Scale', 'Electronics', ' Smart scale is a digital weighing device that not only measures body weight but also tracks additional metrics like body fat percentage, muscle mass, and BMI through wireless connectivity. It syncs with mobile apps to provide detailed insights and trends about your health and fitness progress, allowing for more comprehensive monitoring and goal setting.', '../Products/Electronics/E081.jpg', 3500.00, 2580.00, 12, 'Yes', 4.96),
(242, 'E082', 'Portable GPS', 'Electronics', 'Provides real-time information about your current location, directions to destinations, and points of interest, often featuring maps and route planning. Portable GPS devices are commonly used for driving, hiking, and outdoor activities, offering accurate navigation without relying on a smartphone or internet connection.', '../Products/Electronics/E082.jpg', 7800.00, 5300.00, 12, 'Yes', 4.96),
(243, 'E083', 'USB Car Charger', 'Electronics', 'USB car charger is a device that plugs into your car’s cigarette lighter or 12V power socket and provides USB ports for charging devices like smartphones, tablets, and other electronics.', '../Products/Electronics/E083.jpg', 7800.00, 5300.00, 12, 'Yes', 4.96),
(244, 'E084', 'Wireless Charging Pad', 'Electronics', ' a pad that fits your style and space, whether it’s sleek and minimal or has added features like non-slip surfaces.', '../Products/Electronics/E084.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(245, 'E085', 'Cordless Drill', 'Electronics', 'The chuck size determines the range of drill bits and accessories you can use. Common sizes are 1/4 inch.Choose a drill that feels comfortable in your hand and is well-balanced to reduce fatigue during use.', '../Products/Electronics/E085.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(246, 'E086', 'Multiplug', 'Electronics', '\nA multiplug (also known as a power strip or surge protector) allows you to plug multiple devices into a single electrical outlet. Ensure the multiplug can handle the total wattage of the devices you plan to plug in', '../Products/Electronics/E086.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(247, 'E087', 'Multiplug', 'Electronics', '\nA multiplug (also known as a power strip or surge protector) allows you to plug multiple devices into a single electrical outlet. Ensure the multiplug can handle the total wattage of the devices you plan to plug in', '../Products/Electronics/E087.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(248, 'E088', 'Cinema Camera', 'Electronics', ' Designed for filmmaking, cinema cameras offer high dynamic range, color accuracy, and cinematic image quality.Typically capable of recording in 4K resolution.Interchangeable lenses with support for a wide range of professional cinema lenses (PL mount, EF mount, etc.', '../Products/Electronics/E088.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(249, 'E089', 'Studio Camera', 'Electronics', 'High-quality video, usually optimized for live broadcast with lower latency.Its feature are Integrated tally lights, large viewfinders, and often connected to control rooms via SDI for multi-camera setups.', '../Products/Electronics/E089.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(250, 'E090', 'Broadcast Camera', 'Electronics', 'Designed for real-time broadcast with minimal processing time. Often supports HD.Its features are robust build for field use, wireless transmission capabilities, integrated microphones, and remote control options.\n', '../Products/Electronics/E090.jpg', 7800.00, 5300.00, 12, 'Yes', 3.84),
(276, 'G001', 'Treadmill', 'Gym Instruments', 'Its materals are steel frames, rubber belts, plastic control panels.It is a manual type treadmil.', '../Products/Gym Instrument/G001.jpg', 3100.00, 2550.00, 20, 'Yes', 4.50),
(277, 'G002', 'Elliptical Trainer', 'Gym Instruments', 'Compact elliptical trainer.whichs materials are steel frames, plastic foot pedals, and handles.', '../Products/Gym Instrument/G002.jpg', 8500.00, 2550.00, 20, 'Yes', 4.50),
(278, 'G003', 'Stationary Bike', 'Gym Instruments', 'It is a spine kind of bike whichs materials are  steel frames, padded seats, rubberized handles.\n', '../Products/Gym Instrument/G003.jpg', 8500.00, 2550.00, 20, 'Yes', 4.50),
(279, 'G004', 'Rowing Machine', 'Gym Instruments', 'Rowing machine is Air resistance, magnetic and water resistance.Its materials are  aluminum or steel frames, nylon or chain pull mechanisms, plastic or wood handles.', '../Products/Gym Instrument/G004.jpg', 8500.00, 6500.00, 20, 'Yes', 4.50),
(280, 'G005', 'Stair Climbers and Step Machines', 'Gym Instruments', 'Its materials are  steel frames, plastic foot pedals, and digital monitors. Hydraulic, motorize and  mini steppers every type is available of the stair claimber and step machines.', '../Products/Gym Instrument/G005.jpg', 8500.00, 6500.00, 20, 'Yes', 4.50),
(281, 'G006', 'Free Weights', 'Gym Instruments', 'Cast iron, rubber-coated, vinyl-coated, neoprene-covered are materials .Dumbbells, barbells, kettlebell every type is available. ', '../Products/Gym Instrument/G006.jpg', 8500.00, 6500.00, 20, 'Yes', 4.50),
(282, 'G007', 'Free Weights', 'Gym Instruments', ' It is a preacher curl benche.Its materials are steel frames, foam padding, vinyl or leather covers.', '../Products/Gym Instrument/G007.jpg', 8500.00, 6500.00, 89, 'Yes', 4.50),
(283, 'G008', 'Resistance Band', 'Gym Instruments', ' It is a preacher curl benche.Its materials are steel frames, foam padding, vinyl or leather covers.', '../Products/Gym Instrument/G008.jpg', 8500.00, 6500.00, 78, 'Yes', 4.50),
(284, 'G009', 'Weight Plate', 'Gym Instruments', 'Standard, Olympic, bumper plates.Its materials are cast iron, rubber-coated, urethane .', '../Products/Gym Instrument/G009.jpg', 8500.00, 6500.00, 78, 'Yes', 4.50),
(285, 'G010', 'Multi-Gym', 'Gym Instruments', 'Single stack, dual stack, cable crossover machine of multi gym are available.Its materials are steel frames, pulleys, cables, vinyl-covered padding.', '../Products/Gym Instrument/G010.jpg', 8500.00, 6500.00, 56, 'Yes', 4.50),
(286, 'G011', 'Power Rack  ', 'Gym Instruments', 'Heavy-duty steel  with powder-coated. Single stack, dual stack, cable crossover machine of multi gym are available', '../Products/Gym Instrument/G011.jpg', 8500.00, 6500.00, 34, 'Yes', 4.50),
(287, 'G012', 'Medicine Ball', 'Gym Instruments', 'Rubber, leather, synthetic materials.slam balls, wall balls both type is available for you.', '../Products/Gym Instrument/G012.jpg', 8500.00, 6500.00, 12, 'Yes', 4.50),
(288, 'G013', 'Power Rack  ', 'Gym Instruments', 'Polypropylene, polyester blends, and manila fibers are its materials. Heavy, medium, light (based on thickness and length) are avilable.', '../Products/Gym Instrument/G013.jpg', 8500.00, 6500.00, 90, 'Yes', 4.50),
(289, 'G014', 'Suspension Trainer', 'Gym Instruments', 'Polypropylene, polyester blends, and manila fibers are its materials. Heavy, medium, light (based on thickness and length) are avilable.', '../Products/Gym Instrument/G014.jpg', 8500.00, 6500.00, 90, 'Yes', 4.50),
(290, 'G015', 'Plyometric Box', 'Gym Instruments', 'Soft foam, wooden, adjustable height.It is made from high-density foam, plywood, steel frames.', '../Products/Gym Instrument/G015.jpg', 8500.00, 6500.00, 89, 'Yes', 4.50),
(291, 'G016', 'Sandbag', 'Gym Instruments', 'Its materials are Heavy-duty nylon, reinforced stitching.', '../Products/Gym Instrument/G016.jpg', 8500.00, 6500.00, 778, 'Yes', 4.50),
(292, 'G017', 'Yoga Mat', 'Gym Instruments', 'PVC, natural rubber, TPE (thermoplastic elastomer) are yoga mats materials.Every type like Standard, thick and travel is available.', '../Products/Gym Instrument/G017.jpg', 8500.00, 6500.00, 778, 'Yes', 4.50),
(293, 'G018', 'Foam Roller', 'Gym Instruments', 'Its materials are  high-density foam, EVA foam, PVC cores.', '../Products/Gym Instrument/G018.jpg', 8500.00, 6500.00, 54, 'Yes', 4.50),
(294, 'G019', 'Resistance Stretch Band', 'Gym Instruments', 'Its materials are  Latex, synthetic rubber.', '../Products/Gym Instrument/G019.jpg', 8500.00, 6500.00, 45, 'Yes', 4.50),
(295, 'G020', 'Massage Ball', 'Gym Instruments', 'Its type is Spiky, smooth, peanut-shaped.Materials are Rubber and  silicone.', '../Products/Gym Instrument/G020.jpg', 8500.00, 6500.00, 45, 'Yes', 4.50),
(296, 'G021', 'Rubber Floorin', 'Gym Instruments', 'Its type are  Interlocking tiles, rolled rubber, mats.', '../Products/Gym Instrument/G021.jpg', 8500.00, 6500.00, 67, 'Yes', 4.50),
(297, 'G022', 'Foam Tile', 'Gym Instruments', 'Its type are  Interlocking tiles, rolled rubber, mats.It can be arranged in various patterns and color combinations, allowing for creative design possibilities. This makes them ideal for spaces where aesthetics are important.', '../Products/Gym Instrument/G022.jpg', 8500.00, 6500.00, 9, 'Yes', 4.50),
(298, 'G023', 'Carpet Tiles', 'Gym Instruments', 'Carpet tiles come in small, manageable squares or rectangles, making them easier to handle and install compared to traditional broadloom carpet rolls.', '../Products/Gym Instrument/G023.jpg', 8500.00, 6500.00, 68, 'Yes', 4.50),
(299, 'G024', 'Wood Flooring', 'Gym Instruments', 'There are two types of wood . Hardwood and  engineered wood.This one is engineered wood.Its materials are Oak, maple, bamboo.', '../Products/Gym Instrument/G024.jpg', 8500.00, 6500.00, 78, 'Yes', 4.50),
(300, 'G025', 'Climbing Rope', 'Gym Instruments', 'It is a  thick ropes for upper body training.Its materials are Manila, synthetic blends.', '../Products/Gym Instrument/G025.jpg', 8800.00, 6500.00, 98, 'Yes', 4.50),
(251, 'K001', 'T-Shirt and Polo', 'Kids Collection', ' Comfortable and versatile, available in various colors and patterns.', '../Products/Kids/K001.jpg', 2800.00, 5300.00, 12, 'Yes', 3.84),
(252, 'K002', 'Jeans and Pant', 'Kids Collection', 'Durable and suitable for everyday play. Options include denim, cotton, and leggings.', '../Products/Kids/K002.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(253, 'K003', 'Shorts', 'Kids Collection', 'Ideal for warmer weather, available in casual and sporty styles.', '../Products/Kids/K003.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(254, 'K004', ' Hoody', 'Kids Collection', 'For layering and warmth,  made from soft, cozy materials.', '../Products/Kids/K004.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(255, 'K005', 'Uniform', 'Kids Collection', 'Often required by schools, including items like button-down shirts, blouses, skirts, and trousers.', '../Products/Kids/K005.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(256, 'K006', 'Blazer and Cardigan', 'Kids Collection', 'For a more polished look,  part of school uniforms or dressier occasions.Available in every shade and colour.', '../Products/Kids/K006.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(257, 'K007', 'Dress Shirt ', 'Kids Collection', ' Suitable for school events or formal occasions.', '../Products/Kids/K007.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(258, 'K008', 'Pajamas', 'Kids Collection', 'Sets or one-piece sleepers made from soft fabrics like cotton and flannel.', '../Products/Kids/K008.jpg', 2800.00, 5300.00, 12, 'Yes', 3.90),
(259, 'K009', ' Slippers', 'Kids Collection', 'Cozy options for lounging or bedtime routines.', '../Products/Kids/K009.jpg', 2800.00, 2550.00, 12, 'Yes', 3.90),
(260, 'K010', 'Coats and Jackets', 'Kids Collection', 'Includes options like raincoats, winter coats, and lightweight jackets for various weather conditions.', '../Products/Kids/K010.jpg', 2800.00, 2550.00, 12, 'Yes', 3.90),
(261, 'K011', 'Vests', 'Kids Collection', 'Useful for layering in cooler weather without restricting arm movement.', '../Products/Kids/K011.jpg', 2800.00, 2550.00, 12, 'Yes', 3.90),
(262, 'K012', 'Athletic Shorts ', 'Kids Collection', 'Moisture-wicking fabrics for sports and physical activities.', '../Products/Kids/K012.jpg', 2800.00, 2550.00, 12, 'Yes', 3.90),
(263, 'K013', 'Tracksuits', 'Kids Collection', 'Comfortable for exercise or casual wear.', '../Products/Kids/K013.jpg', 2800.00, 2550.00, 12, 'Yes', 3.90),
(264, 'K014', 'Swimwear', 'Kids Collection', 'Includes swimsuits, rash guards, and swim trunks for pool or beach days.', '../Products/Kids/K014.jpg', 3100.00, 2550.00, 12, 'Yes', 3.90),
(265, 'K015', 'Formal Dress', 'Kids Collection', 'For weddings, parties, or other special events.', '../Products/Kids/K015.jpg', 3100.00, 2550.00, 12, 'Yes', 3.90),
(266, 'K016', 'Tutus and Party Dresses', 'Kids Collection', 'Often used for birthdays or dress-up . For a complete formal look', '../Products/Kids/K016.jpg', 3100.00, 2550.00, 12, 'Yes', 3.90),
(267, 'K017', 'Bowties', 'Kids Collection', 'Often used for birthdays or dress-up . For a complete formal look', '../Products/Kids/K017.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(268, 'K018', 'Summer Clothing', 'Kids Collection', 'Includes sundresses, tank tops, and shorts.', '../Products/Kids/K018.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(269, 'K019', 'Winter Clothing', 'Kids Collection', 'Includes thermal underwear, mittens, and scarves.', '../Products/Kids/K019.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(270, 'K020', 'Fall and Spring Layers', 'Kids Collection', 'Includes lightweight jackets, cardigans, and rain boots.', '../Products/Kids/K020.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(271, 'K021', 'Jumpsuits', 'Kids Collection', 'Durable and easy to put on and take off.', '../Products/Kids/K021.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(272, 'K022', 'Graphic Tees and Fun Patterns', 'Kids Collection', 'Playful designs and bright colors for casual wear.', '../Products/Kids/K022.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(273, 'K023', 'Hats ', 'Kids Collection', 'Includes sun hats, beanies, and baseball caps', '../Products/Kids/K023.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(274, 'K024', 'Scarves ', 'Kids Collection', 'For colder weather or as fashion accessories.\nPractical items for school and outings.', '../Products/Kids/K024.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(275, 'K025', 'Backpacks ', 'Kids Collection', 'For colder weather or as fashion accessories.Practical items for school and outings.', '../Products/Kids/K025.jpg', 3100.00, 2550.00, 12, 'Yes', 4.50),
(32, 'P001', 'Chinos', 'Pant', 'It has made from lightweight cotton or a cotton blend, chinos are versatile and comfortable.Slim fit, straight leg, available in various colors.It is suitable for casual outings and semi-formal events.', '../Products/Pant/P001.jpg', 4500.00, 3200.00, 28, 'Yes', 5.00),
(33, 'P002', ' Cargo Pants', 'Pant', 'This product is known for its multiple pockets, cargo pants are practical and functional.Its features Loose fit, durable fabric, numerous pockets for storage.\nIt is ideal for outdoor activities, travel, and casual wear.', '../Products/Pant/P002.jpg', 780.00, 450.00, 67, 'Yes', 4.80),
(34, 'P003', 'Joggers', 'Pant', ' Joggers are casual pants with a sporty aesthetic,  featuring an elastic waistband and cuffs.Its features are tapered fit, elastic or drawstring waist, comfortable fabric.\nThis product is perfect for casual outings, lounging, and light exercise.', '../Products/Pant/P003.jpg', 890.00, 700.00, 89, 'Yes', 4.80),
(35, 'P004', 'Jeans', 'Pant', 'It is available in denim fabric, available in slim, regular, and relaxed fits, multiple washes and colors.Its so suitable for everyday wear, casual outings, and relaxed settings.', '../Products/Pant/P004.jpg', 780.00, 700.00, 7655, 'Yes', 5.00),
(36, 'P005', 'Drawstring Pants', 'Pant', ' Its loose fit, drawstring waist, made from materials like cotton or linen has made this iteam super comfortable.', '../Products/Pant/P005.jpg', 780.00, 700.00, 456, 'Yes', 5.00),
(37, 'P006', ' Linen Pants', 'Pant', 'Ideal for lounging, beachwear, and casual settings.', '../Products/Pant/P006.jpg', 567.00, 450.00, 3456, 'Yes', 2.70),
(38, 'P007', 'Sweates Pants', 'Pant', ' It is designed for comfort, sweatpants are made from soft, stretchy materials.Its features are Elastic waistband, relaxed fit, often with elastic cuffs.', '../Products/Pant/P007.jpg', 450.00, 420.00, 45, 'Yes', 2.80),
(39, 'P008', 'Dress Pants', 'Pant', 'Formal trousers made from wool.', '../Products/Pant/P008.jpg', 1200.00, 950.00, 909, 'Yes', 2.80),
(40, 'P009', 'Slim Fit Pants', 'Pant', 'It is featured with tailored fit,  with pleats or a flat front, creased legs.', '../Products/Pant/P009.jpg', 1250.00, 890.00, 788, 'Yes', 4.50),
(41, 'P010', 'Khakis', 'Pant', 'It is  made from a sturdier cotton twill.Its  Straight leg, neutral colors like beige and khaki make it more stylish and comfortable.', '../Products/Pant/P010.jpg', 1280.00, 890.00, 67, 'Yes', 4.50),
(42, 'P011', 'Wide Leg Pants', 'Pant', 'Loose fit, made from flowing fabrics.', '../Products/Pant/P011.jpg', 1450.00, 1270.00, 66, 'Yes', 4.50),
(43, 'P012', 'Pleated Pants', 'Pant', 'Pants with pleats at the front to add extra room and comfort.Available in every shape and colour.', '../Products/Pant/P012.jpg', 1580.00, 1350.00, 456, 'Yes', 4.50),
(44, 'P013', 'Carpenter Pants', 'Pant', ' Durable workwear pants with extra pockets and loops.\nFeatures: Loose fit, hammer loop, reinforced stitching.', '../Products/Pant/P013.jpg', 1500.00, 1300.00, 4566, 'Yes', 4.50),
(45, 'P014', 'Corduroy Pants', 'Pant', ' This pant is  made from corduroy fabric, which has a distinctive ribbed texture.\nFeatures: Durable, available in various fits, warm fabric.', '../Products/Pant/P014.jpg', 670.00, 450.00, 4567, 'Yes', 4.50);
INSERT INTO `product_info` (`Product_id`, `Product_code`, `Product_name`, `Product_category`, `Product_Description`, `Product_image_path`, `Old_price`, `New_price`, `Stock_quantity`, `Stock_status`, `Rating`) VALUES
(46, 'P015', 'Track Pants', 'Pant', 'Sporty pants designed for athletic activities and casual wear.Its features are elastic waistband, tapered leg, often with side stripes.', '../Products/Pant/P015.jpg', 900.00, 480.00, 8990, 'Yes', 4.50),
(47, 'P016', 'Tapered Pants', 'Pant', 'Pants that narrow down from the hip to the ankle.It is a causal and semi-formal setting.Available in every size.', '../Products/Pant/P016.jpg', 900.00, 780.00, 78, 'Yes', 4.50),
(48, 'P017', '\nAthletic Fit Pants', 'Pant', '  This Pant is designed with extra room in the thighs and a tapered leg.\nFeatures: Comfortable fit for muscular builds, often with stretch fabric.\nIt can be worn as Casual wear, light athletic activities.', '../Products/Pant/P017.jpg', 980.00, 900.00, 88, 'Yes', 4.50),
(49, 'P018', ' Bib Pants', 'Pant', ' It is a one-piece pants with a bib front and straps over the shoulders.Features: Durable fabric, multiple pockets, adjustable straps.', '../Products/Pant/P018.jpg', 950.00, 900.00, 89, 'Yes', 4.50),
(50, 'P019', 'Bootcut Pants', 'Pant', ' Pants are fitted through the thigh and flare out slightly at the bottom.\nFeatures: Flared leg opening, designed to be worn with boots.\nOccasions: Casual and semi-formal settings, Western-inspired fashion.', '../Products/Pant/P019.jpg', 4500.00, 3200.00, 78, 'Yes', 4.50),
(83, 'Pe001', '\nEau de Cologne', 'Perfume', 'Its feature is light and fresh with a citrus base.Concerntration of  2-4% perfume oil.Its longevity is 2-4 hours.This perfume is ready to put on causal wear and summer month.', '../Products/Perfume/Pe001.jpg', 900.00, 790.00, 100, 'Yes', 4.60),
(84, 'Pe002', 'Eau de Toilette (EDT)', 'Perfume', 'It is light to medium intensity with a balance of citrus, floral, and woody notes perfume.Its concerntration is 5-15% perfume oil which is ready to use for every occasion.', '../Products/Perfume/Pe002.jpg', 1200.00, 1050.00, 332, 'Yes', 4.70),
(85, 'Pe003', 'Eau de Parfum (EDP)', 'Perfume', ' Rich and long-lasting, often with strong woody, spicy, or oriental notes.Concerntration is 15-20% perfume oil and longevity is 6-8 hours.', '../Products/Perfume/Pe003.jpg', 1500.00, 1200.00, 42, 'Yes', 4.80),
(86, 'Pe004', 'Parfum/Extrait de Parfum', 'Perfume', 'The most concentrated and long-lasting fragrance, typically with deep, intense notes.\nConcentration: 20-30% perfume oil.\nLongevity: 8-12 hours.', '../Products/Perfume/Pe004.jpg', 1800.00, 1690.00, 432, 'Yes', 4.90),
(87, 'Pe005', 'Aftershave', 'Perfume', 'Lightly scented and often contains soothing ingredients to refresh the skin after shaving.', '../Products/Perfume/Pe005.jpg', 4300.00, 3400.00, 43, 'Yes', 3.70),
(88, 'Pe006', 'Body Sprays', 'Perfume', 'Light and refreshing with a lower concentration of fragrance.\nConcentration: 1-3% perfume oil.', '../Products/Perfume/Pe006.jpg', 2100.00, 1500.00, 43, 'Yes', 3.70),
(89, 'Pe007', 'Woody Scents', 'Perfume', 'Concerntration of  1-3% perfume oil.Its longevity is all about 2-3 hours.', '../Products/Perfume/Pe007.jpg', 2680.00, 2300.00, 43, 'Yes', 3.70),
(90, 'Pe008', 'Spicy Scents', 'Perfume', 'This perfume is warm and intense with notes of pepper, cinnamon, and cloves.Ready to put on sammer vacation.', '../Products/Perfume/Pe008.jpg', 2590.00, 2300.00, 43, 'Yes', 3.70),
(91, 'Pe009', 'Aquatic Scents', 'Perfume', '  It is fresh and clean, reminiscent of ocean or fresh water.Ready to put on this perfume on  Summer wear, casual, daytime.', '../Products/Perfume/Pe009.jpg', 2300.00, 1250.00, 45, 'Yes', 3.70),
(92, 'Pe010', 'Citrus Scents', 'Perfume', 'Its  bright and refreshing  notes of lemon, lime, and bergamot makes it feel super fresh.', '../Products/Perfume/Pe010.jpg', 5400.00, 4300.00, 54, 'Yes', 3.70),
(93, 'Pe011', 'Eau de Cologne', 'Perfume', 'Light, often with citrus and floral notes.\nConcentration: 2-4% perfume oil.\nLongevity: 2-4 hours.', '../Products/Perfume/Pe011.jpg', 3400.00, 2305.00, 54, 'Yes', 3.70),
(94, 'Pe012', 'Body Mists', 'Perfume', ' Light and airy, often with fruity or floral notes.Its concerntration is 1-3% perfume oil.', '../Products/Perfume/Pe012.jpg', 4300.00, 3490.00, 544, 'Yes', 3.60),
(95, 'Pe013', 'Floral Scents', 'Perfume', 'Feminine and soft, featuring notes like rose, jasmine, and lavender.', '../Products/Perfume/Pe013.jpg', 4334.00, 3490.00, 544, 'Yes', 4.50),
(96, 'Pe014', 'Fruity Scents', 'Perfume', 'Sweet and playful, with notes like apple, peach, and berries.\nOccasions: Daytime wear, casual, youthful.', '../Products/Perfume/Pe014.jpg', 3444.00, 3200.00, 567, 'Yes', 4.50),
(97, 'Pe015', 'Oriental Scents', 'Perfume', 'Warm and exotic with notes of amber, vanilla, and spices.\nOccasions: Evening wear, winter months, romantic settings.', '../Products/Perfume/Pe015.jpg', 3344.00, 3200.00, 76, 'Yes', 4.56),
(98, 'Pe016', 'Chypre Scents', 'Perfume', 'Sweet and edible-smelling  with notes of chocolate, vanilla, and caramel. Evening wear, special event are occasions for this perfume.', '../Products/Perfume/Pe016.jpg', 666.00, 450.00, 76, 'Yes', 3.65),
(99, 'Pe017', 'Gourmand Scents', 'Perfume', 'Earthy and warm with sandalwood, patchouli, and cedar.\nOccasions: Evening wear, fall and winter months.', '../Products/Perfume/Pe017.jpg', 5600.00, 4500.00, 78, 'Yes', 3.50),
(1, 'S001', ' Shirt', 'Shirt', ' a stiff collar, button front, and long sleeves with buttoned or cufflink-style cuffs. Ideal for formal occasions and business settings.', '../Products/Shirt/S001.jpg', 1500.00, 1080.00, 520, 'Yes', 4.70),
(2, 'S002', 'Tuxedo Shirt', 'Shirt', 'It has made from high-quality cotton or a cotton blend for comfort and breathability. It features with vertical pleats running down the shirt\'s front, adding a classic and textured look.Its available in various fits, including classic, slim, and modern, to suit different body types and preferences.', '../Products/Shirt/S002.jpg', 2500.00, 1350.00, 100, 'Yes', 4.80),
(3, 'S003', 'Tuxedo Shirt', 'Shirt', 'This product is predominantly white,broader spread between the collar points, suitable for various bow tie stylesAvailable in various fits, including classic, slim, and modern, to suit different body types and preferences..', '../Products/Shirt/S003.jpg', 2580.00, 1400.00, 52, 'Yes', 4.50),
(4, 'S004', 'White Plisse Tuxedo Shirt', 'Shirt', '\nDesigned for black-tie events. An elegant shirt with a front bib woven in plissé, resulting in a timeless pleated front. Renowned for its subtle but striking appearance and for elevating the evening look to an unmatched standard. Equipped with french cuffs and black removable studs', '../Products/Shirt/S004.jpg', 650.00, 480.00, 45, 'Yes', 4.90),
(5, 'S005', 'Oxford Button-Down Shirt', 'Shirt', 'The available product is a unique combination of casual comfort and refined style makes it suitable for various occasions.It is made from Oxford cloth, a type of cotton fabric known for its basketweave texture, durability, and comfort.The defining feature of this shirt is its button-down collar, which has small buttons securing the collar points to the shirt.It is available in a wide range of solid colors, including classic white, blue, and pink.', '../Products/Shirt/S005.jpg', 4560.00, 3000.00, 312, 'Yes', 4.30),
(6, 'S006', 'Chambray Shirt', 'Shirt', 'It is a versatile and stylish garment that combines the rugged appeal of denim with the lightweight comfort ,made from chambray fabric, which is a plain-weave fabric made with a colored warp and a white weft.It has  a full-length button placket.Colour in every shade is available.', '../Products/Shirt/S006.jpg', 645.00, 445.00, 5132, 'Yes', 3.60),
(7, 'S007', 'Flannel Shirt', 'Shirt', 'Check out our entire stock of flannel shirt which fabric is  soft, medium-weight cotton fabric that has a napped, fuzzy, finish on one or both sides.Both short and full length sleeve is available in our stock.Black,green.gray colour is available in this design.', '../Products/Shirt/S007.jpg', 9875.00, 4545.00, 12, 'Yes', 3.70),
(8, 'S008', 'Flannel Shirt', 'Shirt', ' Flannel shirt is a timeless, versatile piece of clothing known for its comfort, warmth, and classic style.soft, medium-weight fabric, available fabrics are  cotton, wool, or a cotton blend. ', '../Products/Shirt/S008.jpg', 780.00, 380.00, 12, 'Yes', 4.90),
(9, 'S009', 'Flannel Shirt', 'Shirt', 'Its fabric is wool flannel,which  offers extra warmth, making it ideal for colder climates.In this product every size is available.', '../Products/Shirt/S009.jpg', 784.00, 450.00, 165, 'Yes', 4.10),
(10, 'S010', 'Flannel Shirt', 'Shirt', 'Its fabric is wool flannel,which  offers extra warmth, making it ideal for colder climates.In this product every size is available.', '../Products/Shirt/S010.jpg', 1000.00, 850.00, 5461, 'Yes', 4.50),
(11, 'S011', 'Linen Shirt', 'Shirt', '\nThis shirt is a casual, long-sleeve, button-down  designed for a stylish and relaxed look.It has made from a lightweight and breathable linen fabric   for warm weather.It also features a band collar (also known as a mandarin collar), giving it a modern and minimalist appearance.The shirt has a full-length button-down placket with white buttons that contrast nicely against the black fabric.', '../Products/Shirt/S011.jpg', 730.00, 500.00, 26, 'Yes', 4.90),
(12, 'S012', 'Linen Shirt', 'Shirt', 'Men\'s Linen Cotton Henley Shirt.It is a  Long Sleeve Basic Summer Shirt and  Band Collar.Its size is S-XXL', '../Products/Shirt/S012.jpg', 1250.00, 850.00, 251, 'Yes', 3.80),
(13, 'S013', 'Linen Shirt', 'Shirt', 'It is a lightweight long sleeve button down Linen Shirt for men size for XL.The sleeves are buttoned at the cuffs, allowing for an adjustable fit and the option to roll up the sleeves for a more relaxed look.', '../Products/Shirt/S013.jpg', 2500.00, 2300.00, 212, 'Yes', 3.50),
(14, 'S014', 'Classic Polo Shirt', 'Shirt', 'Features a ribbed or flat knit collar, which can be worn up or down.It is short sleeved,ribbed cuffs,co;our and size for all shapes is available.', '../Products/Shirt/S014.jpg', 2800.00, 2300.00, 256, 'Yes', 2.80),
(15, 'S015', 'Classic Polo Shirt', 'Shirt', 'All shades   from solid colors like navy, black, and white to vibrant hues and patterns is available.A short button placket at the neck, typically with two to three buttons, allowing for adjustable ventilation.', '../Products/Shirt/S015.jpg', 4800.00, 3800.00, 56, 'Yes', 2.70),
(16, 'S016', 'Linen Shirt', 'Shirt', 'All shades   from solid colors like navy, black, and white to vibrant hues and patterns is available.A short button placket at the neck at the bottom available.', '../Products/Shirt/S016.jpg', 5600.00, 2400.00, 56, 'Yes', 2.39),
(17, 'S017', 'Long Sleeve Polo Shirt', 'Shirt', 'Long sleeves that extend to the wrists, offering added coverage and warmth.\nSleeves often end with ribbed cuffs, adding a touch of structure and style while ensuring a snug fit. Available in a wide range of colors, from solid hues like navy, black, and white to vibrant tones and patterns also sizes.', '../Products/Shirt/S017..jpg', 3100.00, 1565.00, 586, 'Yes', 4.50),
(18, 'S018', 'Crew Neck T-Shirt', 'Shirt', 'It is available in a wide range of colors and patterns. Popular options include solid colors, stripes, and graphic prints.The fabric of this T-Shirt is cotton mostly.The defining feature is the round, circular neckline that sits snugly around the base of the neck.Available in various fits, including slim fit, regular fit, and relaxed fit, catering to different body types and style preferences.', '../Products/Shirt/S018.jpg', 1250.00, 1000.00, 55, 'Yes', 4.50),
(19, 'S019', 'Crew Neck T-Shirt', 'Shirt', 'Long sleeve variations are available.Hemmed sleeves that add a clean finish', '../Products/Shirt/S019.jpg', 1120.00, 870.00, 56, 'Yes', 4.50),
(20, 'S020', 'V-Neck T-Shirt', 'Shirt', ' V-neck T-shirt is a stylish and versatile wardrobe staple known for its distinctive neckline.Its material is cotton mostly. Available in a wide range of colors and patterns. Popular options include solid colors, stripes, and graphic prints.', '../Products/Shirt/S020.jpg', 4645.00, 3500.00, 89, 'Yes', 4.80),
(21, 'S021', 'Graphic T-Shirt', 'Shirt', 'The product is made from 100% cotton. Available in a vast range of base colors, from classic black and white to vibrant hues and pastels.Artistic illustrations, abstract designs, patterns, or photographic images are available as a graphic.', '../Products/Shirt/S021.jpg', 2326.00, 2200.00, 89, 'Yes', 4.50),
(22, 'S022', 'Graphic T-Shirt', 'Shirt', 'The product comes with a crew neck with 100 % soft cotton materials.Its High-quality materials and construction ensure longevity, even with regular wear and washing.', '../Products/Shirt/S022.jpg', 1200.00, 750.00, 0, '', 4.50),
(23, 'S023', 'Western Shirt', 'Shirt', 'Its texture is  soft yet sturdy, designed to withstand outdoor activities and frequent wear.Materials are flannel and linen is available here and size are X,XXL are available.Its embroidery Intricate embroidered designs, often depicting western themes like horses, cacti, and other southwestern motifs makes it looked so classy.', '../Products/Shirt/S023.jpg', 2125.00, 1500.00, 255, 'Yes', 4.50),
(24, 'S024', 'Western Shirt', 'Shirt', ' Typically features a pointed collar,Available in both long sleeves and short sleeves.', '../Products/Shirt/S024.jpg', 1200.00, 1011.00, 478, 'Yes', 4.50),
(25, 'S025', 'Western Shirt', 'Shirt', ' Soft yet sturdy, designed to withstand outdoor activities and frequent wear.It is aqvailable in a range of colors, often featuring earthy tones like browns, blues, and greens, as well as classic black and white.', '../Products/Shirt/S025.jpg', 7800.00, 4500.00, 487, 'Yes', 4.74),
(26, 'S026', 'Military Shirt', 'Shirt', ' Available in both long sleeves and short sleeves,Its combines cotton with synthetic fibers for enhanced durability and ease of care makes this product mire comfortable.', '../Products/Shirt/S026.jpg', 4411.00, 3500.00, 88, 'Yes', 4.50),
(27, 'S027', 'Sweater', 'Shirt', 'Its wool fabric  Known for its excellent insulation and softness, perfect for colder climates.Its horizontal or vertical stripes add a playful or sophisticated touch.Common styles include crew neck, V-neck, turtleneck, and mock neck.\n Available in various fits, including slim fit, regular fit, and oversized for a more relaxed look.Ribbed cuffs provide a snug fit and help retain warmth.', '../Products/Shirt/S027.jpg', 4500.00, 2500.00, 899, 'Yes', 3.00),
(28, 'S028', 'Sweater', 'Shirt', 'Its  traditional, intricate patterns often seen in holiday and winter sweaters.Available in various fits, including slim fit, regular fit, and oversized for a more relaxed look.', '../Products/Shirt/S028.jpg', 4511.00, 3500.00, 5845, 'Yes', 3.00),
(29, 'S029', 'Sweater', 'Shirt', 'Its  traditional, intricate patterns often seen in holiday and winter sweaters.Available in various fits, including slim fit, regular fit, and oversized for a more relaxed look.Its  ribbed cuffs provide a snug fit and help retain warmth.', '../Products/Shirt/S029.jpg', 8700.00, 6800.00, 56, 'Yes', 2.58),
(30, 'S030', 'Hooded Shirt', 'Shirt', 'The product is  durable and moisture-wicking, great for active wear.Featuring logos, text, or artistic designs for a trendy look.', '../Products/Shirt/S030.jpg', 4500.00, 3500.00, 5, 'Yes', 4.90),
(31, 'S031', 'Poplin PJ Shirt', 'Shirt', 'This product is made from poplin, a tightly woven, plain-weave fabric.It is available in various sizes to accommodate different body types. It’s also available in both long and short sleeve options to suit different preferences and seasons.\n', '../Products/Shirt/S031.jpg', 6544.00, 4500.00, 55, 'Yes', 4.50),
(100, 'Sa001', 'Banarasi Saree', 'Saree', 'Its  brocades made of gold and silver threads. Banarasi saree features  motifs of  flowers  inspired designs.', '../Products/Saree/Sa001.jpg', 5600.00, 4500.00, 78, 'Yes', 3.50),
(101, 'Sa002', 'Banarasi Saree', 'Saree', 'Its  brocades made of gold and silver threads. Banarasi saree features  motifs of  flowers  inspired designs.', '../Products/Saree/Sa002.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(102, 'Sa003', 'Banarasi Saree', 'Saree', 'Its  brocades made of gold and silver threads. Banarasi saree features  motifs of  Mughal-inspired designs.Ready to put on occations like wedding festivles.', '../Products/Saree/Sa003.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(103, 'Sa004', 'Banarasi Saree', 'Saree', 'Its  brocades made of gold and silver threads. Banarasi saree features  motifs of  Mughal-inspired designs.Ready to put on occations like wedding festivles.', '../Products/Saree/Sa004.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(104, 'Sa005', 'Banarasi Saree', 'Saree', 'Known for their rich, intricate brocades made of gold and silver threads. Banarasi saree feature motifs like flowers, foliage, and Mughal-inspired designs.', '../Products/Saree/Sa005.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(105, 'Sa006', 'Banarasi Saree', 'Saree', 'Known for their rich, intricate brocades made of gold and silver threads. Banarasi saree feature motifs like flowers, foliage, and Mughal-inspired designs.', '../Products/Saree/Sa006.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(106, 'Sa007', 'Kanjeevaram Saree', 'Saree', 'Made from pure mulberry silk, Kanjeevaram sarees are known for their vibrant colors, contrasting borders, and rich zari work. The pallu and borders are often intricately woven with gold threads.', '../Products/Saree/Sa007.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(107, 'Sa008', 'Kanjeevaram Saree', 'Saree', 'Made from pure mulberry silk, Kanjeevaram sarees are known for their vibrant colors, contrasting borders, and rich zari work. The pallu and borders are often intricately woven with gold threads.', '../Products/Saree/Sa008.jpg', 5600.00, 4500.00, 78, 'Yes', 3.00),
(108, 'Sa009', 'Kanjeevaram Saree', 'Saree', 'This saree can be put on weddings, religious ceremonies, and formal events.made from pure mulberry silk.', '../Products/Saree/Sa009.jpg', 5600.00, 4500.00, 50, 'Yes', 3.00),
(109, 'Sa010', 'Chiffon Saree', 'Saree', ' Lightweight and sheer, chiffon sarees drape beautifully and are embellished with sequins, embroidery. They are easy to manage and have a modern, elegant appeal.', '../Products/Saree/Sa010.jpg', 5600.00, 4500.00, 50, 'Yes', 3.00),
(110, 'Sa011', 'Chiffon Saree', 'Saree', 'This saree can be put on parties, casual gatherings, and formal events.The product is embellished with embriodery.', '../Products/Saree/Sa011.jpg', 5600.00, 2700.00, 50, 'Yes', 3.00),
(111, 'Sa012', 'Chiffon Saree', 'Saree', 'This saree has a elegent appeal with a beautiful colour.Can be put on festivles or causual.', '../Products/Saree/Sa012.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(112, 'Sa013', 'Georgette Saree', 'Saree', 'Made from georgette fabric, these sarees are flowy, lightweight, and comfortable.Available in every pastel shades.', '../Products/Saree/Sa013.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(113, 'Sa014', 'Georgette Saree', 'Saree', 'This  features  bold prints, embroidery, or sequins.Lightweight,flowy,and comfortable thers saree can be put on every occasions. ', '../Products/Saree/Sa014.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(114, 'Sa015', 'Georgette Saree', 'Saree', 'This  features  bold prints, embroidery, or sequins.Lightweight,flowy,and comfortable thers saree can be put on every occasions. ', '../Products/Saree/Sa015.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(115, 'Sa016', 'Georgette Saree', 'Saree', 'Its occasions are  casual wear, parties, and office wear.Made from georgette fabric.', '../Products/Saree/Sa016.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(116, 'Sa017', 'Chanderi Saree', 'Saree', 'A blend of silk and cotton, Chanderi sarees are known for their glossy transparency and rich texture. They often feature motifs inspired by nature, such as flowers, birds, and geometric patterns.', '../Products/Saree/Sa017.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(117, 'Sa018', 'Chanderi Saree', 'Saree', 'Its  feature motifs inspired by nature, such as flowers, birds, and geometric patterns.', '../Products/Saree/Sa018.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(118, 'Sa019', 'Mysore Silk Saree', 'Saree', 'This saree is made from pure silk and are known for their smooth texture and rich luster. Its feature simple yet elegant designs with gold borders and pallu.', '../Products/Saree/Sa019.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(119, 'Sa020', 'Patola Saree', 'Saree', 'Patola saree is handwoven using the double ikat technique, creating intricate patterns that are identical on both sides. This is highly prized for its craftsmanship.', '../Products/Saree/Sa020.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(120, 'Sa021', 'Bandhani Saree', 'Saree', 'Bandhani sarees are created using the tie-dye technique, resulting in colorful patterns and designs. They are vibrant and often adorned with mirror work or embroidery.', '../Products/Saree/Sa021.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(121, 'Sa022', 'Paithani Saree', 'Saree', 'Known for their unique tie-dye patterns, Sambalpuri sarees are handwoven with motifs inspired by nature and tribal art.', '../Products/Saree/Sa022.jpg', 1080.00, 850.00, 50, 'Yes', 3.00),
(122, 'Sa023', 'Sambalpuri Saree', 'Saree', 'Known for their unique tie-dye patterns, Sambalpuri sarees are handwoven with motifs inspired by nature and tribal art.', '../Products/Saree/Sa023.jpg', 2590.00, 2350.00, 50, 'Yes', 3.00),
(123, 'Sa024', 'Pattu Saree', 'Saree', 'Made from pure silk, Pattu sarees are known for their glossy finish and intricate designs. They are similar to Kanjeevaram sarees but are generally lighter and more delicate.', '../Products/Saree/Sa024.jpg', 2590.00, 2350.00, 50, 'Yes', 3.00),
(124, 'Sa025', 'Tussar Silk Saree', 'Saree', 'Tussar silk sarees have a natural, earthy texture and are known for their lightweight and breathable fabric. They often feature simple, elegant designs with tribal or floral motifs', '../Products/Saree/Sa025.jpg', 2590.00, 2350.00, 50, 'Yes', 3.00),
(125, 'Sa026', 'Net Saree', 'Saree', 'Made from net fabric, these sarees are sheer and often embellished with embroidery, sequins, and stones. They are stylish and trendy, popular among younger women.', '../Products/Saree/Sa026.jpg', 2590.00, 2350.00, 50, 'Yes', 3.00),
(146, 'SC001', 'Cleanser', 'Skincare product', 'Foaming Cleanser: Best for oily and acne-prone skin.Removes the dirt and pollution from the face and gives a shiney skin tone.', '../Products/Skin Care/SC001.jpg', 5660.00, 3800.00, 45, 'Yes', 3.00),
(147, 'SC002', 'Exfoliator', 'Skincare product', 'Removes dead skin cells, unclogs pores, and prevents ingrown hairs.It  uses acids like glycolic or salicylic acid to dissolve dead skin cells.This exfoliator  contains small particles that physically scrub the skin.', '../Products/Skin Care/SC002.jpg', 5660.00, 3800.00, 10, 'Yes', 3.00),
(148, 'SC003', 'Toner', 'Skincare product', 'Balances the skin\'s pH, tightens pores, and removes any remaining impurities.It adds moisture and soothes the skin.', '../Products/Skin Care/SC003.jpg', 5660.00, 3800.00, 10, 'Yes', 3.00),
(149, 'SC004', ' Moisturizer', 'Skincare product', 'It is a gel based moisturizer which is lightweight and non-greasy, perfect for oily skin.It hydrates the skin, locks in moisture, and prevents dryness.\n\n', '../Products/Skin Care/SC004.jpg', 5660.00, 3800.00, 10, 'Yes', 3.00),
(150, 'SC005', 'Sunscreen', 'Skincare product', 'It  protects the skin from harmful UV rays, preventing sunburn, premature aging, and skin cancer. Contains physical blockers like zinc oxide, suitable for sensitive skin.', '../Products/Skin Care/SC005.jpg', 5660.00, 3800.00, 10, 'Yes', 3.00),
(151, 'SC006', 'Eye Cream', 'Skincare product', 'It targets dark circles, puffiness, and fine lines around the eyes.Also  moisturizes and plumps the delicate eye area.', '../Products/Skin Care/SC006.jpg', 5660.00, 3800.00, 10, 'Yes', 3.00),
(152, 'SC007', 'Serum', 'Skincare product', 'Hyaluronic Acid Serum, delivers concentrated active ingredients to address specific skin concerns.', '../Products/Skin Care/SC007.jpg', 5660.00, 3800.00, 10, 'Yes', 3.50),
(153, 'SC008', 'Beard Care Products', 'Skincare product', 'Beard Oil, Moisturizes and softens the beard and underlying skin.', '../Products/Skin Care/SC008.jpg', 5660.00, 3800.00, 10, 'Yes', 3.50),
(154, 'SC009', 'Aftershave', 'Skincare product', 'Soothes the skin after shaving, reduces irritation, and prevents razor bumps.', '../Products/Skin Care/SC009.jpg', 5660.00, 3800.00, 10, 'Yes', 3.50),
(155, 'SC010', 'Face Mask', 'Skincare product', 'Provides deep treatment for specific skin concerns like dryness, oiliness, or dullness', '../Products/Skin Care/SC010.jpg', 5660.00, 3800.00, 10, 'Yes', 3.50),
(156, 'SC011', 'Lip Balm', 'Skincare product', 'Hydrates and protects the lips from dryness and cracking.', '../Products/Skin Care/SC011.jpg', 5660.00, 1580.00, 10, 'Yes', 3.50),
(157, 'SC012', 'Night Cream', 'Skincare product', 'Contains ingredients like retinol or peptides to boost skin regeneration.', '../Products/Skin Care/SC012.jpg', 2100.00, 1580.00, 10, 'Yes', 3.50),
(158, 'SC013', 'Acne Treatment', 'Skincare product', 'Targets and treats breakouts, reduces inflammation, and prevents future acne', '../Products/Skin Care/SC013.jpg', 2100.00, 1580.00, 10, 'Yes', 3.50),
(159, 'SC014', 'Face Scrub', 'Skincare product', 'Provides deeper exfoliation to remove dead skin and improve texture.', '../Products/Skin Care/SC014.jpg', 2100.00, 1580.00, 10, 'Yes', 3.50),
(160, 'SC015', 'Anti-Aging Cream', 'Skincare product', 'Reduces the appearance of fine lines, wrinkles, and age spots.', '../Products/Skin Care/SC015.jpg', 2100.00, 1580.00, 10, 'Yes', 3.50),
(51, 'W001', 'Dress Watch', 'Watch', ' The dress watch is sleek and elegant, with a simple design.\nIts thin case, leather and metal strap, minimalistic dial makes it super comfy.', '../Products/Watch/W001.jpg', 4500.00, 3200.00, 45, 'Yes', 4.50),
(52, 'W002', 'Diver Watch', 'Watch', ' This Robust watch is designed for underwater activities.It is water-resistant (typically up to 200 meters or more), rotating bezel, luminescent hands and markers.', '../Products/Watch/W002.jpg', 4500.00, 3200.00, 65, 'Yes', 4.50),
(53, 'W003', 'Diver Watch', 'Watch', 'Its mainly for underwater .Its occationally can be put on water sports, casual wear.', '../Products/Watch/W003.jpg', 4500.00, 3200.00, 76, 'Yes', 4.50),
(54, 'W004', 'Diver Watch', '', ' This Robust watch is designed for underwater activities.It is water-resistant (typically up to 200 meters or more), rotating bezel, luminescent hands and markers.', '../Products/Watch/W004.jpg', 4500.00, 3200.00, 86, 'Yes', 4.50),
(55, 'W005', 'Diver Watch', 'Watch', 'It is water -resistance suitable for water spots.Every shade of this stylish watch is available.', '../Products/Watch/W005.jpg', 4500.00, 3200.00, 754, 'Yes', 4.50),
(56, 'W006', 'Chronograph Watch', '', 'It is a built-in stopwatch function watch.Ready to put on almost every fuctions like casual wear or everyday use.\n', '../Products/Watch/W006.jpg', 4500.00, 3200.00, 7865, 'Yes', 4.50),
(57, 'W007', 'Chronograph Watch', 'Watch', ' Its features are  multiple sub-dials, pushers to start/stop/reset the chronograph.Ready to put on almost every fuctions like casual wear or everyday use.\n', '../Products/Watch/W007.jpg', 4500.00, 3200.00, 7656, 'Yes', 3.60),
(58, 'W008', 'Chronograph Watch', '', 'It is a built-in stopwatch function watch.Ready to put on almost every fuctions like casual wear or everyday use.\n', '../Products/Watch/W008.jpg', 6700.00, 4500.00, 65, 'Yes', 3.50),
(59, 'W009', 'Chronograph Watch', 'Watch', ' Its features are  multiple sub-dials, pushers to start/stop/reset the chronograph.Ready to put on almost every fuctions like casual wear or everyday use.\n', '../Products/Watch/W009.jpg', 6000.00, 4500.00, 756, 'Yes', 5.00),
(60, 'W010', 'Pilot Watch', 'Watch', ' This watch is  inspired by aviation, known for their legibility and functionality. Large dial, easy-to-read numerals with additional complications like GMT or chronograph.', '../Products/Watch/W010.jpg', 8000.00, 7800.00, 7655, 'Yes', 5.00),
(61, 'W011', 'Pilot Watch', 'Watch', 'It is a inspired watch by avaition .Ready to put on casual and outdoor activities.', '../Products/Watch/W011.jpg', 8900.00, 7500.00, 765, 'Yes', 3.80),
(62, 'W012', 'Field Watch', 'Watch', 'It is a  watch of simple design, durable materials, clear numerals  with a leather strap.', '../Products/Watch/W012.jpg', 3400.00, 3000.00, 76, 'Yes', 4.60),
(63, 'W013', 'Field Watch', 'Watch', 'This watch is designed with fabric strap,designed for military use.', '../Products/Watch/W013.jpg', 3700.00, 3500.00, 76, 'Yes', 4.70),
(64, 'W014', 'Field Watch', 'Watch', 'This watch is designed with fabric strap,designed for military use.It is suitable for outdoor activities, casual wear.', '../Products/Watch/W014.jpg', 4300.00, 3600.00, 76, 'Yes', 4.80),
(65, 'W015', 'Smartwatch', 'Watch', 'High-tech watch with touchscreen displays and various smart features.Its features are notifications, fitness tracking, apps, also integrated with mobile payment systems.', '../Products/Watch/W015.jpg', 3200.00, 2200.00, 765, 'Yes', 4.20),
(66, 'W016', 'Skeleton Watch', 'Watch', 'It is visible movement, artistic design, with  mechanical body.', '../Products/Watch/W016.jpg', 3280.00, 4332.00, 54, 'Yes', 5.00),
(67, 'W017', 'Luxury Watch', 'Watch', 'It is  high-end watches crafted from premium materials with intricate details.Its features are  precious metals, gemstones, Swiss movement, brand prestige.Can be worn for status symbol.', '../Products/Watch/W017.jpg', 5600.00, 4332.00, 654, 'Yes', 5.00),
(68, 'W018', 'Digital Watch', 'Watch', 'Its features are precious metals, gemstones, Swiss movement, brand prestige.', '../Products/Watch/W018.jpg', 8955.00, 4322.00, 765, 'Yes', 4.00),
(69, 'W019', 'GMT Watch', 'Watch', 'It  display time in multiple time zones.Its features are additional hour hand, rotating 24-hour bezel, often used by travelers.', '../Products/Watch/W019.jpg', 4493.00, 2223.00, 655, 'Yes', 5.00),
(70, 'W020', 'Tactical Watch', 'Watch', 'Water-resistant, shock-resistant,  features like compass. This wtch is used for outdoor adventures, military use, rugged environments etc.', '../Products/Watch/W020.jpg', 5555.00, 2340.00, 65, 'Yes', 4.01),
(71, 'W021', 'Tactical Watch', 'Watch', 'Water-resistant, shock-resistant,  features like compass. This wtch is used for outdoor adventures, military use, rugged environments etc.', '../Products/Watch/W021.jpg', 5443.00, 3400.00, 66, 'Yes', 3.90),
(72, 'W022', 'Tactical Watch', 'Watch', 'It is featured with altimeter , durable watches designed for extreme conditions and outdoor activities.', '../Products/Watch/W022.jpg', 4533.00, 3900.00, 66, 'Yes', 3.80),
(73, 'W023', 'Tactical Watch', 'Watch', 'It is featured with altimeter , durable watches designed for extreme conditions and outdoor activities.', '../Products/Watch/W023.jpg', 4432.00, 3580.00, 65, 'Yes', 3.70),
(74, 'W024', 'Minimalist Watch', 'Watch', 'Plain dial, thin case,  monochrome dice makes it super stylish for everyday wear.', '../Products/Watch/W024.jpg', 4330.00, 4000.00, 653, 'Yes', 2.60),
(75, 'W025', 'Minimalist Watch', 'Watch', 'Watch with a simple and clean design, focusing on minimal elements', '../Products/Watch/W025.jpg', 4320.00, 4000.00, 54, 'Yes', 3.50),
(76, 'W026', 'Minimalist Watch', 'Watch', 'Watch with a simple and clean design, focusing on minimal elements', '../Products/Watch/W026.jpg', 4320.00, 4000.00, 55, 'Yes', 3.50),
(77, 'W027', 'Hybrid Smartwatch', 'Watch', 'It  combines with  the traditional analog watch design with smart features.Pastelcolours are available here for causal settings or random.', '../Products/Watch/W027.jpg', 1230.00, 1150.00, 55, 'Yes', 3.50),
(78, 'W028', 'Hybrid Smartwatch', 'Watch', ' Analog dial with hidden smart features like notifications, fitness tracking.\nOccasions: Everyday wear, tech-savvy environments.', '../Products/Watch/W028.jpg', 9000.00, 7500.00, 66, 'Yes', 3.50),
(79, 'W029', 'Hybrid Smartwatch', 'Watch', 'Analog dial with hidden smart features of  notifications.It combines the traditional analog watch with smart features.', '../Products/Watch/W029.jpg', 4900.00, 3500.00, 77, 'Yes', 3.50),
(80, 'W030', 'Hybrid Smartwatch', 'Watch', 'Analog dial with hidden smart features of  notifications.It combines the traditional analog watch with smart features.', '../Products/Watch/W030.jpg', 5590.00, 5000.00, 88, 'Yes', 3.50),
(81, 'W031', 'Pocket Watch', 'Watch', 'Description: Classic watches carried in a pocket, often with a chain.\nFeatures: Hinged cover, mechanical movement, often used as collector\'s items.', '../Products/Watch/W031.jpg', 9099.00, 8500.00, 99, 'Yes', 3.50),
(82, 'W032', 'Pocket Watch', 'Watch', 'It is normally put on  historical or vintage fashion, formal events for its hinged cover and mechanical movement.', '../Products/Watch/W032.jpg', 900.00, 750.00, 100, 'Yes', 3.50);

-- --------------------------------------------------------

--
-- Table structure for table `product_info_new`
--

CREATE TABLE `product_info_new` (
  `Product_id` int(11) NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `Product_name` varchar(255) NOT NULL,
  `Product_category` varchar(100) DEFAULT NULL,
  `Product_Description` text DEFAULT NULL,
  `Product_image_path` varchar(255) DEFAULT NULL,
  `Old_price` decimal(10,2) DEFAULT NULL,
  `New_price` decimal(10,2) DEFAULT NULL,
  `Stock_quantity` int(11) DEFAULT NULL,
  `Stock_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info_new`
--

INSERT INTO `product_info_new` (`Product_id`, `Product_code`, `Product_name`, `Product_category`, `Product_Description`, `Product_image_path`, `Old_price`, `New_price`, `Stock_quantity`, `Stock_status`) VALUES
(1, 'shoe001', 'Shoes Example ', 'Shoes ', 'srra rafs fg', '0', NULL, 12121.00, 50, NULL),
(2, 'shoe0013', 'Shoes Example 2', 'Shoes ', 'fdghd jh', 'uploads/Sorot.png', NULL, 1200.00, 50, 'Yes'),
(3, 'shoe0014', 'Shoes Example 5', 'Shoes ', 'gfhdf jdfj djg', 'uploads/ezgif-2-ad086d9872.jpg', NULL, 50000.00, 50, 'Yes'),
(4, 'shoe0016', 'Shoes Example 6', 'Shoes ', 'fgdh fxdghd hgf', 'uploads/Sorot.png', NULL, 50000.00, 50, 'Yes'),
(5, 'shoe0017', 'Shoes Example 7', 'fgjhfg ', 'sdgh sdhdfgh ', 'uploads/Sorot.png', NULL, 5000.00, 50, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `sellersinfo`
--

CREATE TABLE `sellersinfo` (
  `seller_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `nid_number` varchar(17) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `seller_picture` varchar(255) NOT NULL,
  `nid_picture` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist_info`
--
ALTER TABLE `artist_info`
  ADD PRIMARY KEY (`artist_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`);

--
-- Indexes for table `art_gallery`
--
ALTER TABLE `art_gallery`
  ADD PRIMARY KEY (`art_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`),
  ADD UNIQUE KEY `nid_number` (`nid_number`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`Product_code`),
  ADD UNIQUE KEY `idx_product_id` (`Product_id`);

--
-- Indexes for table `product_info_new`
--
ALTER TABLE `product_info_new`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `sellersinfo`
--
ALTER TABLE `sellersinfo`
  ADD PRIMARY KEY (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist_info`
--
ALTER TABLE `artist_info`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `art_gallery`
--
ALTER TABLE `art_gallery`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=814;

--
-- AUTO_INCREMENT for table `product_info_new`
--
ALTER TABLE `product_info_new`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sellersinfo`
--
ALTER TABLE `sellersinfo`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `art_gallery`
--
ALTER TABLE `art_gallery`
  ADD CONSTRAINT `art_gallery_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist_info` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
