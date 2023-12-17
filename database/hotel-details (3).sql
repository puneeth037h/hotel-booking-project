-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel-details`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(30) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `checkin` date NOT NULL,
  `time` time NOT NULL,
  `checkout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `mobile`, `email`, `location`, `checkin`, `time`, `checkout`) VALUES
('gjlkj', 2147483647, 'sdfghj@gmail.com', 'dfghjk', '2023-11-03', '12:08:00', '2023-11-30'),
('dfghj', 7829630, 'dfgh@gmail.com', 'wertyyj', '2023-11-16', '11:28:00', '2023-11-15'),
('puneeth', 2147483647, 'gjjg@gmail.com', 'fhgfjh', '2023-11-16', '00:45:00', '2023-11-29'),
('giri', 588961, 'giri@gmail.com', 'ggkjhkj', '2023-12-13', '22:23:00', '2023-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `starting_price` int(6) NOT NULL,
  `thumbnail` varchar(400) NOT NULL,
  `rating` int(2) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id` int(4) NOT NULL,
  `description` varchar(400) NOT NULL,
  `map` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`name`, `city`, `state`, `starting_price`, `thumbnail`, `rating`, `phone`, `email`, `address`, `id`, `description`, `map`) VALUES
('Taj Mahal Palace', 'Mumbai', 'Maharashtra', 500, 'https://www.hotelscombined.com/himg/14/63/0c/expediav2-76334-aa6262-481247.jpg', 5, 966653366, 'info@tajmahalpalace.com', 'Apollo Bunder, Colaba, Mumbai, Maharashtra, India', 1, 'A symbol of luxury and opulence, the Taj Mahal Palace in Mumbai is an iconic landmark. With its distinctive architecture, impeccable service, and breathtaking views of the Arabian Sea, it offers a truly regal experience.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3774.2220331037097!2d72.83065662497337!3d18.921563832251486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7d1c06fffffff%3A0xc0290485a4d73f57!2sThe%20Taj%20Mahal%20Palace%2C%20Mumbai!5e0!3m2!1sen!2sin!4v1702791390284!5m2!1sen!2sin\r\n'),
('The Oberoi Amarvilas', 'Agra', 'Uttar Pradesh', 800, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/47406101.jpg?k=6bd9851de573a4cd5bd55580b4c849f6899eeaf2a8d88ca5404a5a320db90c5b&o=&hp=1', 5, 962231515, 'reservations@oberoiamarvilas.com', 'Taj East Gate Road, Agra, Uttar Pradesh, India', 2, 'Nestled in the heart of Agra, The Oberoi Amarvilas is a haven of tranquility overlooking the Taj Mahal. The hotel combines Mughal-inspired architecture with modern luxury, providing guests with an enchanting and unforgettable stay.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3549.6276533360124!2d78.04643717523378!3d27.168003176495958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3974711bd2e1a9c1%3A0xd69a6ec8d865a0a5!2sThe%20Oberoi%20Amarvilas%2C%20Agra!5e0!3m2!1sen!2sin!4v1702791726525!5m2!1sen!2sin\r\n'),
('Leela Palace', 'New Delhi', 'Delhi', 700, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/5e/6b/e4/inner-courtyard.jpg?w=700&h=-1&s=1', 5, 939331234, 'reservations@theleela.com', 'Diplomatic Enclave, Chanakyapuri, New Delhi, Delhi, India', 3, 'The Leela Palace, a luxurious retreat in the heart of the city, is known for its opulent decor and impeccable hospitality. With world-class amenities and a regal ambiance, it promises a stay fit for royalty.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.6634835225445!2d77.18675567528702!3d28.579866175693557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d1d606f974797%3A0xa39df204f5d2d7f7!2sThe%20Leela%20Palace%2C%20New%20Delhi!5e0!3m2!1sen!2sin!4v1702791812151!5m2!1sen!2sin\r\n'),
('ITC Grand Chola', 'Chennai', 'Tamil Nadu', 600, 'https://www.itchotels.com/content/dam/itchotels/in/umbrella/itc/hotels/itcgrandchola-chennai/images/overview/overview-desktop/exterior-dusk.png', 5, 942220000, 'reservations@itchotels.in', 'Mount Road, Guindy, Chennai, Tamil Nadu, India', 4, 'A masterpiece of grandeur and elegance, ITC Grand Chola in Chennai is a tribute to the Chola Dynasty. This five-star luxury hotel combines traditional charm with modern amenities, offering a royal experience to its guests.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.3946739491716!2d80.21801647484206!3d13.010520287308394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a52676d5bb54be1%3A0xf2c9c9c91db16643!2sITC%20Grand%20Chola%2C%20Chennai!5e0!3m2!1sen!2sin!4v1702791890218!5m2!1sen!2sin\r\n'),
('Rambagh Palace', 'Jaipur', 'Rajasthan', 900, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv7E2DeWxrIgeXYuIj5hlNXrcxM8MkJdccHw&usqp=CAU', 5, 912385700, 'reservations@tajhotels.com', 'Bhawani Singh Road, Jaipur, Rajasthan, India', 5, 'Once a royal residence, Rambagh Palace in Jaipur exudes old-world charm and grandeur. Set amidst lush gardens, this heritage hotel offers a unique blend of history, luxury, and impeccable service.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.169813920089!2d75.80557487522383!3d26.89810527665581!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db41f78970ac5%3A0xe9eef625b7f871c!2sRambagh%20Palace%20-%20Jaipur!5e0!3m2!1sen!2sin!4v1702791968359!5m2!1sen!2sin\r\n'),
('Wildflower Hall', 'Shimla', 'Himachal Pradesh', 750, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/dd/51/cc/wildflower-hall-shimla.jpg?w=700&h=-1&s=1', 5, 972648585, 'reservations.wildflower@oberoihotels.com', 'Chharabra, Shimla, Himachal Pradesh, India', 6, 'Perched high in the Himalayas, Wildflower Hall in Shimla is a luxury mountain resort with breathtaking views. Surrounded by cedar forests, it provides a perfect escape for those seeking tranquility and natural beauty.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3415.8486826095073!2d77.24509847538889!3d31.113937474402626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390583b174937b27%3A0x43ba3a24f361ddb2!2sWildflower%20Hall%2C%20An%20Oberoi%20Resort%2C%20Shimla!5e0!3m2!1sen!2sin!4v1702792057426!5m2!1sen!2sin\r\n'),
('Majestic Palace', 'Kolkata', 'West Bengal', 400, 'https://media-cdn.tripadvisor.com/media/photo-s/12/75/8e/7b/view-from-the-compound.jpg', 4, 922492323, 'info@majesticpalace.com', 'Park Street, Kolkata, West Bengal, India', 7, 'Majestic Palace, located in the heart of the city, is a contemporary and stylish hotel offering modern amenities and personalized service. Its central location makes it an ideal choice for both business and leisure travelers.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29474.995052771188!2d88.3156843743164!3d22.56509690000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a0277a86bffed67%3A0xa8721c2a1d391146!2sHotel%20Majestic!5e0!3m2!1sen!2sin!4v1702792152895!5m2!1sen!2sin\r\n'),
('Vivanta by Taj - Fort Aguada', 'Goa', 'Goa', 550, 'https://www.goa-hotels-india.com/data/Pictures/OriginalPhoto/3394/339403/339403063/picture-sinquerim-vivanta-by-taj-fort-aguada-hotel-14.JPEG', 4, 836645858, 'vivanta.fortaguada@tajhotels.com', 'Sinquerim, Candolim, Goa, India', 8, 'Nestled on the shores of the Arabian Sea, Vivanta by Taj - Fort Aguada is a charming blend of elegance and beachfront luxury. With stunning views and top-notch facilities, it ensures a memorable stay in Goa.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3844.7558564051196!2d73.76450127489149!3d15.497559085102097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbfc17572c6093d%3A0xc2b14e0b1a4873ef!2sTaj%20Fort%20Aguada%20Resort%20%26%20Spa%2C%20Goa!5e0!3m2!1sen!2sin!4v1702792201104!5m2!1sen!2sin\r\n'),
('Hyatt Regency', 'Pune', 'Maharashtra', 450, 'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2015/05/07/1206/Hyatt-Place-Pune-Hinjewadi-P010-Exterior-by-Morning-Landscape.jpg/Hyatt-Place-Pune-Hinjewadi-P010-Exterior-by-Morning-Landscape.16x9.jpg', 4, 2147483647, 'pune.regency@hyatt.com', 'Weikfield IT Park, Nagar Road, Pune, Maharashtra, India', 9, 'Hyatt Regency is a premium hotel that combines modern luxury with warm hospitality. Located in prime urban locations, it caters to both business and leisure travelers, providing a seamless blend of comfort and convenience.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3782.3164041830014!2d73.90957827496393!3d18.559768782541422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c13f8898d47d%3A0xb720e75df7dab049!2sHyatt%20Regency%20Pune%20%26%20Residences!5e0!3m2!1sen!2sin!4v1702792273113!5m2!1sen!2sin\r\n'),
('The Lalit Grand Palace', 'Srinagar', 'Jammu and Kashmir', 600, 'https://assets.vogue.in/photos/646ddfc19760d4533213f98d/3:2/w_2499,h_1666,c_limit/Facade%202.jpg', 4, 2147483647, 'srinagar@thelalit.com', 'Gupkar Road, Srinagar, Jammu and Kashmir, India', 10, 'Once the residence of the Maharaja, The Lalit Grand Palace in Srinagar is a stunning heritage hotel on the banks of Dal Lake. With its regal architecture and exquisite gardens, it offers a glimpse into the royal lifestyle.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3304.5837546659463!2d74.86528020000002!3d34.0801831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38e18f6c19278e0b%3A0xcd0e36f777784693!2sThe%20LaLiT%20Grand%20Palace%20Srinagar!5e0!3m2!1sen!2sin!4v1702792352051!5m2!1sen!2sin\r\n'),
('JW Marriott', 'Bengaluru', 'Karnataka', 850, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/ee/2d/9d/jw-marriott-hotel-mumbai.jpg?w=700&h=-1&s=1', 5, 2147483647, 'blrjw.reservations@marriott.com', 'Vittal Mallya Road, Ashok Nagar, Bengaluru, Karnataka, India', 11, 'JW Marriott is synonymous with luxury and sophistication. With its world-class amenities, fine dining options, and impeccable service, it caters to the discerning traveler seeking a truly elevated experience.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.9920235242594!2d77.5950513!3d12.972361800000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1679c4616049%3A0x21e7060fdb88a82b!2sJW%20Marriott%20Hotel%20Bengaluru!5e0!3m2!1sen!2sin!4v1702792400450!5m2!1sen!2sin\r\n'),
('Radisson Blu Plaza', 'Hyderabad', 'Telangana', 500, 'https://pix7.agoda.net/hotelImages/9455124/0/4311c63b7c31d6e42eab66d2078cf3c2.jpg?ca=20&ce=0&s=414x232&ar=16x9', 4, 2147483647, 'info@rdhyderabad.com', 'Banjara Hills, Hyderabad, Telangana, India', 12, 'Radisson Blu Plaza is a modern and stylish hotel known for its contemporary design and upscale amenities. Conveniently located in key business districts, it provides a comfortable stay for both business and leisure travelers.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.781214051182!2d78.4414643!3d17.4222842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb97325fdaac3d%3A0x52efca3dd8aa2a78!2sRadisson%20Blu%20Plaza%20Hotel%20Hyderabad%20Banjara%20Hills!5e0!3m2!1sen!2sin!4v1702792453964!5m2!1sen!2sin\r\n'),
('Park Hyatt', 'Chennai', 'Tamil Nadu', 700, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/df/e1/a3/park-hyatt-hyderabad.jpg?w=700&h=-1&s=1', 5, 2147483647, 'chennai.park@hyatt.com', 'Velachery Main Road, Guindy, Chennai, Tamil Nadu, India', 13, 'Park Hyatt is a luxury brand that offers a sophisticated and personalized experience. With its elegant design, gourmet dining, and exclusive spa services, it caters to those seeking the epitome of refined hospitality.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.3902261292474!2d80.2233187!3d13.010803999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a526772de5d643b%3A0x517d303714a83fc9!2sPark%20Hyatt%20Chennai!5e0!3m2!1sen!2sin!4v1702792499031!5m2!1sen!2sin\r\n'),
('The Westin', 'Gurgaon', 'Haryana', 600, 'https://gos3.ibcdn.com/73017900e52c11eaa94e0242ac110003.jpg', 4, 1244977777, 'reservations.westingurgaon@westin.com', 'Number 1, MG Road, Sector 29, New Delhi, Delhi, India', 14, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3507.088742293172!2d77.07058169999999!3d28.476874000000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d191c81bf691f%3A0x3cd72bad3b46329a!2sThe%20Westin%20Gurgaon%2C%20New%20Delhi!5e0!3m2!1sen!2sin!4v1702792577387!5m2!1sen!2sin\r\n'),
('Grand Hyatt', 'Mumbai', 'Maharashtra', 650, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIRu8LOaMwkiEI4szkH4z9pTHGhpNTe4GUag&usqp=CAU', 4, 2147483647, 'mumbai.grand@hyatt.com', 'Off Western Express Highway, Santacruz East, Mumbai, Maharashtra, India', 15, 'Grand Hyatt is a global luxury brand known for its upscale accommodations and world-class facilities. Whether for business or leisure, Grand Hyatt promises a lavish and memorable stay with its impeccable service and attention to detail.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.7026544649875!2d72.8511248!3d19.0768067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c902003fc289%3A0x40308b1e806bc1ac!2sGrand%20Hyatt%20Mumbai%20Hotel%20%26%20Residences!5e0!3m2!1sen!2sin!4v1702792710106!5m2!1sen!2sin\r\n'),
('Novotel', 'Visakhapatnam', 'Andhra Pradesh', 550, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/97/13/5a/novotel-visakhapatnam.jpg?w=700&h=-1&s=1', 4, 2147483647, 'info@novotelvisakhapatnam.com', 'Beach Road, Visakhapatnam, Andhra Pradesh, India', 16, 'Novotel is a contemporary hotel brand that combines modern design with a focus on sustainability. With its convenient locations and thoughtful amenities, Novotel offers a comfortable and eco-friendly stay for travelers of all types.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3800.789443470263!2d83.3125173!3d17.707404099999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a39436d41958883%3A0xe0af48edae5bd5ea!2sNovotel%20Visakhapatnam%20Varun%20Beach!5e0!3m2!1sen!2sin!4v1702792777824!5m2!1sen!2sin\r\n'),
('Fortune Select Grand', 'Chandigarh', '', 500, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/17883897.jpg?k=5ee6b30a3616fa2f583b6aa197c3380747cfd79fcc92a6a926530d7b005aa28a&o=&hp=1', 4, 1724299999, 'reservations@fortuneselectgrand.com', 'Plot No. 97, Industrial Area Phase 2, Chandigarh, India', 17, 'Fortune Select Grand is a premium hotel known for its elegant design and warm hospitality. With its well-appointed rooms and modern facilities, it caters to the needs of both business and leisure travelers seeking a comfortable stay.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3877.7299201050364!2d79.44097889999999!3d13.613300299999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4d4b96b5df1eb1%3A0xf798b22548dcfcba!2sFortune%20Select%20Grand%20Ridge%2C%20Trupati%20-%20Member%20ITC%27s%20hotel%20group!5e0!3m2!1sen!2sin!4v1702792851894!5m2!1sen!2sin\r\n'),
('Trident', 'Jaipur', 'Rajasthan', 800, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/32617580.jpg?k=e176776367f33646411fe1f31c2de3ffa0e5f36493672685ae435a2742f762e6&o=&hp=1', 5, 1412670101, 'jaipur@tridenthotels.com', 'Amber Fort Road, Opposite Jal Mahal, Jaipur, Rajasthan, India', 18, 'Trident is a luxury hotel brand that exemplifies understated elegance and impeccable service. With its tranquil ambiance and attention to detail, Trident provides a serene and refined retreat for discerning travelers.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3556.30167577689!2d75.8428861!3d26.957344399999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db1b2f7798c6d%3A0x73bdfdcc7132d805!2sTrident%20Hotel%20Jaipur!5e0!3m2!1sen!2sin!4v1702792998091!5m2!1sen!2sin\r\n'),
('Crowne Plaza', 'Kochi', 'Kerala', 600, 'https://imgcld.yatra.com/ytimages/image/upload/t_seo_Hotel_w_930_h_550_c_fill_g_auto_q_40_f_jpg/v1399896761/Domestic%20Hotels/Hotels_Cochin/Crowne%20Plaza%20Kochi/Overview.jpg', 4, 2147483647, 'info@crowneplazakochi.com', 'Marine Drive, Kochi, Kerala, India', 19, 'Crowne Plaza is a global hotel chain offering upscale accommodations and business-friendly amenities. With its strategic locations and modern facilities, it caters to the needs of business travelers seeking a seamless and productive stay.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.997984249202!2d76.3186795!3d9.9341249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b087300463f524d%3A0x31d935bec35a2b35!2sCrowne%20Plaza%20Kochi!5e0!3m2!1sen!2sin!4v1702792934420!5m2!1sen!2sin\r\n'),
('The Leela Ambience Convention Hotel', 'Delhi', 'Delhi', 750, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/96/a1/5c/the-leela-ambience-convention.jpg?w=700&h=-1&s=1', 5, 1171721234, 'reservations@theleela.com', '1, CBD, Maharaja Surajmal Road, Near Yamuna Sports Complex, Delhi, India', 20, 'The Leela Ambience Convention Hotel is a contemporary and stylish property designed for both business and leisure travelers. With its modern amenities and spacious accommodations, it provides a comfortable and convenient stay in Delhi.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.918692534467!2d77.30212184999999!3d28.662153099999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfb6eed0b17a5%3A0x53df5800c6e0730d!2sThe%20Leela%20Ambience%20Convention%20Hotel%2C%20Vishwas%20Nagar%20Extension%2C%20Vishwas%20Nagar%2C%20Shahdara%2C%20Delhi%2C%20110032!5e0!3m2!1sen!2sin!4v1702793128901!5m2!1sen!2sin\r\n'),
('Oberoi Udaivilas', 'Udaipur', 'Rajasthan', 900, 'https://www.oberoihotels.com/-/media/oberoi-hotels/website-images/the-oberoi-udaivilas-udaipur/gallery/featured/udaivilas-gallery-featured-3-courtyard-724x407.jpg?extension=webp', 5, 2147483647, 'udaivilas@oberoihotels.com', 'Haridasji Ki Magri, Mulla Talai, Udaipur, Rajasthan, India', 21, 'Oberoi Udaivilas in Udaipur is a palatial resort set on the banks of Lake Pichola. Known for its regal architecture, luxurious accommodations, and stunning views, it offers a royal experience in the City of Lakes.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3628.3422309252255!2d73.67244120000001!3d24.577382699999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396ccf804ea9e2f3%3A0x21eb806bf9fc7e9a!2sThe%20Oberoi%20Udaivilas%2C%20Udaipur!5e0!3m2!1sen!2sin!4v1702793186048!5m2!1sen!2sin\r\n'),
('Marriott Jaipur', 'Jaipur', 'Rajasthan', 650, 'https://www.hotelierindia.com/cloud/2021/11/22/u95LOioo-JW-Marriott-Jaipur-Resort-Spa.jpg', 4, 1414567777, 'jaipurmarriott.reservations@marriott.com', 'Ashram Marg, Near Jawahar Circle, Jaipur, Rajasthan, India', 22, 'Marriott Jaipur is a contemporary hotel in the heart of the Pink City. With its modern amenities, stylish design, and warm hospitality, it provides a comfortable and convenient base for exploring the rich culture and history of Jaipur.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3559.94317302987!2d75.79618889999999!3d26.8417597!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db5e591a66633%3A0xef403de8e5c9ad89!2sJaipur%20Marriott%20Hotel!5e0!3m2!1sen!2sin!4v1702793254094!5m2!1sen!2sin\r\n'),
('Taj Exotica Resort & Spa', 'Goa', '', 700, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/70096978.jpg?k=9128f3db632d0ab97cef32032fa0f225ac47114b23ec6498d3721bef92564312&o=&hp=1', 5, 2147483647, 'tajexoticagoa@tajhotels.com', 'Calwaddo, Benaulim, Goa, India', 23, 'Taj Exotica Resort & Spa is a tropical paradise in Goa, offering a blend of luxury and natural beauty. With its beachfront location, lush gardens, and world-class spa, it provides a tranquil escape for those seeking relaxation and indulgence.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4577.753733109506!2d73.9242550577025!3d15.245054756100037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbfb0ac6be75689%3A0x31a73ca5d4a80468!2sTaj%20Exotica%20Resort%20%26%20Spa%2C%20Goa!5e0!3m2!1sen!2sin!4v1702793316748!5m2!1sen!2sin\r\n'),
('The Ritz-Carlton', 'Bangalore', 'Karnataka', 850, 'https://global-uploads.webflow.com/5cf16f74881a650c03c2f354/605fb766d9ea2761aa45dfe7_5ea1d63806d5f8ddde285e8c_The%2520Ritz-Carlton%252C%2520Bangalore%2520general.jpeg', 5, 2147483647, 'reservations.bangalore@ritzcarlton.com', '99, Residency Road, Bangalore, Karnataka, India', 24, 'The Ritz-Carlton is synonymous with luxury and refinement. With its opulent accommodations, gourmet dining, and impeccable service, it caters to the most discerning travelers, promising an unforgettable and indulgent experience.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.056505727119!2d77.6013085!3d12.968236099999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1678b41def33%3A0xfe8ae8000ba8c87f!2sThe%20Ritz-Carlton%2C%20Bangalore!5e0!3m2!1sen!2sin!4v1702793362181!5m2!1sen!2sin\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `name` varchar(30) NOT NULL,
  `image1` varchar(300) NOT NULL,
  `image2` varchar(300) NOT NULL,
  `image3` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`name`, `image1`, `image2`, `image3`) VALUES
('Crowne Plaza', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/b7/54/2b89fb0169218c32f5113cf25ead51eb156cab1d9bc4a9902d628d1b3640.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/0b/3f/160819731f71e1d50643dc03f3d2632ba2c0e9640e275dd56fed4801481c.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/c7/95/ab685af40ca07c3f36aaee6c9006b6ca70d4ad9bb1c60409042884e8ee5e.jpeg'),
('Fortune Select Grand', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/ba/0e/51c24fc7da1643f24028adf40cdae5ef8754d14ae4265ac57f4f603a6573.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/7a/ae/c774aa6392555c6056da4409b637682ab57b9b2e3d342b1871938dfb0573.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/e0/12/c32d766f4448c2dd7cfb7450f07206c75d435c9f32bf936881c66e8a79ba.jpeg'),
('Grand Hyatt', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/18/84/7f77cc9cbeb4d330ec59f3dbc191bd832cb2e7c8b160a89ab1c6e764c560.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/55/03/41747a7143c9b2e4b92a3c34ebef61df01c4c4395cdf021e53da8461b1f8.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/d3/73/4c7f1544fc67a50575469a600256269375da85a35d0ec3d2784aaad585f4.jpeg'),
('Hotel Leela Palace', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/15/6f/69340603b3ccd073ae862a6931937f76196bc6f015494480345c3672bf64.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/c8/b4/adb621501a83ad14d856c882c61141191e95ce2188a84d6dd0579e3b8c2c.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/68/11/985f94b34c4970a55c6b12cc96090f738f1e0dac42a4ab32b3686d28f31e.jpeg'),
('Hyatt Regency', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/fe/01/1c14e952ba922d7391f432a0fce420a37d1e02379e5b6d80c9d73c344ec2.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/00/2c/86cdf9a8595eed4ca319749184aa9fad7aca16a0713ddc04e2b4ba5c0cd1.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/02/83/f298f3bd1f286c4b18a7ed110cfb392edbd6e5e3b2c1fdcd44f360d92a91.jpeg'),
('ITC Grand Chola', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/b8/36/240275a454bcb9283e2dd06838b81b5149c175c3d136831792835667c5d1.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/ee/0f/bbd275d72bf167024ee92428ae0e90bed54b04cc0559fa69c5be9df6910b.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/9c/aa/01b45b287d63e995f406777589e9676b481bd4d8d2261f1a3dbf11e486e5.jpeg'),
('JW Marriott', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/30/e2/73e8dbff27c8d802f3775b6ca74b304bb383d763eb34699aa7b4c1b2427d.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/3b/0d/48f031846fbeb1650fb4a0f2b6cf934e30f897c12b0cf7d6af646890ee68.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/cb/61/87fff09a6268da9f22e8f149c19fb6246facd95ceab175f7af051cd056cf.jpeg'),
('Marriott Jaipur', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/62/c4/26029ad67b12638274194e7cd0d8b69fcbc7f7418c007a7fdeec8029a32d.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/94/05/12ada43d382ba435b31645dda8293317e7ab3304966735102c3b12c83147.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/bb/2f/3e5899447dd875f2007847813c96fd95395d9ee91f792aff180c1f3fdca1.jpeg'),
('Novotel', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/42/1f/f08f5270a5101c688c7c08d4c3c130c964a77e4e94bb0a522387d33b9dd5.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/e8/76/22fb6bd2d98ee4b6bbdd4055e3e955b6e3ea1c5f4658ba9b2e49796d7b22.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/80/53/415a08cf8360feca0bb92c9d0f2f800b70f0b81c076d11999a1c102049ef.jpeg'),
('Oberoi Udaivilas', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/d4/4e/395bf4bf7009e19bf139a5d959afd9dc4ed584bef5bb928e946a0e50fc42.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/84/1a/240a7fc335bbd250d83c0e1edb9d0fe4d2f8213e763afd1f9f9ca192be7a.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/38/1b/e3e168918ec31051c351c29d4aff8ddd58cf2d74d493774fad548e0491d2.jpeg'),
('Park Hyatt', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/b6/b4/d00c2d07e0031e00b608d18d67af0f0449704d9320eb57cda93f4c848b1e.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/fe/f3/0e686c9bdcc55f5babd59c92b979044ef6dc32a7498bef32ebec4e651cfd.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/cc/9d/325dac61e72f94384fb0beda0fceb350c0c0715ecae2976e6b8885397a5b.jpeg'),
('Radisson Blu Plaza', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/0f/86/25ff74e17951c4695847feff5bf51c685ef63ec8b16388d46d4b34a71ac6.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/eb/6e/8408a0e4e9fcc95361fadc6b6617c71c218d3564416b7733b633fc34a4c2.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/48/af/e64dfba6d218abe8073530051ca1ceef668d9d82f3c80c73c710bc41dbf8.jpeg'),
('Rambagh Palace', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/1d/75/9efb8984dfa73492dd95597e98cd45847781f89c53a329c0be95d7a32b9e.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/ef/48/fc833cc9e62d920f32d680a7a617192f0f3623f3ec75467abf3350616444.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/03/06/dc094c0e0d5682bdf49f768292e574ab37a093d836cd5f333e10684e3592.jpeg'),
('Taj Exotica Resort & Spa', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/ef/05/29058af72a0eb7044872e6eb4533b522fefecf4de77960c567e75c5292d4.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/3b/39/0cbab766e048d450faa6d4ae55aa078d78eecce569d630f6070695ce4f6a.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/c0/8b/a9676745712b9548118b15b4698ce933d927d9f21229f2d0052de8c34b60.jpeg'),
('Taj Mahal Palace', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/82/c8/71b8d29ec168c8c2802c2b9382409811e89a7139db4201bfe5fa19e2217e.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/07/83/6b2a60a4377c604828d467ff051fc7f009ff25dc97bcf43edea7f27f4674.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/0b/86/dd0e20bfcf9566d0041c354d0111347e36f1ed00ff891756cad4a2565459.jpeg'),
('The Lalit Grand Palace', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/3e/f0/504fbcb1c581040b670b73ce54936470b33ab841e6132d93cd1310c0b0d7.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/7c/0f/eae0da97484dc2af0b25c7d42a8e0e65ba2d4435e617c50931c756d3f8f5.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/10/0a/37278e7961d803a82bb9b8e95f5d18c73eae1eeea488413be7a64e3cb525.jpeg'),
('The Leela Ambience Convention ', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/62/f4/10ed839b0668552022a4a9ab648ea3fb329e2f15f1e44c86d1f314882e47.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/b3/61/27cf4ba537a815ce8998bd5789460aef89809413efae52ed3c71b6bb154d.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/hotelier-images/35/f0/abbcaa4377940ce49075f2d53b051d559f377b837e7558af8ee6bce02405.jpeg'),
('The Oberoi Amarvilas', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/0d/b0/4128a2979da5e8ef74168fc63d9ae6d941a75e49417c042735f1af2db9e3.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/55/d5/7ba0aff3c123893decf51b9ca345cc68f83645b03ff0af236d34ec900a7e.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/b0/2e/34c685b18c83cd5cb38b75ec399f164ac023f5a077cc42b688030b09f752.jpeg'),
('The Ritz-Carlton', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/60/9d/911979dd67b121d3a9ab9eb9ea6ea45589afa341d4a61f944f440464ac98.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/ab/a3/1db02e7389a7beee8ae18a248292c0f1f456a8a788a102a1c2c87617d153.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/01/ae/9de316f630eb86f0847276063aaa6ba153b496a003e45f7666a519f932ee.jpeg'),
('Trident', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/d6/67/952a30ae9feda77a8d7818cc8a879fd903c240fcde5b9fcc5c7d3b9441f5.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/f9/99/25b8ca54fdbdf1f8b95e878bd12eac962ca3184e6f2d42573d8f7313b88a.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/f0/59/4e8aed8865804976696d186756580f2101ce75f5e850a95d5764d7a22376.jpeg'),
('Wildflower Hall', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/39/f8/5fbbe97416b9e0512d591f48eb3463f3a0682cffedbe087bced296a5d613.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/67/50/1d0014bc3260c242150c62b8203b2a811160a6de66844c8866fd3983b306.jpeg', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/partner-images/f9/94/9281a10534e81f698bd0908961bdb07cd95ae055c6917adc39da70eb6d76.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
