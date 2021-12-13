USE springbootapps;

CREATE TABLE IF NOT EXISTS `springbootapps`.`tbl_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `category_name` VARCHAR(255) NULL DEFAULT NULL);


CREATE TABLE IF NOT EXISTS `springbootapps`.`tbl_product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME DEFAULT NULL,
  `last_updated` DATETIME DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
);

INSERT INTO tbl_category(category_name) VALUES ('Phones');
INSERT INTO tbl_category(category_name) VALUES ('Laptops');
INSERT INTO tbl_category(category_name) VALUES ('Shoes');
INSERT INTO tbl_category(category_name) VALUES ('Books');

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-100', 
    'Apple Iphone', 
    'New Apple Iphone smart Phone',
    'assets/images/Phones/Phones-100.jpg',
    1,
    100,
    60000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-101', 
    'Apple Iphone 13 mini (128 GB)', 
    'Latest Apple Iphone.',
    'assets/images/Phones/Phones-101.jpg',
    1,
    100,
    70000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-102', 
    'New Apple iPhone 12 Mini', 
    'New Apple iPhone 12 Mini (64GB) - Black',
    'assets/images/Phones/Phones-102.jpg',
    1,
    100,
    80000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-103', 
    'New Apple iPhone 12 Pro (128GB)', 
    'New Apple iPhone 12 Pro (128GB) - Graphite',
    'assets/images/Phones/Phones-103.jpg',
    1,
    100,
    90000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-104', 
    '5S Gold Compatible with iPhone', 
    '5S Gold Compatible with iPhone with 8 Mega Pixel Camera (16GB Internal Memory)',
    'assets/images/Phones/Phones-104.jpg',
    1,
    100,
    75000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-105', 
    'Apple iPhone XR (64GB)', 
    'Apple iPhone XR (64GB) - (Product) RED',
    'assets/images/Phones/Phones-105.jpg',
    1,
    100,
    50000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-106', 
    'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage)', 
    'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 6000 mAh with 8nm Processor | True 48 MP Quad Camera | 90Hz Refresh Rate',
    'assets/images/Phones/Phones-106.jpg',
    1,
    100,
    60000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-107', 
    'Samsung Galaxy M32 (Light Blue, 6GB RAM, 128GB Storage)', 
    'Samsung Galaxy M32 (Light Blue, 6GB RAM, 128GB Storage) 6 Months Free Screen Replacement for Prime',
    'assets/images/Phones/Phones-107.jpg',
    1,
    100,
    76000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-108', 
    'Samsung Galaxy A12', 
    'Samsung Galaxy A12 (Black, 6GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers',
    'assets/images/Phones/Phones-108.jpg',
    1,
    100,
    15999.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Phones-109', 
    'Samsung Galaxy A03s (Black)', 
    'Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) with No Cost EMI/Additional Exchange Offers',
    'assets/images/Phones/Phones-109.jpg',
    1,
    100,
    9000.00,
    1, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-100', 
    'HP 15 Ryzen 3 Thin & Light 15.6-inch (39.6 cms)', 
    'HP 15 Ryzen 3 Thin & Light 15.6-inch (39.6 cms) FHD Laptop (Ryzen 3 3250U/8GB/256GB SSD/Windows 10/MS Office/1.69 kg), 15s-gy0501AU, Silver',
    'assets/images/Laptops/Laptops-100.jpg',
    1,
    100,
    40000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-101', 
    'Acer Nitro 5 AN515-57 Gaming Laptop', 
    'Acer Nitro 5 AN515-57 Gaming Laptop | Intel Core i5-11400H | NVIDIA GeForce RTX 3050 Laptop Graphics | 15.6" FHD 144Hz IPS Display |16GB |256GB SSD+1TB',
    'assets/images/Laptops/Laptops-101.jpg',
    1,
    100,
    50000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-102', 
    'Dell Vostro 3405 14" (35.56cms) HD', 
    'Dell Vostro 3405 14" (35.56cms) HD AG Display Laptop (AMD Silver 3050U / 4GB / 256 SSD / Integrated Graphics / Win 10 + MSO/ Black) D552147WIN9BE',
    'assets/images/Laptops/Laptops-102.jpg',
    1,
    100,
    60000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-103', 
    'Lenovo IdeaPad Slim 1 Intel Celeron N4020 11.6" (29.46cm)', 
    'Lenovo IdeaPad Slim 1 Intel Celeron N4020 11.6" (29.46cm) HD Thin & Light Laptop (4GB/256 GB SSD/Windows 10/MS Office/Platinum Grey/1.2Kg), 81VT0071IN',
    'assets/images/Laptops/Laptops-103.jpg',
    1,
    100,
    70000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-104', 
    'Dell 15 (2021) Ryzen 3-3250U Laptop', 
    'Dell 15 (2021) Ryzen 3-3250U Laptop, 8GB DDR4, 256GB SSD, Win 10 + MS Office, Radeon Graphics, 15.6" (39.62 cms) FHD Display, Carbon Black',
    'assets/images/Laptops/Laptops-104.jpg',
    1,
    100,
    80000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-105', 
    'Dell 15 (2021) Athlon Silver 3050U Laptop', 
    'Dell 15 (2021) Athlon Silver 3050U Laptop, 4GB, 256GB SSD, Win 10 + MS Office, 15.6" (39.61 cms) FHD Display, Radeon Graphics, Soft Mint Color ',
    'assets/images/Laptops/Laptops-105.jpg',
    1,
    100,
    90000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-106', 
    'HP Chromebook 14-inch (35.56 cms)', 
    'HP Chromebook 14-inch (35.56 cms) Thin & Light Touchscreen Laptop (Celeron N4020/4GB/64GB eMMC + 256GB Expandable Storage/Chrome OS/1.46 kgs Light',
    'assets/images/Laptops/Laptops-106.jpg',
    1,
    100,
    45000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-107', 
    'AVITA Cosmos 2 in 1 Celeron Dual Core', 
    'AVITA Cosmos 2 in 1 Celeron Dual Core - (4 GB/64 GB EMMC Storage/Windows 10 Home) NS12T5IN021P 2 in 1 Laptop (11.6 inch, Charcoal Grey, 1.327 kg)',
    'assets/images/Laptops/Laptops-107.jpg',
    1,
    100,
    100000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-108', 
    'Acer Extensa 15 Thin & Light', 
    'Acer Extensa 15 Thin & Light Intel Processor Pentium Silver N5030 15.6 inches Business Laptop (4GB RAM/1TB HDD/Windows 10 Home/Integrated Graphic',
    'assets/images/Laptops/Laptops-108.jpg',
    1,
    100,
    50000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Laptops-109', 
    'HP Pavilion (2021)', 
    'HP Pavilion (2021) Intel 11th Gen Core i5 14 inches FHD Screen Thin & Light Laptop, 16GB RAM, 512GB SSD, Iris Xe Graphics, Windows 11, MS Office',
    'assets/images/Laptops/Laptops-109.jpg',
    1,
    100,
    60000.00,
    2, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-100', 
    'Asian Oxygen-01 navy Running shoes', 
    'Asian Oxygen-01 navy Running shoes dual capsule technology for boys | sports shoes for men | Latest Stylish Casual sneakers for men | Lace up lightweight shoes for running, walking, gym, trekking, hiking & party',
    'assets/images/Shoes/Shoes-100.jpg',
    1,
    100,
    1500.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-101', 
    'ASIAN Mens Bouncer-01', 
    'ASIAN Mens Bouncer-01 Sports,Walking,Gym,Training,Running Shoes',
    'assets/images/Shoes/Shoes-101.jpg',
    1,
    100,
    2000.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-102', 
    'ASIAN Mens Rider-01', 
    'ASIAN Mens Rider-01 Phylon Sports,Running,Walking Shoes',
    'assets/images/Shoes/Shoes-102.jpg',
    1,
    100,
    1200.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-103', 
    'ASIAN Mens Cosko', 
    'ASIAN Mens Cosko Running,Walking,Gym,Training Shoes',
    'assets/images/Shoes/Shoes-103.jpg',
    1,
    100,
    2200.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-104', 
    'ASIAN Mens shoes', 
    'ASIAN Mens Wonder-13 Sports Running Shoes',
    'assets/images/Shoes/Shoes-104.jpg',
    1,
    100,
    1800.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-105', 
    'Nike Mens Flex', 
    'Nike Mens Flex 2016 Rn Grey Running Shoes',
    'assets/images/Shoes/Shoes-105.jpg',
    1,
    100,
    9000.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-106', 
    'Nike Men Flex 2019', 
    'Nike Men Flex 2019 Rn Running Shoes',
    'assets/images/Shoes/Shoes-106.jpg',
    1,
    100,
    7000.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-107', 
    'Nike Mens M SUPERREP GO', 
    'Nike Mens M SUPERREP GO 2 DK Smoke Grey/Total Orange-Clear Emerald Low TOP (CZ0604-083)',
    'assets/images/Shoes/Shoes-107.jpg',
    1,
    100,
    4000.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-108', 
    'Nike Mens Air', 
    'Nike Mens Air Zoom G.t. Cut Low TOP',
    'assets/images/Shoes/Shoes-108.jpg',
    1,
    100,
    5500.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Shoes-109', 
    'Nike Air Zoom', 
    'Nike Air Zoom Pegasus 38 Shield Mens Shoes (Numeric_7) Black',
    'assets/images/Shoes/Shoes-109.jpg',
    1,
    100,
    6600.00,
    3, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-100', 
    'cPanel User Guide and Tutorial', 
    'A clear, complete guide to getting the most from cPanel. Anybody who has a web hosting account that provides cPanel, and who wants to get the most from this very powerful tool.',
    'assets/images/Books/Books-100.jpg',
    1,
    100,
    400.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-101', 
    'Professional Outlook 2007 Programming', 
    'Written by one of the most popular and knowledgeable Microsoft Outlook MVPs, this book fills a void in the market for a professional-level Outlook programming book',
    'assets/images/Books/Books-101.jpg',
    1,
    100,
    500.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-102', 
    'Pro Java Clustering and Scalability', 
    'Build clustered and scalable Java-based, real-time applications using Spring Framework, Boot, WebSocket, Cassandra, Redis and RabbitMQ. In this book',
    'assets/images/Books/Books-102.jpg',
    1,
    100,
    600.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-103', 
    'Modular Design Frameworks', 
    'Learn the basic principles of modular design, and then put them into action to create sites that are easy to use, look great.',
    'assets/images/Books/Books-103.jpg',
    1,
    100,
    700.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-104', 
    'Applied OpenStack Design Patterns', 
    'Learn practical and applied OpenStack cloud design solutions to gain maximum control over your infrastructure. You will achieve a complete controlled and customizable platform.',
    'assets/images/Books/Books-104.jpg',
    1,
    100,
    800.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-105', 
    'VMware vSphere Performance', 
    'Covering the latest VMware vSphere software, an essential book aimed at solving vSphere performance problems before they happen',
    'assets/images/Books/Books-105.jpg',
    1,
    100,
    900.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-106', 
    'VMware vSphere For Dummies', 
    'With virtualization, a single server can host dozens or hundreds of virtual machines running a variety of operating systems, and even hook them together in a virtual network',
    'assets/images/Books/Books-106.jpg',
    1,
    100,
    1000.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-107', 
    'Beginning Elastic Stack', 
    'This book teaches you how to install, configure and implement the Elastic Stack (Elasticsearch, Logstash and Kibana) – the invaluable tool for anyone',
    'assets/images/Books/Books-107.jpg',
    1,
    100,
    300.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-108', 
    'Nginx: From Beginner to Pro', 
    'Teaches you to start up Nginx and quickly take your expertise to a level where you can comfortably work with various aspects of the web server and make informe',
    'assets/images/Books/Books-108.jpg',
    1,
    100,
    400.00,
    4, 
    NOW()
);

