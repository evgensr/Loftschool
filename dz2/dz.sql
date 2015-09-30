-- --------------------------------------------------------
-- Хост:                         192.168.22.200
-- Версия сервера:               5.1.73 - Source distribution
-- ОС Сервера:                   redhat-linux-gnu
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица loftblog.basket
DROP TABLE IF EXISTS `basket`;
CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id заказа',
  `id_product` int(11) unsigned NOT NULL COMMENT 'идентификатор товара',
  `price` decimal(10,2) DEFAULT NULL COMMENT 'цена товара',
  `count` int(11) unsigned NOT NULL COMMENT 'количество товара в заказе',
  PRIMARY KEY (`id`),
  KEY `FK_basket_products` (`id_product`),
  KEY `FK34` (`price`),
  CONSTRAINT `FK_basket_orders` FOREIGN KEY (`id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_basket_products` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Состав заказа (рассыпуха)';

-- Дамп данных таблицы loftblog.basket: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` (`id`, `id_product`, `price`, `count`) VALUES
	(1, 6, 5806.00, 3),
	(2, 22, 6800.00, 34),
	(4, 15, 4800.00, 41);
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;


-- Дамп структуры для таблица loftblog.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Имя пользователя',
  `lastname` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Фамилия пользователя',
  `birhday` datetime NOT NULL COMMENT 'Дата рождения пользователя',
  `email` varchar(255) NOT NULL COMMENT 'email',
  `password` char(32) NOT NULL COMMENT 'хеш пароль',
  `is_active` char(1) NOT NULL DEFAULT '1' COMMENT 'поле активности. 1 активный 0 не активный',
  `reg_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата регистрации',
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата последнего редактирования пользователя',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Пользователи';

-- Дамп данных таблицы loftblog.clients: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `name`, `lastname`, `birhday`, `email`, `password`, `is_active`, `reg_date`, `last_update`) VALUES
	(1, 'Имя1', 'Фамилия1', '1991-10-11 00:00:00', 'mail1@mail.ri', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(2, 'Имя2', 'Фамилия2', '1991-10-11 00:00:00', 'mail2@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(3, 'Имя3', 'Фамилия3', '1991-10-11 00:00:00', 'mail3@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(4, 'Имя4', 'Фамилия4', '1991-10-11 00:00:00', 'mail4@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(5, 'Имя5', 'Фамилия5', '1991-10-11 00:00:00', 'mail5@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(6, 'Имя6', 'Фамилия6', '1991-10-11 00:00:00', 'mail6@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(7, 'Имя7', 'Фамилия7', '1991-10-11 00:00:00', 'mail7@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(8, 'Имя8', 'Фамилия8', '1991-10-11 00:00:00', 'mail8@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(9, 'Имя9', 'Фамилия9', '1991-10-11 00:00:00', 'mail9@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(10, 'Имя10', 'Фамилия10', '1991-10-11 00:00:00', 'mail10@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(11, 'Имя11', 'Фамилия11', '1991-10-11 00:00:00', 'mail11@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(12, 'Имя12', 'Фамилия12', '1991-10-11 00:00:00', 'mail12@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(13, 'Имя13', 'Фамилия13', '1991-10-11 00:00:00', 'mail13@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(14, 'Имя14', 'Фамилия14', '1991-10-11 00:00:00', 'mail14@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(15, 'Имя15', 'Фамилия15', '1991-10-11 00:00:00', 'mail15@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(16, 'Имя16', 'Фамилия16', '1991-10-11 00:00:00', 'mail16@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(17, 'Имя17', 'Фамилия17', '1991-10-11 00:00:00', 'mail17@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(18, 'Имя18', 'Фамилия18', '1991-10-11 00:00:00', 'mail18@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(19, 'Имя19', 'Фамилия19', '1991-10-11 00:00:00', 'mail19@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(20, 'Имя20', 'Фамилия20', '1991-10-11 00:00:00', 'mail20@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(21, 'Имя21', 'Фамилия21', '1991-10-11 00:00:00', 'mail21@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(22, 'Имя22', 'Фамилия22', '1991-10-11 00:00:00', 'mail22@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(23, 'Имя23', 'Фамилия23', '1991-10-11 00:00:00', 'mail23@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(24, 'Имя24', 'Фамилия24', '1991-10-11 00:00:00', 'mail24@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(25, 'Имя25', 'Фамилия25', '1991-10-11 00:00:00', 'mail25@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(26, 'Имя26', 'Фамилия26', '1991-10-11 00:00:00', 'mail26@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(27, 'Имя27', 'Фамилия27', '1991-10-11 00:00:00', 'mail27@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(28, 'Имя28', 'Фамилия28', '1991-10-11 00:00:00', 'mail28@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(29, 'Имя29', 'Фамилия29', '1991-10-11 00:00:00', 'mail29@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08'),
	(30, 'Имя30', 'Фамилия30', '1991-10-11 00:00:00', 'mail30@mail.ru', '123', '1', '2015-09-21 17:00:00', '2015-09-21 17:18:08');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;


-- Дамп структуры для таблица loftblog.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'номер заказа',
  `id_user` int(11) unsigned NOT NULL COMMENT 'идентификатор пользователя',
  `status` tinyint(3) unsigned NOT NULL COMMENT 'статус заказа',
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата формирования заказа',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `FK_orders_statuses` (`status`),
  CONSTRAINT `FK_orders_clients` FOREIGN KEY (`id_user`) REFERENCES `clients` (`id`),
  CONSTRAINT `FK_orders_statuses` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Заказы';

-- Дамп данных таблицы loftblog.orders: ~7 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `id_user`, `status`, `date_order`) VALUES
	(1, 11, 1, '2015-09-21 19:33:39'),
	(2, 15, 1, '2015-09-22 21:19:24'),
	(4, 29, 3, '2015-09-22 21:19:37'),
	(5, 12, 3, '2015-09-22 20:19:44'),
	(6, 13, 1, '2015-09-22 21:19:51'),
	(7, 25, 1, '2015-09-22 21:20:03'),
	(8, 15, 3, '2015-09-22 21:20:18');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Дамп структуры для таблица loftblog.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT 'название товара',
  `mark` varchar(255) NOT NULL COMMENT 'марка товара',
  `count` int(11) NOT NULL COMMENT 'количество товара на складе',
  `price` decimal(10,2) DEFAULT NULL COMMENT 'цена за единицу товара',
  `description` varchar(5000) NOT NULL COMMENT 'описание товара',
  `id_catalog` int(11) unsigned NOT NULL COMMENT 'идентификатор категории товаров',
  PRIMARY KEY (`id`),
  KEY `FK_products_products_category` (`id_catalog`),
  KEY `price` (`price`),
  CONSTRAINT `FK_products_products_category` FOREIGN KEY (`id_catalog`) REFERENCES `products_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Товары';

-- Дамп данных таблицы loftblog.products: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `mark`, `count`, `price`, `description`, `id_catalog`) VALUES
	(3, 'Название товара1', 'марка товара', 2, 5800.00, 'Описание', 3),
	(4, 'Название товара1', 'марка товара', 2, 5800.00, 'Описание', 4),
	(5, 'Название товара11', 'марка товара', 4, 5100.00, 'Описание', 5),
	(6, 'Название товара12', 'марка товара', 2, 5801.00, 'Описание', 6),
	(7, 'Название товара13', 'марка товара', 4, 5802.00, 'Описание', 7),
	(8, 'Название товара14', 'марка товара', 2, 5803.00, 'Описание', 8),
	(9, 'Название товара15', 'марка товара', 2, 5805.00, 'Описание', 9),
	(10, 'Название товара2', 'марка товара', 4, 5806.00, 'Описание', 4),
	(11, 'Название товара3', 'марка товара', 2, 5820.00, 'Описание', 5),
	(12, 'Название товара4', 'марка товара', 3, 1804.00, 'Описание', 6),
	(13, 'Название товара5', 'марка товара', 2, 4800.00, 'Описание', 7),
	(14, 'Название товара6', 'марка товара', 7, 6800.00, 'Описание', 8),
	(15, 'Название товара7', 'марка товара', 2, 6800.00, 'Описание', 9),
	(16, 'Товар1', 'Самсунг', 2, 5800.00, 'Описание', 4),
	(17, 'Товар11', 'Самсунг', 1, 5100.00, 'Описание', 5),
	(18, 'Товар12', 'Самсунг', 20, 5801.00, 'Описание', 6),
	(19, 'Товар13', 'Самсунг', 2, 5802.00, 'Описание', 7),
	(20, 'Товар14', 'Самсунг', 2, 5804.10, 'Описание', 8),
	(21, 'Товар15', 'Самсунг', 2, 5806.00, 'Описание', 9),
	(22, 'Товар2', 'Самсунг', 2, 5806.00, 'Описание', 4),
	(23, 'Товар3', 'Самсунг', 1, 5820.00, 'Описание', 5),
	(24, 'Товар4', 'Самсунг', 2, 1804.00, 'Описание', 6),
	(25, 'Товар5', 'Самсунг', 5, 4800.00, 'Описание', 7),
	(26, 'Товар6', 'Самсунг', 62, 6800.00, 'Описание', 8),
	(27, 'Товар7', 'Самсунг', 2, 6800.00, 'Описание', 9),
	(28, 'Товар33', 'Самсунг', 4, 5820.00, 'Описание', 5),
	(29, 'Товар43', 'Самсунг', 2, 1804.00, 'Описание', 6),
	(30, 'Товар54', 'Самсунг', 5, 4800.00, 'Описание', 7),
	(31, 'Товар62', 'Самсунг', 6, 6800.00, 'Описание', 8),
	(32, 'Товар74', 'Самсунг', 2, 6800.00, 'Описание', 9);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


-- Дамп структуры для таблица loftblog.products_category
DROP TABLE IF EXISTS `products_category`;
CREATE TABLE IF NOT EXISTS `products_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT 'название категории',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Категории товаров';

-- Дамп данных таблицы loftblog.products_category: ~22 rows (приблизительно)
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` (`id`, `title`) VALUES
	(1, 'Процессор'),
	(2, 'Материнская плата'),
	(3, 'Видеокарта'),
	(4, 'Модули памяти'),
	(5, 'Жесткие диски'),
	(6, 'SSD диски'),
	(7, 'Блоки питания'),
	(8, 'Системы охлаждения'),
	(9, 'Звуковые карты'),
	(10, 'Приводы'),
	(11, 'Дисководы'),
	(12, 'ТВ-тюнер'),
	(13, 'Корпуса'),
	(14, 'Платформы для сборки'),
	(15, 'Wi-Fi'),
	(16, 'Мониторы'),
	(17, 'Мышки'),
	(18, 'Клавиатуры'),
	(19, 'Планшеты'),
	(20, 'Телефоны'),
	(21, 'ПО'),
	(22, 'Фотоаппараты');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;


-- Дамп структуры для таблица loftblog.statuses
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE IF NOT EXISTS `statuses` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Статус заказа';

-- Дамп данных таблицы loftblog.statuses: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` (`id`, `title`) VALUES
	(1, 'Обрабатывается'),
	(2, 'В пути'),
	(3, 'Доставлен');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
