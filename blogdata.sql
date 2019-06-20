-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for blog_data
CREATE DATABASE IF NOT EXISTS `blog_data` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog_data`;

-- Dumping structure for table blog_data.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `author` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table blog_data.posts: ~20 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `body`, `author`, `thumb`, `created_at`, `category_id`) VALUES
	(1, 'Six Reasons to Grow Your Own Food\r\n', 'If you have never considered growing your own fruits, vegetables and herbs, here are a few reasons to start now: If you have never considered growing your own fruits, vegetables and herbs, here are a few reasons to start now: If you have never considered growing your own fruits, vegetables and herbs, here are a few reasons to start now: ', 'Iyaad', 'food', '2019-01-17 12:57:48', 1),
	(2, 'The Truth Regarding Coffee: Is It Healthy or Unhealthy and How Much Should You Drink Daily?', 'Coffee is a controversial topic and there is much difference of opinion on whether it is beneficial or harmful to health. Extensive research has been done on coffee consumption and the conclusion is that coffee is actually very beneficial and has a diverse range of health benefits.', 'Iyaad', 'coffee', '2019-01-17 13:01:37', 1),
	(3, 'Improvement in Chewing Activity Reduces Energy Intake in One Meal', 'Digestion is most often thought of as taking place in the intestines and the stomach. In reality, the digestion process begins in the mouth. The process of chewing is a important component of the digestive process. The act of chewing breaks down very large amounts of food molecules into smaller particles. This gives the food an increase in surface area, which is an important contributing factor to good digestion. Efficiently chewing your food allows it to be exposed to your saliva for a longer period of time. Food being in contact with saliva is important because it not only helps to lubricate the food, allowing for less stress on your esophagus, but also because saliva contains enzymes that contribute to the chemical process of digestion, thereby making it efficient.', 'Brad', 'vitamink', '2019-01-17 18:42:30', 1),
	(5, 'Drinking Beetroot Juice Significantly Lowers Blood Pressure', 'The vegetable beetroot has many powerful health benefits. It is a powerful cancer-fighter and also helps to reduce inflammation, due to the beneficial pigments it contains, which also give beetroot its rich, red color.', 'Iyaad', 'beetroot', '2019-05-26 13:14:32', 3),
	(6, 'Vitamin K Lowers Cancer Risk', 'Vitamin K is an often overlooked nutrient but not only is it essential for many bodily functions, it also has an impressive array of benefits, including lowering the risk of cancer.', 'Brad', 'vegetables2', '2019-05-26 13:15:29', 1),
	(7, 'Brown Rice Offers Cardiovascular Protection', 'Rice is naturally high in fiber and other healthful nutrients so is generally a healthful addition to the diet. However, not all rice is equally nutritious, and brown rice or whole grain rice is nutritionally superior to white rice. This is because whole grain brown rice contains all three layers of the kernel still intact, making it rich in antioxidant plant chemicals. It also has five times the fiber of white rice.', 'Iyaad', 'rice', '2019-05-26 13:16:01', 1),
	(8, 'Phytonutrients Explained', 'Phytochemicals or phytonutrients are chemical compounds that naturally occur in plants, and have protective, disease-preventing properties.', 'Iyaad', 'nutrients', '2019-05-26 13:16:41', 2),
	(9, 'The Many Health Benefits of Garlic\r\n', 'Garlic is one of the most impressive and potent of natural foods, with its powerful antibiotic, antibacterial, antiviral and anti-fungal properties, garlic is one food that you should be eating every day.', 'Brad', 'garlic', '2019-05-26 13:16:53', 2),
	(10, 'Millet: An Easily Digested Healthy Whole Grain\r\n', 'Millet is a delicious cereal grain that is much-ignored but has many valuable health benefits. Although it is a common ingredient in bird seed, it has much more benefits for human health. This high-quality, protein-rich grain is easily digested and is gluten-free so it makes an excellent alternative to wheat. Also, because millet is never highly refined, it retains all of its essential nutrients.', 'Iyaad', 'tulips', '2019-05-26 13:16:53', 3),
	(22, 'Green Beans Are Packed with Valuable Fitness-Building Nutrients', 'Phenolics are the active compounds in plants that give blueberries their antioxidant potential. Phenolics are the active compounds in plants that give blueberries their antioxidant potential. Phenolics are the active compounds in plants that give blueberries their antioxidant potential. Phenolics are the active compounds in plants that give blueberries their antioxidant potential. Phenolics are the active compounds in plants that give blueberries their antioxidant potential.', 'Tom', 'vegetables3', '2019-05-26 13:19:10', 1),
	(23, 'Vitamin D: The Super-Nutrient That Is Essential For Good Health', 'The vegetable beetroot has many powerful health benefits. It is a powerful cancer-fighter and also helps to reduce inflammation, due to the beneficial pigments it contains, which also give beetroot its rich, red color.', 'Tom', 'nutrients', '2019-05-26 13:19:10', 1),
	(24, 'Coconut Oil For Beautiful Skin and Hair', 'Almost every vegetable that that has been studied has been found to contain substances that benefit health, from the heart and blood, to countering the formation of tumors. Fresh vegetables, when cooked correctly and eaten with the right fats, are one of the best protections against disease.', 'Tom', 'coconut', '2019-05-26 13:19:10', 2),
	(25, 'Eat a Variety of Vegetables for Better Health', 'In these audio interviews, Lynne McTaggart lays out the dangers of fluoride use which have been generally ignored by health professionals and communities at large. "It\'s a rat poison," McTaggart says of fluoride which is added to the water supply of two thirds of America\'s cities. It\'s also in toothpaste, and in many other products one wouldn\'t suspect, such as canned beverages, baby food, pharmaceuticals, and pesticides, she said.', 'Brad', 'vegetables', '2019-05-26 13:19:10', 1),
	(26, 'The Amazing Benefits of Coconut Oil As A Food and Medicine', 'The diets of children play an integral role in their health and learning ability, in fact, a nutritious and balanced diet is the most important thing to ensure that your child has a head start toward a healthy life. Providing your child with a healthy eating foundation can correct nutritional deficiencies, help to ward off illnesses and set up good eating practices for life.', 'Iyaad', 'coconut', '2019-05-26 13:19:10', 3),
	(27, 'Eggs Are A Superfood', 'Blueberries are a great superfood; they are packed with nutrients and antioxidants, and full of flavor and sweetness. These tiny berries have many health protective benefits, but these benefits can be lost when blueberries are eaten with other foods, especially milk.', 'Tom', 'eggs', '2019-05-26 13:19:10', 3),
	(28, 'Enzymes in Food Provide Health and Longevity', 'Millet is a delicious cereal grain that is much-ignored but has many valuable health benefits. Although it is a common ingredient in bird seed, it has much more benefits for human health. This high-quality, protein-rich grain is easily digested and is gluten-free so it makes an excellent alternative to wheat. Also, because millet is never highly refined, it retains all of its essential nutrients.', 'Tom', 'vitamins', '2019-05-26 13:19:10', 1),
	(29, 'Vitamin A Is a Powerful Antioxidant and All-Important Nutrient', 'Using tissue taken from mice, scientists looked at what effect the polyphenols in blueberries might have in fighting the development of fat cells and inducing lipolysis, the breakdown fats within the body.', 'Brad', 'coffee', '2019-05-26 13:19:10', 3),
	(30, 'Vitamin E: One Of the Most Powerful Natural Antioxidants', 'Blueberries have been shown to be a powerful superfood in several nutrition studies, due to their high polyphenol content, including their ability to help prevent heart disease, type-2 diabetes and aging.\r\nA new study has found that blueberries slash the development of fat cells in the body by up to three-quarters, thus providing a natural weight loss solution.\r\n\r\nResearchers found that the fruit can break down existing fat cells and prevent new ones from forming, making them a potentially powerful weapon in the fight against rising obesity.', 'Brad', 'vegetables2', '2019-05-26 13:19:10', 1),
	(32, 'Eating Oily Fish Helps Protect Eyesight', 'A study suggests that older adults who eat fatty fish at least once a week have a lower risk of losing their eyesight from age-related macular degeneration, an eye disease that causes vision impairment and blindness. These findings add to the growing list of health benefits gained by eating fish rich in omega-3 fatty acids.', 'Tom', 'salmon', '2019-05-26 15:33:04', 3),
	(33, 'Rocket: A Spicy Salad Leaf With Potent Health Benefits', 'This hot, peppery leaf is packed with essential disease-fighting nutrients, and is a healthful way to liven up a salad.', 'Iyaad', 'leaves', '2019-05-26 15:34:10', 2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