INSERT INTO tbl_product 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'Books-109', 
    'Web Audio API', 
    'Go beyond HTML5’s Audio tag and boost the audio capabilities of your web application with the Web Audio API. Packed with lots of code examples',
    'assets/images/Books/Books-109.jpg',
    1,
    100,
    500.00,
    4, 
    NOW()
);




SET foreign_key_checks = 0;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Data for table `country`
--

INSERT INTO `country` VALUES 
(1,'BR','Brazil'),
(2,'CA','Canada'),
(3,'DE','Germany'),
(4,'IN','India'),
(5,'TR','Turkey'),
(6,'US','United States');

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` VALUES 
(1,'Acre',1),
(2,'Alagoas',1),
(3,'Amapá',1),
(4,'Amazonas',1),
(5,'Bahia',1),
(6,'Ceará',1),
(7,'Distrito Federal',1),
(8,'Espírito Santo',1),
(9,'Goiás',1),
(10,'Maranhão',1),
(11,'Mato Grosso do Sul',1),
(12,'Mato Grosso',1),
(13,'Minas Gerais',1),
(14,'Paraná',1),
(15,'Paraíba',1),
(16,'Pará',1),
(17,'Pernambuco',1),
(18,'Piaui',1),
(19,'Rio de Janeiro',1),
(20,'Rio Grande do Norte',1),
(21,'Rio Grande do Sul',1),
(22,'Rondônia',1),
(23,'Roraima',1),
(24,'Santa Catarina',1),
(25,'Sergipe',1),
(26,'São Paulo',1),
(27,'Tocantins',1),
(28,'Alberta',2),
(29,'British Columbia',2),
(30,'Manitoba',2),
(31,'New Brunswick',2),
(32,'Newfoundland and Labrador',2),
(33,'Northwest Territories',2),
(34,'Nova Scotia',2),
(35,'Nunavut',2),
(36,'Ontario',2),
(37,'Prince Edward Island',2),
(38,'Quebec',2),
(39,'Saskatchewan',2),
(40,'Yukon',2),
(41,'Baden-Württemberg',3),
(42,'Bavaria',3),
(43,'Berlin',3),
(44,'Brandenburg',3),
(45,'Bremen',3),
(46,'Hamburg',3),
(47,'Hesse',3),
(48,'Lower Saxony',3),
(49,'Mecklenburg-Vorpommern',3),
(50,'North Rhine-Westphalia',3),
(51,'Rhineland-Palatinate',3),
(52,'Saarland',3),
(53,'Saxony',3),
(54,'Saxony-Anhalt',3),
(55,'Schleswig-Holstein',3),
(56,'Thuringia',3),
(57,'Andhra Pradesh',4),
(58,'Arunachal Pradesh',4),
(59,'Assam',4),
(60,'Bihar',4),
(61,'Chhattisgarh',4),
(62,'Goa',4),
(63,'Gujarat',4),
(64,'Haryana',4),
(65,'Himachal Pradesh',4),
(66,'Jammu & Kashmir',4),
(67,'Jharkhand',4),
(68,'Karnataka',4),
(69,'Kerala',4),
(70,'Madhya Pradesh',4),
(71,'Maharashtra',4),
(72,'Manipur',4),
(73,'Meghalaya',4),
(74,'Mizoram',4),
(75,'Nagaland',4),
(76,'Odisha',4),
(77,'Punjab',4),
(78,'Rajasthan',4),
(79,'Sikkim',4),
(80,'Tamil Nadu',4),
(81,'Telangana',4),
(82,'Tripura',4),
(83,'Uttar Pradesh',4),
(84,'Uttarakhand',4),
(85,'West Bengal',4),
(86,'Andaman and Nicobar Islands',4),
(87,'Chandigarh',4),
(88,'Dadra and Nagar Haveli',4),
(89,'Daman & Diu',4),
(90,'Lakshadweep',4),
(91,'Puducherry',4),
(92,'The Government of NCT of Delhi',4),
(93,'Alabama',6),
(94,'Alaska',6),
(95,'Arizona',6),
(96,'Arkansas',6),
(97,'California',6),
(98,'Colorado',6),
(99,'Connecticut',6),
(100,'Delaware',6),
(101,'District Of Columbia',6),
(102,'Florida',6),
(103,'Georgia',6),
(104,'Hawaii',6),
(105,'Idaho',6),
(106,'Illinois',6),
(107,'Indiana',6),
(108,'Iowa',6),
(109,'Kansas',6),
(110,'Kentucky',6),
(111,'Louisiana',6),
(112,'Maine',6),
(113,'Maryland',6),
(114,'Massachusetts',6),
(115,'Michigan',6),
(116,'Minnesota',6),
(117,'Mississippi',6),
(118,'Missouri',6),
(119,'Montana',6),
(120,'Nebraska',6),
(121,'Nevada',6),
(122,'New Hampshire',6),
(123,'New Jersey',6),
(124,'New Mexico',6),
(125,'New York',6),
(126,'North Carolina',6),
(127,'North Dakota',6),
(128,'Ohio',6),
(129,'Oklahoma',6),
(130,'Oregon',6),
(131,'Pennsylvania',6),
(132,'Rhode Island',6),
(133,'South Carolina',6),
(134,'South Dakota',6),
(135,'Tennessee',6),
(136,'Texas',6),
(137,'Utah',6),
(138,'Vermont',6),
(139,'Virginia',6),
(140,'Washington',6),
(141,'West Virginia',6),
(142,'Wisconsin',6),
(143,'Wyoming',6),
(144,'Adıyaman',5),
(145,'Afyonkarahisar',5),
(146,'Ağrı',5),
(147,'Aksaray',5),
(148,'Amasya',5),
(149,'Ankara',5),
(150,'Antalya',5),
(151,'Ardahan',5),
(152,'Artvin',5),
(153,'Aydın',5),
(154,'Balıkesir',5),
(155,'Bartın',5),
(156,'Batman',5),
(157,'Bayburt',5),
(158,'Bilecik',5),
(159,'Bingöl',5),
(160,'Bitlis',5),
(161,'Bolu',5),
(162,'Burdur',5),
(163,'Bursa',5),
(164,'Çanakkale',5),
(165,'Çankırı',5),
(166,'Çorum',5),
(167,'Denizli',5),
(168,'Diyarbakır',5),
(169,'Düzce',5),
(170,'Edirne',5),
(171,'Elazığ',5),
(172,'Erzincan',5),
(173,'Erzurum',5),
(174,'Eskişehir',5),
(175,'Gaziantep',5),
(176,'Giresun',5),
(177,'Gümüşhane',5),
(178,'Hakkâri',5),
(179,'Hatay',5),
(180,'Iğdır',5),
(181,'Isparta',5),
(182,'İstanbul',5),
(183,'İzmir',5),
(184,'Kahramanmaraş',5),
(185,'Karabük',5),
(186,'Karaman',5),
(187,'Kars',5),
(188,'Kastamonu',5),
(189,'Kayseri',5),
(190,'Kırıkkale',5),
(191,'Kırklareli',5),
(192,'Kırşehir',5),
(193,'Kilis',5),
(194,'Kocaeli',5),
(195,'Konya',5),
(196,'Kütahya',5),
(197,'Malatya',5),
(198,'Manisa',5),
(199,'Mardin',5),
(200,'Mersin',5),
(201,'Muğla',5),
(202,'Muş',5),
(203,'Nevşehir',5),
(204,'Niğde',5),
(205,'Ordu',5),
(206,'Osmaniye',5),
(207,'Rize',5),
(208,'Sakarya',5),
(209,'Samsun',5),
(210,'Siirt',5),
(211,'Sinop',5),
(212,'Sivas',5),
(213,'Şanlıurfa',5),
(214,'Şırnak',5),
(215,'Tekirdağ',5),
(216,'Tokat',5),
(217,'Trabzon',5),
(218,'Tunceli',5),
(219,'Uşak',5),
(220,'Van',5),
(221,'Yalova',5),
(222,'Yozgat',5),
(223,'Zonguldak',5);

SET foreign_key_checks = 1;
