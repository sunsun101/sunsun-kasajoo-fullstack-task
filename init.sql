DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO products (name, image, price)
VALUES
    ('Yuedpao T-shirt, plain color T-shirt, unisex model, round neck - Black Berry color', 'https://yuedpao.com/wp-content/uploads/2022/12/BLACKBERRY-jpg.webp', 10.99),
    ('Yuedpao T-shirt, plain t-shirt, unisex model, V-neck – Beach Sand color', 'https://yuedpao.com/wp-content/uploads/2022/12/BEACH-SAND-1-jpg.webp', 20.49),
    ('Yuedpao T-shirt, plain color T-shirt, Crop LOGO – MIST GREEN model', 'https://yuedpao.com/wp-content/uploads/2021/09/1S5A0081-scaled-jpg.webp', 15.75),
    ('Oversized T-shirt – Rainbow Black', 'https://yuedpao.com/wp-content/uploads/2022/06/SIG-STREET-B8-jpg.webp', 8.99),
    ('Yuedpao T-shirt, plain colored T-shirt, long sleeve model, LOGO – Santa Rice', 'https://yuedpao.com/wp-content/uploads/2021/12/xmasstripedtwin-scaled-jpg.webp', 12.50),
    ('Yuedpao T-shirt, plain colored T-shirt, women\''s model, V-neck – BLACK BERRY', 'https://yuedpao.com/wp-content/uploads/2022/12/BLACKBERRY-3-jpg.webp', 18.00),
    ('Yuedpao T-shirt, plain colored T-shirt, women\''s model, V-neck – HONEY', 'https://yuedpao.com/wp-content/uploads/2022/12/HONEY-3-jpg.webp', 9.99),
    ('Yuedpao T-shirt, plain colored T-shirt, women\''s model, V-neck – MATCHA', 'https://yuedpao.com/wp-content/uploads/2021/07/1S5A0616-scaled-jpg.webp', 22.25);


CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
